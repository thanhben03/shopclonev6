<?php

    define("IN_SITE", true);
    require_once(__DIR__.'/../libs/db.php');
    require_once(__DIR__.'/../config.php');
    require_once(__DIR__.'/../libs/helper.php');
    $CMSNT = new DB();

    /* START CHỐNG SPAM */
    if (time() > $CMSNT->site('check_time_cron_checklivefb')) {
        if (time() - $CMSNT->site('check_time_cron_checklivefb') < 3) {
            die('Thao tác quá nhanh, vui lòng đợi');
        }
    }
    /* Thời gian check live cách nhau mỗi giây */
    $timeCheck = $CMSNT->site('time_check_live');
    /* Số lượng tài khoản check trên mỗi sản phẩm mỗi phút */
    $CMSNT->update("settings", [
        'value' => time()
    ], " `name` = 'check_time_cron_checklivefb' ");
    foreach ($CMSNT->get_list("SELECT * FROM `products` WHERE `checklive` = 1 ORDER By RAND() ") as $product) {
        foreach ($CMSNT->get_list("SELECT * FROM `accounts` WHERE `product_id` = '".$product['id']."' AND `buyer` IS NULL AND `status` = 'LIVE' AND ".time()." - `time_live` > $timeCheck  ") as $account) {
            if (CheckLiveClone(explode("|", $account['account'])[0]) != 'LIVE') {
                $CMSNT->update("accounts", [
                    'status'    => 'DIE',
                    'time_live' => time()
                ], " `id` = '".$account['id']."' ");
            } else {
                $CMSNT->update("accounts", [
                    'status'    => 'LIVE',
                    'time_live' => time()
                ], " `id` = '".$account['id']."' ");
            }
        }
    }
    echo 'Success!';
