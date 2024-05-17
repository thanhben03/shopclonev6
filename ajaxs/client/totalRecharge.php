<?php
header('Content-type: application/json');

define("IN_SITE", true);
require_once(__DIR__."/../../libs/db.php");
require_once(__DIR__."/../../libs/lang.php");
require_once(__DIR__."/../../libs/helper.php");

$CMSNT = new DB();
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    
    try {
        if (empty($_POST['amount'])) {
            die(format_currency(0));
        }
        if ($_POST['amount'] < 2000) {
            throw new Exception("Số tiền tối thiểu phải >= 2000vnđ");
            
        }
        if ($_POST['amount'] >= 100000000) {
            throw new Exception("Số tiền không được vượt quá 100tr");;
            
        }
        if (!$getUser = $CMSNT->get_row("SELECT * FROM `users` WHERE `token` = '".check_string($_POST['token'])."' ")) {
            die(__('Vui lòng đăng nhập'));
        }
        $received = check_string($_POST['amount']);
        foreach($CMSNT->get_list("SELECT * FROM `promotions` WHERE `amount` <= '$received' AND `status` = 1 ORDER by `amount` DESC ") as $promotion){
            // $received là thực nhận sau khi thanh toán đủ $amount
            $received = $received + $received * $promotion['discount'] / 100;
            break;
        } 
        die(json_encode([
            'status' => 200,
            'data' => format_currency($received)
        ]));
    } catch (Exception $th) {
        http_response_code(400);
        die(json_encode([
            'msg' => $th->getMessage()
        ]));
    }
    
}
die(format_currency(0));
