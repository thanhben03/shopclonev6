<?php

use PayOS\PayOS;

$payOS = new PayOS('4fd2b08c-0fd7-446a-9ba4-36cc577d547c', '3de5f57f-7645-4bd5-9fdc-0ea42638de8f', '1b0ee8e716db1c744bdf8c55676999ecd88cc3d6a0a376552981a30bb1196e59');

$amount = $_POST['amount'];
$orderCode = intval(substr(strval(microtime(true) * 10000), -6));

$data = [
    "orderCode" => $orderCode,
    "amount" => $amount,
    "description" => "Thanh toán đơn hàng #". $orderCode,
    "items" => [
        [
            "name" => "Mỳ tôm Hảo Hảo ly",
            "quantity" => 1,
            "price" => 2000
        ]
    ],
    "returnUrl" => 'https://shopclone.test/client/payment-success',
    "cancelUrl" => $YOUR_DOMAIN . "/cancel.html"
];

try {
    $response = $payOS->createPaymentLink($data);
    
    echo json_encode($response);
} catch (\Throwable $th) {
    return $th->getMessage();
}


?>