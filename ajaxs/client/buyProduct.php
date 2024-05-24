<?php

define("IN_SITE", true);
require_once(__DIR__."/../../config.php");
require_once(__DIR__."/../../libs/db.php");
require_once(__DIR__."/../../libs/lang.php");
require_once(__DIR__."/../../libs/helper.php");
require_once(__DIR__."/../../libs/sendEmail.php");
require_once(__DIR__."/../../libs/database/users.php");

$User = new users();
$CMSNT = new DB();
$Mobile_Detect = new Mobile_Detect();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if ($CMSNT->site('status_demo') != 0) {
        die(json_encode(['status' => 'error', 'msg' => 'Bạn không được dùng chức năng này vì đây là trang web demo']));
    }
    if ($CMSNT->site('status') != 1 && !isset($_SESSION['admin_login'])) {
        die(json_encode(['status' => 'error', 'msg' => __('Hệ thống đang bảo trì')]));
    }
    if (empty($_POST['id'])) {
        die(json_encode(['status' => 'error', 'msg' => __('Sản phẩm không tồn tại trong hệ thống')]));
    }
    if (empty($_POST['amount'])) {
        die(json_encode(['status' => 'error', 'msg' => __('Vui lòng nhập số lượng cần mua')]));
    }
    if (empty($_POST['token'])) {
        die(json_encode(['status' => 'error', 'msg' => __('Vui lòng đăng nhập')]));
    }
    if (!$getUser = $CMSNT->get_row("SELECT * FROM `users` WHERE `token` = '".check_string($_POST['token'])."' AND `banned` = 0 ")) {
        die(json_encode(['status' => 'error', 'msg' => __('Vui lòng đăng nhập')]));
    }
    if (time() > $getUser['time_request']) {
        if (time() - $getUser['time_request'] < $config['max_time_load']) {
            die(json_encode(['status' => 'error', 'msg' => __('Bạn đang thao tác quá nhanh, vui lòng chờ')]));
        }
    }
    if ($_POST['amount'] <= 0) {
        die(json_encode(['status' => 'error', 'msg' => __('Vui lòng nhập số lượng cần mua')]));
    }
    if (!$row = $CMSNT->get_row("SELECT * FROM `products` WHERE `id` = '".check_string($_POST['id'])."' AND `status` = 1 ")) {
        die(json_encode(['status' => 'error', 'msg' => __('Sản phẩm không tồn tại trong hệ thống')]));
    }
    if($_POST['amount'] < $row['minimum']){
        die(json_encode(['status' => 'error', 'msg' => __('Số lượng mua tối thiểu là ').$row['minimum']]));
    }
    if($_POST['amount'] > $row['maximum']){
        die(json_encode(['status' => 'error', 'msg' => __('Số lượng mua tối đa là ').$row['maximum']]));
    }
    $id = check_string($_POST['id']);
    $amount = check_string($_POST['amount']);
    $product = $CMSNT->get_row("SELECT * FROM `products` WHERE `id` = '$id' ");

    $in_stock = $amount < $CMSNT->get_row("SELECT COUNT(id) FROM `accounts` WHERE `product_id` = '$id' AND `buyer` IS NULL AND `status` = 'LIVE' ")['COUNT(id)'];
    if (!$in_stock && $product['is_have_quantity']) {
        die(json_encode(['status' => 'error', 'msg' => __('Số lượng trong hệ thống không đủ')]));
    }
    $total_payment = $amount * $row['price'];
    $total_payment = $total_payment - $total_payment * $getUser['chietkhau'] / 100;
    // Xử lý coupon
    if (!empty($_POST['coupon'])) {
        $discount = checkCoupon(check_string($_POST['coupon']), $getUser['id']);
    }
    // Tính tiền coupon
    if (isset($discount)) {
        $total_payment = $total_payment - $total_payment * $discount / 100;
    }
    if (getRowRealtime("users", $getUser['id'], "money") < $total_payment) {
        die(json_encode(['status' => 'error', 'msg' => __('Số dư không đủ, vui lòng nạp thêm')]));
    }
    $trans_id = random("QWETYUIOPASDFGHJKLXCVBNM", 4).time();
    $isBuy = $User->RemoveCredits($getUser['id'], $total_payment, "Thanh toán đơn hàng mua tài khoản #".$trans_id);
    if ($isBuy) {
        if (getRowRealtime("users", $getUser['id'], "money") < 0) {
            $User->Banned($getUser['id'], 'Gian lận khi mua tài khoản');
            die(json_encode(['status' => 'error', 'msg' => __('Bạn đã bị khoá tài khoản vì gian lận')]));
        }
        $isUpdateAccount = $CMSNT->update_value("accounts", [
            'buyer' => $getUser['id'],
            'trans_id' => $trans_id,
            'update_date' => gettime()
        ], " `product_id` = '$id' AND `buyer` IS NULL AND `status` = 'LIVE' ", $amount);
        if ($isUpdateAccount) {
            /* SỬ DỤNG MÃ GIẢM GIÁ */
            if (isset($discount)) {
                $isAddCoupon = $CMSNT->cong("coupons", "used", 1, " `code` = '".check_string($_POST['coupon'])."' ");
                if ($isAddCoupon) {
                    $CMSNT->insert("coupon_used", [
                        'coupon_id'     => $CMSNT->get_row("SELECT * FROM `coupons` WHERE `code` = '".check_string($_POST['coupon'])."' ")['id'],
                        'user_id'       => $getUser['id'],
                        'trans_id'      => $trans_id,
                        'createdate'    => gettime()
                    ]);
                }
            }
            /* THÊM ĐƠN HÀNG VÀO HỆ THỐNG */
            $CMSNT->insert("orders", [
                'trans_id'  => $trans_id,
                'seller'    => $row['user_id'],
                'buyer'     => $getUser['id'],
                'product_id'=> $row['id'],
                'amount'    => $amount,
                'pay'       => $total_payment,
                'create_date'=> gettime(),
                'create_time'   => time(),
                'fake'          => 0
            ]);
            /* CỘNG LƯỢT QUAY CHO ĐƠN HÀNG ĐỦ ĐIỀU KIỆN */
            claimSpin($getUser['id'], $trans_id, $total_payment);
            $CMSNT->update("users", [
                'time_request' => time()
            ], " `id` = '".$getUser['id']."' ");
            /* CỘNG DOANH THU CHO NGƯỜI BÁN */
            $isAddCreditsRef = $User->AddCredits($row['user_id'], $total_payment, "Doanh thu đơn hàng #".$trans_id);
            /* GỬI EMAIL ĐƠN HÀNG CHO NGƯỜI MUA*/
            if($CMSNT->site('email_smtp') != ''){
//                $chu_de = "Xác nhận thanh toán hóa đơn #$trans_id thành công";
//                $content = file_get_contents(base_url('libs/mails/buyProduct.php'));
//                $content = str_replace('{product_name}', $row['name'], $content);
//                $content = str_replace('{amount}', format_cash($amount), $content);
//                $content = str_replace('{trans_id}', $trans_id, $content);
//                $content = str_replace('{price}', format_currency($total_payment), $content);
//                $bcc = $CMSNT->site('title');
//                sendCSM($getUser['email'], $getUser['username'], $chu_de, $content, $bcc);
            }
            die(json_encode(['status' => 'success', 'msg' => __('Thanh toán đơn hàng thành công')]));
        } else {
            // Hoàn tiền người mua
            $User->AddCredits($getUser['id'], $total_payment, "Hoàn tiền đơn hàng mua tài khoản #".$trans_id);
            die(json_encode(['status' => 'error', 'msg' => __('Số lượng trong hệ thống không đủ')]));
        }
    }
    die(json_encode(['status' => 'error', 'msg' => __('Không thể thanh toán, vui lòng thử lại')]));
} else {
    die('The Request Not Found');
}
