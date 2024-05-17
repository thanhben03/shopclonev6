<?php

define("IN_SITE", true);
require_once(__DIR__."/../libs/db.php");
require_once(__DIR__."/../libs/lang.php");
require_once(__DIR__."/../libs/helper.php");
require_once(__DIR__."/../libs/database/users.php");
$User = new users();
$CMSNT = new DB();
$Mobile_Detect = new Mobile_Detect();

if (isset($_GET['username']) && isset($_GET['password'])) {
    if ($CMSNT->site('status') != 1 && !isset($_SESSION['admin_login'])) {
        die(json_encode(['status' => 'error', 'msg' => __('Hệ thống đang bảo trì')]));
    }
    if (!$getUser = $CMSNT->get_row("SELECT * FROM `users` WHERE `username` = '".check_string($_GET['username'])."'  ")) {
        die(json_encode([
            'status'    => 'error',
            'msg'       => __('Thông tin đăng nhập không chính xác')
        ]));
    }
    $password = check_string($_GET['password']);
    if ($CMSNT->site('type_password') == 'bcrypt') {
        if (!password_verify($password, $getUser['password'])) {
            die(json_encode([
                'status'    => 'error',
                'msg'       => __('Thông tin đăng nhập không chính xác')
            ]));
        }
    } else {
        if ($getUser['password'] != TypePassword($password)) {
            die(json_encode(['status' => 'error','msg' => __('Thông tin đăng nhập không chính xác')]));
        }
    }
    if (time() - $getUser['time_request'] < $config['max_time_load']) {
        die(json_encode(['status' => 'error', 'msg' => __('Vui lòng thực hiện lại thao tác!')]));
    }
    if($getUser['admin'] == 1){
        // kiểm tra ip có trong whitelist
        if($CMSNT->site('status_security') == 1){
            if(!$CMSNT->get_row("SELECT * FROM `ip_white` WHERE `ip` = '".myip()."' ")){
                die(json_encode(['status' => 'error','msg' => __('IP của bạn không được phép truy cập')]));
            }
        }
    }
    if (!isset($_GET['id'])) {
        die(json_encode(['status' => 'error', 'msg' => __('Vui lòng nhập id sản phẩm cần mua')]));
    }
    if (!isset($_GET['amount'])) {
        die(json_encode(['status' => 'error', 'msg' => __('Vui lòng nhập số lượng tài nguyên cần mua')]));
    } 
    $id = check_string($_GET['id']);
    $amount = check_string($_GET['amount']);
    if (!$row = $CMSNT->get_row("SELECT * FROM `products` WHERE `id` = '$id' AND `status` = 1 ")) {
        die(json_encode(['status' => 'error', 'msg' => __('Sản phẩm không tồn tại trong hệ thống')]));
    }
    if($_GET['amount'] < $row['minimum']){
        die(json_encode(['status' => 'error', 'msg' => __('Số lượng mua tối thiểu là ').$row['minimum']]));
    }
    if($_GET['amount'] > $row['maximum']){
        die(json_encode(['status' => 'error', 'msg' => __('Số lượng mua tối đa là ').$row['maximum']]));
    }
    if ($amount > $CMSNT->get_row("SELECT COUNT(id) FROM `accounts` WHERE `product_id` = '$id' AND `buyer` IS NULL AND `status` = 'LIVE' ")['COUNT(id)']) {
        die(json_encode(['status' => 'error', 'msg' => __('Số lượng trong hệ thống không đủ')]));
    }
    $total_payment = $amount * $row['price'];
    $total_payment = $total_payment - $total_payment * $getUser['chietkhau'] / 100;
    if (getRowRealtime("users", $getUser['id'], "money") < $total_payment) {
        die(json_encode(['status' => 'error', 'msg' => __('Số dư API không đủ, vui lòng liên hệ admin')]));
    }
    $trans_id = random("QWETYUIOPASDFGHJKLXCVBNM", 4).time();
    $isBuy = $User->RemoveCredits($getUser['id'], $total_payment, "[API] Thanh toán đơn hàng mua tài khoản #".$trans_id);
    if ($isBuy) {
        if (getRowRealtime("users", $getUser['id'], "money") < 0) {
            $User->Banned($getUser['id'], '[API] Gian lận khi mua tài khoản');
            die(json_encode(['status' => 'error', 'msg' => 'Bạn đã bị khoá tài khoản vì gian lận.']));
        }
        $isUpdateAccount = $CMSNT->update_value("accounts", [
            'buyer' => $getUser['id'],
            'trans_id' => $trans_id,
            'update_date' => gettime()
        ], " `product_id` = '$id' AND `buyer` IS NULL AND `status` = 'LIVE' ", $amount);
        if ($isUpdateAccount) {
            $CMSNT->insert("orders", [
                'trans_id'  => $trans_id,
                'seller'    => $row['user_id'],
                'buyer'     => $getUser['id'],
                'product_id'=> $row['id'],
                'amount'    => $amount,
                'pay'       => $total_payment,
                'create_date'=> gettime(),
                'create_time'   => time()
            ]);
            claimSpin($getUser['id'], $trans_id, $total_payment);
            // Nhập thời gian request chống spam
            $CMSNT->update("users", [
                'time_request' => time()
            ], " `id` = '".$getUser['id']."' ");
            // Cộng số dư cho người bán
            $isAddCreditsRef = $User->AddCredits($row['user_id'], $total_payment, "Doanh thu đơn hàng #".$trans_id);
            $accounts = [];
            foreach ($CMSNT->get_list("SELECT * FROM `accounts` WHERE `trans_id` = '$trans_id' ") as $taikhoan) {
                $accounts[] =
                [
                    'account'   => $taikhoan['account']
                ];
            }
            die(json_encode([
                'status'    => 'success',
                'msg'       => 'Thanh toán đơn hàng thành công.',
                'data'      =>
                [
                    'trans_id'  => $trans_id,
                    'category'  => getRowRealtime("categories", $row['category_id'], 'name'),
                    'name'      => $row['name'],
                    'amount'    => $amount,
                    'time'      => time(),
                    'lists'     => $accounts
                ]
            ]));
        } else {
            // Hoàn tiền người mua
            $User->AddCredits($getUser['id'], $total_payment, "[API] Hoàn tiền đơn hàng mua tài khoản #".$trans_id);
            die(json_encode(['status' => 'error', 'msg' => 'Không thể thanh toán, vui lòng thử lại.']));
        }
    }
    die(json_encode(['status' => 'error', 'msg' => 'Không thể thanh toán, vui lòng thử lại.']));
}
