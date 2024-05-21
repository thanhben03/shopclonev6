<?php

use PayOS\PayOS;
require_once(__DIR__."/../../../config.php");
require_once(__DIR__."/../../../libs/db.php");
require_once(__DIR__."/../../../libs/lang.php");
require_once(__DIR__."/../../../libs/helper.php");
require_once(__DIR__."/../../../libs/sendEmail.php");
$payOS = new PayOS('4fd2b08c-0fd7-446a-9ba4-36cc577d547c', '3de5f57f-7645-4bd5-9fdc-0ea42638de8f', '1b0ee8e716db1c744bdf8c55676999ecd88cc3d6a0a376552981a30bb1196e59');

if (!$getUser = $CMSNT->get_row("SELECT * FROM `users` WHERE `token` = '".check_string($_SESSION['login'])."' ")) {
    die(__('Vui lòng đăng nhập'));
}

$amount = $_POST['amount'];
$YOUR_DOMAIN = "https://shopclone.test";
$orderCode = intval(substr(strval(microtime(true) * 10000), -6));
$data = [
    "orderCode" => $orderCode,
    "amount" => intval($amount),
    "description" => "Banking for ".$getUser['username'],
    "items" => [
        [
            "name" => "Nạp tiền từ ngân hàng !",
            "quantity" => 1,
            "price" => 2000
        ]
    ],
    "returnUrl" => $YOUR_DOMAIN . "/client/payment-success",
    "cancelUrl" => $YOUR_DOMAIN . "/client/recharge"
];
try {
    $response = $payOS->createPaymentLink($data);
    return redirect($response['checkoutUrl']);
} catch (\Throwable $th) {
    echo $th->getMessage();
}


?>