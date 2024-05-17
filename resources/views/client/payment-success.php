<?php
use PayOS\PayOS;

$payOS = new PayOS('4fd2b08c-0fd7-446a-9ba4-36cc577d547c', '3de5f57f-7645-4bd5-9fdc-0ea42638de8f', '1b0ee8e716db1c744bdf8c55676999ecd88cc3d6a0a376552981a30bb1196e59');
require_once(__DIR__."/../../../config.php");
require_once(__DIR__."/../../../libs/db.php");
require_once(__DIR__."/../../../libs/lang.php");
require_once(__DIR__."/../../../libs/helper.php");
require_once(__DIR__."/../../../libs/sendEmail.php");
$CMSNT = new DB();
$Mobile_Detect = new Mobile_Detect();

$url = $_SERVER['REQUEST_URI'];
$DBUser = new users();

$error = 1;
// Parse the URL into its components
parse_str(parse_url($url, PHP_URL_QUERY), $queryParams);

// Extract the orderCode from the parsed query parameters
$orderCode = isset($queryParams['orderCode']) ? $queryParams['orderCode'] : null;
if (!$getUser = $CMSNT->get_row("SELECT * FROM `users` WHERE `token` = '".check_string($_SESSION['login'])."' ")) {
    die(__('Vui lòng đăng nhập'));
}

try {
    $response = $payOS->getPaymentLinkInformation($orderCode);
    $createdAt = new DateTime($response['createdAt']);
    $formattedDateTime = $createdAt->format('d/m/Y H:i:s');

    $isInsert = $CMSNT->insert("invoices", [
        'type'              => 'deposit_money',
        'user_id'           => $getUser['id'],
        'trans_id'          => $orderCode,
        'payment_method'    => 'Banking',
        'amount'            => $response['amount'],
        'pay'               => $response['amount'],
        'status'            => 1,
        'create_date'       => gettime(),
        'update_date'       => gettime(),
        'create_time'       => time(),
        'update_time'       => time(),
        'note'              => null,
        'fake'              => 0
    ]);
    if ($isInsert) {
        $CMSNT->insert("logs", [
            'user_id'       => $getUser['id'],
            'ip'            => myip(),
            'device'        => $Mobile_Detect->getUserAgent(),
            'createdate'    => gettime(),
            'action'        => __('Tạo hoá đơn nạp tiền').' #'.$orderCode
        ]);
        // nhập thời gian request chống spam
        $CMSNT->update("users", [
            'time_request' => time()
        ], " `id` = '".$getUser['id']."' ");
        
        $DBUser->AddCredits($getUser['id'], $response['amount'], '');
        // $chu_de = "Bạn có hóa đơn cần thanh toán tại ".$CMSNT->site('title');
        // $content = file_get_contents(base_url('libs/mails/deposit-order.php'));
        // $content = str_replace('{payment_method}', $row['short_name'], $content);
        // $content = str_replace('{amount}', format_cash($amount), $content);
        // $content = str_replace('{trans_id}', $trans_id, $content);
        // $content = str_replace('{price}', format_currency($amount), $content);
        // $bcc = $CMSNT->site('title');
        // sendCSM($getUser['email'], $getUser['username'], $chu_de, $content, $bcc);
    } else {
    }
    $error = 0;
} catch (\Throwable $th) {

}
?>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html style="-moz-osx-font-smoothing: grayscale; -webkit-font-smoothing: antialiased; background-color: #464646; margin: 0; padding: 0;">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="format-detection" content="telephone=no">
        <title>GO Email Templates: Generic Template</title>
        
    </head>
    <body bgcolor="#d7d7d7" class="generic-template" style="-moz-osx-font-smoothing: grayscale; -webkit-font-smoothing: antialiased; background-color: #d7d7d7; margin: 0; padding: 0;">
  <!-- Content Start -->
  <?php
    if (!$error) :?>
        <table cellpadding="0" cellspacing="0" cols="1" bgcolor="#d7d7d7" align="center" style="max-width: 600px;">
            <tr bgcolor="#d7d7d7">
            <td height="50" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
            </tr>
            <!-- This encapsulation is required to ensure correct rendering on Windows 10 Mail app. -->
            <tr bgcolor="#d7d7d7">
            <td style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;">
                <!-- Seperator Start -->
                <table cellpadding="0" cellspacing="0" cols="1" bgcolor="#d7d7d7" align="center" style="max-width: 600px; width: 100%;">
                <tr bgcolor="#d7d7d7">
                    <td height="30" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                </tr>
                </table>
                <!-- Seperator End -->
                <!-- Generic Pod Left Aligned with Price breakdown Start -->
                <table align="center" cellpadding="0" cellspacing="0" cols="3" bgcolor="white" class="bordered-left-right" style="border-left: 10px solid #d7d7d7; border-right: 10px solid #d7d7d7; max-width: 600px; width: 100%;">
                <tr height="50">
                    <td colspan="3" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                </tr>
                <tr align="center">
                    <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                    <td class="text-primary" style="color: #F16522; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;">
                    <img src="http://dgtlmrktng.s3.amazonaws.com/go/emails/generic-email-template/tick.png" alt="GO" width="50" style="border: 0; font-size: 0; margin: 0; max-width: 100%; padding: 0;">
                    </td>
                    <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                </tr>
                <tr height="17">
                    <td colspan="3" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                </tr>
                <tr align="center">
                    <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                    <td class="text-primary" style="color: #F16522; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;">
                    <h1 style="color: #F16522; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 30px; font-weight: 700; line-height: 34px; margin-bottom: 0; margin-top: 0;">Thanh toán thành công !</h1>
                    </td>
                    <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                </tr>
                <tr height="30">
                    <td colspan="3" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                </tr>
                <tr align="left">
                    <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                    <td style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;">
                    <p style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 22px; margin: 0;"> Hi <?=$getUser['fullname'] ?? $getUser['username'] ?>, </p>
                    </td>
                    <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                </tr>
                <tr height="10">
                    <td colspan="3" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                </tr>
                <tr align="left">
                    <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                    <td style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;">
                    <p style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 22px; margin: 0;">Đơn hàng #<?=$orderCode?> của bạn đã được thanh toán thành công !</p>
                    <br>
                    <p style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 22px; margin: 0; ">
                        <strong>Thông tin thanh toán:</strong>
                        <p>Số tiền: <?=$response['amount']?></p>
                        <p>Phương thức: Banking</p>
                    </p>
                    <br>
                    <p style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 22px; margin: 0;">Nếu có bất kỳ vấn đề gì hãy liên hệ với admin để được giải quyết <br />
                    </p>
                    </td>
                    <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                </tr>
                <tr height="30">
                    <td style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                    <td style="border-bottom: 1px solid #D3D1D1; color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                    <td style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                </tr>
                <tr height="30">
                    <td colspan="3" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                </tr>
                <tr align="center">
                    <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                    <td style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;">
                    <p style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 22px; margin: 0;">
                        <strong>Transaction reference: #<?=$response['transactions'][0]['reference']?></strong>
                    </p>
                    <p style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 22px; margin: 0;">Order date: <?=$formattedDateTime?></p>
                    <p style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 22px; margin: 0;"></p>
                    </td>
                    <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                </tr>
                <tr height="50">
                    <td colspan="3" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                </tr>
                </table>
                <!-- Generic Pod Left Aligned with Price breakdown End -->
                <!-- Seperator Start -->
                <table cellpadding="0" cellspacing="0" cols="1" bgcolor="#d7d7d7" align="center" style="max-width: 600px; width: 100%;">
                <tr bgcolor="#d7d7d7">
                    <td height="50" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                </tr>
                </table>
                <!-- Seperator End -->
            </td>
            </tr>
        </table>
    <?php endif ?>
    <?php if($error) :?>
        <div class="">
            <span>Đã xảy ra lỗi !</span>
            <a href="/client/invoices">
                Quay lại
            </a>
        </div>
    <?php endif ?>
  <!-- Content End -->
  <!-- Footer End -->
</body>
</html>