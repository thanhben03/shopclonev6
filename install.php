<?php

    define("IN_SITE", true);
    require_once(__DIR__.'/libs/db.php');
    require_once(__DIR__.'/libs/lang.php');
    require_once(__DIR__.'/config.php');
    require_once(__DIR__.'/libs/helper.php');
    $CMSNT = new DB();    
    // for ($i = 1; $i <= 10000; $i++) {
    //     echo '1000'.random('01233456789', 12).'|'.random('QWERTYUIOPASDFGHJKLZXCVBNM0123456789', 16).'<br>';
    // }
    function insert_options($name, $value)
    {
        global $CMSNT;
        if (!$CMSNT->get_row("SELECT * FROM `settings` WHERE `name` = '$name' ")) {
            $CMSNT->insert("settings", [
                'name'  => $name,
                'value' => $value
            ]);
        }
    }

    // insert_options('recharge_notice', '');
    // insert_options('contact_page', '');
    // insert_options('gif_loading', '');
    // insert_options('type_showProduct', 1);
    // insert_options('clientId_paypal', '');
    // insert_options('status_paypal', 1);
    // insert_options('status_thesieure', 1);
    // insert_options('token_thesieure', '');
    // insert_options('check_time_cron_thesieure', 0);
    // insert_options('api_napthe', '');
    // insert_options('status_napthe', 1);
    // insert_options('notice_napthe', '');
    // insert_options('ck_napthe', 1);
    // insert_options('chinh_sach_bao_mat', '');
    // insert_options('dieu_khoan_su_dung', '');
    // insert_options('status_update', 1);
    // insert_options('status_captcha', 1);
    // insert_options('session_login', '2592000'); // 1 tháng
    // insert_options('gif_giftbox', '');
    // insert_options('display_sold', 1);
    // insert_options('status_zalopay', 1);
    // insert_options('token_zalopay', '');
    // insert_options('check_time_cron_zalopay', 0);
    // insert_options('type_password', 'md5');
    // insert_options('theme_color', '#0c2556');
    // insert_options('min_recharge', 10000);
    // insert_options('time_check_live', 1800);
    // insert_options('currency', 'VND');
    // insert_options('usd_rate', 23000);
    // insert_options('clientSecret_paypal', '');
    // insert_options('rate_paypal', 23000);
    // insert_options('paypal_notice', '<p>Thay đổi ghi ch&uacute; nạp thẻ&nbsp;trong <strong>C&agrave;i Đặt -&gt;&nbsp;Ghi ch&uacute; nạp paypal</strong></p>');
    // insert_options('gif_loader', 'public/datum/assets/images/loader.gif');
    // insert_options('invoice_expiration', 86400); // 24h
    // insert_options('mouse_click_effect', 1);
    // insert_options('notice_spin', '<p>Thay đổi th&ocirc;ng b&aacute;o hệ thống&nbsp;trong <strong>C&agrave;i Đặt -&gt;&nbsp;Th&ocirc;ng b&aacute;o v&ograve;ng quay</strong></p>');
    // insert_options('status_spin', 1);
    // insert_options('condition_spin', 1000000);
    // insert_options('status_perfectmoney', 1);
    // insert_options('perfectmoney_notice', '<p>Thay đổi ghi chú nạp perfect money <strong>C&agrave;i Đặt -&gt;&nbsp;Ghi ch&uacute; nạp perfect money</strong></p>');
    // insert_options('PAYEE_ACCOUNT_PM', '');
    // insert_options('PAYMENT_UNITS_PM', 'USD');
    // insert_options('perfectmoney_pass_pm', '');
    // insert_options('rate_pm', 23000);
    insert_options('status_crypto', 1);
    insert_options('notice_crypto', '');
    insert_options('status_giao_dich_gan_day', 1);
    insert_options('check_time_cron_card', 0);
    insert_options('check_time_cron_checklivefb', 0);
    insert_options('partner_id_card', '');
    insert_options('partner_key_card', '');
    insert_options('javascript_header', '');
    insert_options('sign_view_product', 0);
    insert_options('display_box_shop', 1);
    insert_options('type_notice_order', 'Email');
    insert_options('font_family', "font-family: 'Roboto', sans-serif;");
    insert_options('time_delete_orders', 0);
    insert_options('check_time_cron_cron', 0);
    insert_options('display_show_product', 1);
    insert_options('display_rating', 1);
    insert_options('stt_giaodichao', 0);
    insert_options('theme_color2', '#0665d0');
    insert_options('stt_topnap', 1);
    insert_options('sv1_autobank', 1);
    insert_options('sv2_autobank', 1);
    insert_options('prefix_autobank', explode(".", $_SERVER['HTTP_HOST'])[0]);
    insert_options('status_buff_like_sub', 0);
    insert_options('token_autofb', '');
    insert_options('virtual_sold_quantity', 0);
    insert_options('domain_autofb', 'https://cmslike.com/');
    insert_options('status_buff_like_sub', 0);
    $CMSNT->update("settings", [
        'value' => 'https://cmslike.com/'
    ], "`name` = 'domain_autofb'" );
    insert_options('status_store_fanpage', 0);
    insert_options('notice_store_fanpage', '');
    insert_options('status_security', 0);
    insert_options('status_active_member', 0);


    // $CMSNT->query(" ALTER TABLE `categories` ADD `id_api` INT(11) NOT NULL DEFAULT '0' AFTER `id` ");
    // $CMSNT->query(" ALTER TABLE `users` ADD `chietkhau` FLOAT NOT NULL DEFAULT '0' AFTER `SecretKey_2fa` ");
    // $CMSNT->query(" ALTER TABLE `accounts` ADD `time_live` INT(11) NOT NULL DEFAULT '0' AFTER `status` ");
    // $CMSNT->query(" CREATE TABLE `documents` ( `id` INT(11) NOT NULL AUTO_INCREMENT , `user_id` INT(11) NOT NULL DEFAULT '0' , `name` VARCHAR(255) NULL DEFAULT NULL , `content` LONGTEXT NULL , `price` FLOAT NOT NULL DEFAULT '0' , `status` INT(11) NOT NULL DEFAULT '1' , `create_date` DATETIME NOT NULL , `update_date` DATETIME NOT NULL , PRIMARY KEY (`id`)) ");
    // $CMSNT->query(" CREATE TABLE `payment_paypal` ( `id` INT(11) NOT NULL AUTO_INCREMENT , `trans_id` VARCHAR(255) NULL , `amount` FLOAT NOT NULL DEFAULT '0' , `create_date` DATETIME NOT NULL , `create_time` INT(11) NOT NULL DEFAULT '0' , PRIMARY KEY (`id`)) ");
    // $CMSNT->query(" ALTER TABLE `payment_paypal` ADD `user_id` INT(11) NOT NULL AFTER `id` ");
    // $CMSNT->query(" ALTER TABLE `payment_paypal` ADD `price` INT(11) NOT NULL DEFAULT '0' AFTER `amount` ");
    // $CMSNT->query(" ALTER TABLE `invoices` ADD `create_time` INT(11) NOT NULL DEFAULT '0' AFTER `update_date`, ADD `update_time` INT(11) NOT NULL DEFAULT '0' AFTER `create_time` ");
    // $CMSNT->query(" CREATE TABLE `send_email` ( `id` INT NOT NULL AUTO_INCREMENT , `template` VARCHAR(255) NULL DEFAULT NULL , `receiver` VARCHAR(255) NULL DEFAULT NULL , `name` TEXT NULL DEFAULT NULL , `title` TEXT NULL , `content` LONGTEXT NULL , `bcc` TEXT NULL , `status` INT(11) NOT NULL DEFAULT '0' , `create_date` DATETIME NOT NULL , `update_date` DATETIME NOT NULL , `response` TEXT NULL , PRIMARY KEY (`id`)) ");
    // $CMSNT->query(" CREATE TABLE `spin_option` ( `id` INT(11) NOT NULL AUTO_INCREMENT , `name` TEXT NULL , `price` INT(11) NOT NULL DEFAULT '0' , `rate` FLOAT NOT NULL DEFAULT '0' , `display` INT(11) NOT NULL DEFAULT '0' , PRIMARY KEY (`id`)) ");
    // $CMSNT->query(" ALTER TABLE `users` ADD `spin` INT(11) NOT NULL DEFAULT '0' AFTER `chietkhau` ");
    // $CMSNT->query(" CREATE TABLE `spin_history` ( `id` INT(11) NOT NULL AUTO_INCREMENT , `user_id` INT(11) NOT NULL DEFAULT '0' , `name` VARCHAR(255) NULL DEFAULT NULL, `create_date` DATETIME NOT NULL , `create_time` INT(11) NOT NULL DEFAULT '0' , PRIMARY KEY (`id`)) ");
    // $CMSNT->query(" ALTER TABLE `spin_history` ADD `trans_id` VARCHAR(255) NULL DEFAULT NULL AFTER `id` ");
    // if ($CMSNT->num_rows("SELECT * FROM `spin_option` ") == 0) {
    //     $CMSNT->query(" INSERT INTO `spin_option` (`id`, `name`, `price`, `rate`, `display`) VALUES
    //     (1, '+ 20.000đ', 20000, 10, 1),
    //     (2, '+ 10.000đ', 10000, 20, 1),
    //     (3, '+ 50.000đ', 50000, 5, 1),
    //     (4, '+ 2.000đ', 2000, 30, 1),
    //     (5, '+ 100đ', 100, 30, 1),
    //     (6, '+ 100.000đ', 100000, 2, 1),
    //     (7, '+ 500.000đ', 500000, 0.5, 1),
    //     (8, '+ 30.000đ', 30000, 10, 1),
    //     (9, '+ 99.999đ', 99999, 5, 1),
    //     (10, '+ 11.111đ', 11111, 20, 1),
    //     (11, '+ 1.000.000đ', 1000000, 0.1, 1),
    //     (12, '+ 22.000', 22000, 20, 1),
    //     (13, '+ 222.222', 222222, 2, 1),
    //     (14, '+ 6.666đ', 6666, 30, 1),
    //     (15, '+ 77.777đ', 77777, 10, 1) ");
    // }
    // $CMSNT->query(" ALTER TABLE `accounts` ADD `create_time` INT(11) NOT NULL DEFAULT '0' AFTER `update_date`, ADD `update_time` INT(11) NOT NULL DEFAULT '0' AFTER `create_time` ");
    // $CMSNT->query(" CREATE TABLE `payment_pm` ( `id` INT(11) NOT NULL AUTO_INCREMENT , `user_id` INT(11) NOT NULL DEFAULT '0' , `payment_id` INT(11) NOT NULL DEFAULT '0' , `amount` INT(11) NOT NULL DEFAULT '0' , `create_date` DATETIME NOT NULL , `create_time` INT(11) NOT NULL DEFAULT '0' , `update_date` DATETIME NOT NULL , `update_time` INT(11) NOT NULL DEFAULT '0' , `status` INT(11) NOT NULL DEFAULT '0' , PRIMARY KEY (`id`)) ");
    // $CMSNT->query(" ALTER TABLE `spin_history` CHANGE `name` `name` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL ");
    // $CMSNT->query(" ALTER TABLE `payment_pm` CHANGE `payment_id` `payment_id` VARCHAR(255) NULL DEFAULT NULL  ");
    // $CMSNT->query(" ALTER TABLE `payment_pm` ADD `price` INT(11) NOT NULL DEFAULT '0' AFTER `amount` ");
    // $CMSNT->query(" ALTER TABLE `orders` ADD `create_time` INT(11) NOT NULL DEFAULT '0' AFTER `create_date` ");
    // $CMSNT->query(" ALTER TABLE `products` ADD `stt` INT(11) NOT NULL DEFAULT '0' AFTER `id` ");
    // $CMSNT->query(" CREATE TABLE `blogs` ( `id` INT(11) NOT NULL AUTO_INCREMENT , `title` TEXT NULL DEFAULT NULL , `content` LONGTEXT NULL DEFAULT NULL , `display` INT(11) NOT NULL DEFAULT '0' , `image` VARCHAR(255) NULL DEFAULT NULL , `view` INT(11) NOT NULL DEFAULT '0' , PRIMARY KEY (`id`)) ");
    // $CMSNT->query(" ALTER TABLE `blogs` ADD `create_date` DATETIME NOT NULL AFTER `view` ");
    // $CMSNT->query(" ALTER TABLE `blogs` ADD `slug` VARCHAR(255) NULL DEFAULT NULL AFTER `title` ");
    $CMSNT->query(" ALTER TABLE `products` CHANGE `name` `name` VARCHAR(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ");
    $CMSNT->query(" ALTER TABLE `categories` ADD `stt` INT(1) NOT NULL DEFAULT '0' AFTER `id` ");
    $CMSNT->query(" ALTER TABLE `users` ADD `time_request` INT(11) NOT NULL DEFAULT '0' AFTER `time_session` ");
    $CMSNT->query(" ALTER TABLE `documents` ADD `image` TEXT NULL AFTER `name` ");
    $CMSNT->query(" CREATE TABLE `document_categories` ( `id` INT(11) NOT NULL AUTO_INCREMENT , `name` TEXT NULL , `image` TEXT NULL , `status` INT(11) NOT NULL DEFAULT '0' , PRIMARY KEY (`id`)) ");
    $CMSNT->query(" ALTER TABLE `document_categories` ADD `stt` INT(11) NOT NULL DEFAULT '0' AFTER `id` ");
    $CMSNT->query(" ALTER TABLE `documents` ADD `category_id` INT(11) NOT NULL DEFAULT '0' AFTER `user_id` ");
    $CMSNT->query(" ALTER TABLE `documents` ADD `stt` INT(11) NOT NULL DEFAULT '0' AFTER `id` ");
    $CMSNT->query(" ALTER TABLE `documents` ADD `slug` VARCHAR(255) NULL DEFAULT NULL AFTER `name` ");
    $CMSNT->query(" ALTER TABLE `orders` ADD `document_id` INT(11) NOT NULL DEFAULT '0' AFTER `product_id` ");
    $CMSNT->query(" CREATE TABLE `promotions` ( `id` INT(11) NOT NULL AUTO_INCREMENT , `amount` FLOAT NOT NULL DEFAULT '0' , `discount` FLOAT NOT NULL DEFAULT '0' , `status` INT(11) NOT NULL DEFAULT '1' , PRIMARY KEY (`id`)) ");
    $CMSNT->query(" ALTER TABLE `promotions` ADD `create_date` DATETIME NULL DEFAULT NULL AFTER `status` ");
    $CMSNT->query(" ALTER TABLE `promotions` ADD `update_date` DATETIME NULL AFTER `create_date` ");
    $CMSNT->query(" ALTER TABLE `promotions` CHANGE `amount` `amount` INT(11) NOT NULL DEFAULT '0' ");
    $CMSNT->query(" ALTER TABLE `products` ADD `time_delete_account` INT(11) NOT NULL DEFAULT '0' AFTER `preview` ");
    $CMSNT->query(" ALTER TABLE `invoices` ADD `description` TEXT NULL AFTER `note` ");
    $CMSNT->query(" ALTER TABLE `invoices` ADD `tid` TEXT NULL AFTER `description` ");
    $CMSNT->query(" CREATE TABLE `addons` ( `id` INT(11) NOT NULL AUTO_INCREMENT , `name` TEXT NULL , `description` TEXT NULL , `image` TEXT NULL , `createdate` DATETIME NOT NULL , `price` INT(11) NOT NULL DEFAULT '0' , `purchase_key` VARCHAR(255) NULL DEFAULT NULL , PRIMARY KEY (`id`)) ");
    if($CMSNT->num_rows(" SELECT * FROM `addons` WHERE `id` = 1 ") == 0){
        $CMSNT->insert("addons", [
            'id'            => 1,
            'name'          => 'Template 3',
            'description'   => 'Giao diện bán sản phẩm #3',
            'image'         => 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgXDYOrjeak2ntc5wVGM4l2R4eylah-1pBl7nspO8xZXvRbGnSg8bmZCX9SPhrBkFZCDB_SBMI2MwbjWsokznk6_Vx4miTCZb8-vO3l1isIuLW5T4ULf7HIMoo3q_Uvt0TJi4jbuGe7i_ID_pLgBmuJUhR6hOXq_yy5Oav6h_EP2yVXibJ28G5giDVO/s2063/screencapture-localhost-CMSNT-CO-SHOPCLONE6-2022-04-07-14_26_07-edit.png',
            'createdate'    => '2022-04-07 10:02:41',
            'price'         => 200000,
            'purchase_key'  => ''
        ]);
    }
    if($CMSNT->num_rows(" SELECT * FROM `addons` WHERE `id` = 2 ") == 0){
        $CMSNT->insert("addons", [
            'id'            => 2,
            'name'          => 'Tạo giao dịch ảo',
            'description'   => 'Tự động tạo giao dịch nạp tiền, mua sản phẩm ảo để tăng uy tín cho shop',
            'image'         => 'https://i.imgur.com/6kNRjfN.png',
            'createdate'    => '2022-04-07 20:52:41',
            'price'         => 100000,
            'purchase_key'  => ''
        ]);
    }
    $CMSNT->query(" ALTER TABLE `invoices` ADD `fake` INT(11) NOT NULL DEFAULT '0' AFTER `tid` ");
    $CMSNT->query(" ALTER TABLE `invoices` CHANGE `description` `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL ");
    $CMSNT->query(" ALTER TABLE `orders` ADD `fake` INT(11) NOT NULL DEFAULT '0' AFTER `display` ");
    if($CMSNT->num_rows(" SELECT * FROM `addons` WHERE `id` = 3 ") == 0){
        $CMSNT->insert("addons", [
            'id'            => 3,
            'name'          => 'Template 4',
            'description'   => 'Giao diện bán sản phẩm #4',
            'image'         => 'https://i.imgur.com/bXmRtMM.png',
            'createdate'    => '2022-04-09 15:42:41',
            'price'         => 200000,
            'purchase_key'  => ''
        ]);
    }
    $CMSNT->query(" ALTER TABLE `users` ADD `rankings` INT(11) NOT NULL DEFAULT '0' AFTER `total_money` ");
    $CMSNT->query(" ALTER TABLE `users` ADD `icon_ranking` TEXT NOT NULL AFTER `rankings` ");
    $CMSNT->query(" ALTER TABLE `users` CHANGE `icon_ranking` `icon_ranking` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL ");
    $CMSNT->query(" ALTER TABLE `addons` CHANGE `name` `name` TEXT CHARACTER SET utf8 COLLATE utf8mb4_general_ci NULL DEFAULT NULL, CHANGE `description` `description` TEXT CHARACTER SET utf8 COLLATE utf8mb4_general_ci NULL DEFAULT NULL, CHANGE `image` `image` TEXT CHARACTER SET utf8 COLLATE utf8mb4_general_ci NULL DEFAULT NULL, CHANGE `purchase_key` `purchase_key` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ");
    if($CMSNT->num_rows(" SELECT * FROM `addons` WHERE `id` = 4 ") == 0){
        $CMSNT->insert("addons", [
            'id'            => 4,
            'name'          => 'Bảng Xếp Hạng Nạp Tiền',
            'description'   => 'Bảng xếp hàng nạp tiền cho thành viên',
            'image'         => 'https://i.imgur.com/ZRIRAaB.png',
            'createdate'    => '2022-04-12 02:42:41',
            'price'         => 200000,
            'purchase_key'  => ''
        ]);
    }
    $CMSNT->query(" UPDATE `addons` SET `image` = 'https://i.imgur.com/929iYyH.png' WHERE `id` = 1 ");
    $CMSNT->query(" ALTER TABLE `products` ADD `minimum` INT(11) NOT NULL DEFAULT '1' AFTER `time_delete_account`, ADD `maximum` INT(11) NOT NULL DEFAULT '10000' AFTER `minimum` ");
    $CMSNT->query(" CREATE TABLE `server2_autobank` ( `id` INT(11) NOT NULL AUTO_INCREMENT , `user_id` INT(11) NOT NULL DEFAULT '0' , `tid` TEXT NULL , `description` TEXT NULL , `create_gettime` DATETIME NOT NULL , `create_time` INT(11) NOT NULL DEFAULT '0' , PRIMARY KEY (`id`)) ");
    if($CMSNT->num_rows(" SELECT * FROM `addons` WHERE `id` = 24 ") == 0){
        $CMSNT->insert("addons", [
            'id'            => 24,
            'name'          => 'Nạp Tiền Server 2',
            'description'   => 'Nạp tiền bằng nội dung + id',
            'image'         => 'https://i.imgur.com/CydpsWl.png',
            'createdate'    => '2022-04-19 01:40:11',
            'price'         => 500000,
            'purchase_key'  => ''
        ]);
    }
    $CMSNT->query(" ALTER TABLE `server2_autobank` CHANGE `tid` `tid` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL ");
    $CMSNT->query(" ALTER TABLE `server2_autobank` ADD UNIQUE(`tid`) ");
    $CMSNT->query(" ALTER TABLE `server2_autobank` ADD `amount` FLOAT NOT NULL DEFAULT '0' AFTER `description` ");
    $CMSNT->query(" ALTER TABLE `server2_autobank` ADD `received` FLOAT NOT NULL DEFAULT '0' AFTER `amount` ");
    if($CMSNT->num_rows(" SELECT * FROM `addons` WHERE `id` = 211 ") == 0){
        $CMSNT->insert("addons", [
            'id'            => 211,
            'name'          => 'Số Lượng Đã Bán Ảo',
            'description'   => 'Điều chỉnh số lượng đã bán ảo (số lượng ảo + số lượng thật)',
            'image'         => 'https://i.imgur.com/3tOOFDC.png',
            'createdate'    => '2022-04-26 01:40:11',
            'price'         => 50000,
            'purchase_key'  => ''
        ]);
    }
    $CMSNT->query(" ALTER TABLE `invoices` CHANGE `tid` `tid` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ");
    $CMSNT->query(" ALTER TABLE `invoices` ADD UNIQUE(`tid`) ");



    for ($i=1; $i < 10; $i++) { 
        $CMSNT->query(" ALTER TABLE `server2_autobank` DROP INDEX `tid_$i` ");
        $CMSNT->query(" ALTER TABLE `invoices` DROP INDEX `tid_$i` ");
    }

    $CMSNT->query(" CREATE TABLE `order_autofb` (
        `id` int(11) NOT NULL,
        `user_id` int(11) NOT NULL DEFAULT 0,
        `trans_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `id_rate_autofb` int(11) NOT NULL DEFAULT 0,
        `insertId` int(11) DEFAULT 0,
        `payment` int(11) NOT NULL DEFAULT 0,
        `payment_api` int(11) NOT NULL DEFAULT 0,
        `uid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `quantity` int(11) NOT NULL DEFAULT 0,
        `subscribers` int(11) NOT NULL DEFAULT 0,
        `count_success` int(11) NOT NULL DEFAULT 0,
        `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `server` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `create_time` int(11) NOT NULL DEFAULT 0,
        `create_gettime` datetime NOT NULL,
        `update_time` int(11) NOT NULL DEFAULT 0,
        `update_gettime` datetime NOT NULL,
        `status` int(11) NOT NULL DEFAULT 0
      ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ");

    $CMSNT->query(" CREATE TABLE `rate_autofb` (
        `id` int(11) NOT NULL,
        `type_api` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `name_api` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `loaiseeding` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `price` float NOT NULL DEFAULT 0,
        `name_loaiseeding` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
      ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ");


    if ($CMSNT->num_rows("SELECT * FROM `rate_autofb` ") == 0) {
        $CMSNT->query(" INSERT INTO `rate_autofb` (`id`, `type_api`, `name_api`, `loaiseeding`, `price`, `name_loaiseeding`, `note`) VALUES
        (1, 'buffsub_sale', 'Facebook buff sub sale (sv1)', '1', 20, 'Tăng Sub sale - SV1 (tốc độ ổn định)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (2, 'buffsub_sale', 'Facebook buff sub sale (sv2)', '2', 30, 'Tăng Sub sale - SV2 (tốc độ ổn định)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (3, 'buffsub_sale', 'Facebook buff sub sale (sv3)', '3', 10, 'Tăng Sub sale - SV3 (done trong ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (4, 'buffsub_sale', 'Facebook buff sub sale (sv4)', '4', 35, 'Tăng Sub sale - SV4 (tốc độ nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (7, 'buffsub_speed', 'Facebook buff sub speed (sv1)', '1', 50, 'Tăng Sub - SV1 (MAX 50K, bấm tay)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (8, 'buffsub_speed', 'Facebook buff sub speed (sv2)', '2', 50, 'Tăng Sub - SV2 (Lên khá nhanh, Max 1000k, Bảo hành 1 tháng) tốt nhất nên dùng', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (9, 'buffsub_speed', 'Facebook buff sub speed (sv3)', '3', 30, 'Tăng Sub - SV3 (Chạy được cho page pro5, 1k sub / ngày, max 250k sub clone, Không BH)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (10, 'buffsub_speed', 'Facebook buff sub speed (sv4)', '4', 30, 'Tăng Sub - SV4 (Lên ổn định, Max 80k, Bảo hành 1 tháng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (11, 'buffsub_speed', 'Facebook buff sub speed (sv5)', '5', 40, 'Tăng Sub - SV5 (Lên nhanh, Max 50k Lên cực nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (12, 'buffsub_speed', 'Facebook buff sub speed (sv6)', '6', 30, 'Tăng Sub - SV6 (Max 15k Hoàn thành trong 1-24H)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (13, 'buffsub_speed', 'Facebook buff sub speed (sv7)', '7', 30, 'Tăng Sub - SV7 (Max 20k Lên cực nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (14, 'buffsub_speed', 'Facebook buff sub speed (sv8)', '8', 60, 'Tăng Sub - SV8 (Lên rất nhanh, Max 600k, Bảo hành 6 tháng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (15, 'buffsub_speed', 'Facebook buff sub speed (sv9)', '9', 20, 'Tăng Sub - SV9 (Max 1000k , bảo hành 15 ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (16, 'buffsub_slow', 'Facebook buff sub chậm (basic)', '1', 40, 'Tăng Sub đề xuất - Basic (BH 3 tháng, max 400k) (sub thẳng hoặc kết bạn)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (17, 'buffsub_slow', 'Facebook buff sub chậm (v1)', '3', 30, 'Tăng Sub đề xuất - V1 (BH 1 tháng, max 200k) (sub thẳng hoặc kết bạn)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (18, 'buffsub_slow', 'Facebook buff sub v2 (sv2)', '2', 60, 'Tăng Sub đề xuất - V3 (xịn nhất, nick đang hoạt động 96,69%, max 60k) (sub kết bạn, ẩn kết bạn hoặc qua thẳng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (19, 'buffsub_slow', 'Facebook buff sub chậm (v2)', '4', 30, 'Tăng Sub đề xuất - V2 (Chất lượng cao, ổn định, nên dùng max 200k) (sub thẳng hoặc kết bạn)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (20, 'bufflikefanpagesale', '', '1', 20, 'Tăng Like Fanpage - SV1 (Lên chậm khoảng 1-2k/ngày Không BH)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (21, 'bufflikefanpagesale', NULL, '2', 28, 'Tăng Like Fanpage - SV2 (Lên ổn định khoảng 5-10k/ngày Không BH)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (22, 'bufflikefanpagesale', NULL, '3', 31, 'Tăng Like Fanpage - SV3 (tốc độ rất nhanh (1 ngày mua max 20k, chạy done mai mua tiếp)) (BH 7 ngày )', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (23, 'bufflikefanpage', NULL, '1', 57, 'Tăng Like Fanpage - BASIC (like bấm tay, ít tụt, có 1 vài page ko thể tăng like) (Nên dùng)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (24, 'bufflikefanpage', NULL, '2', 28, 'Tăng Like Fanpage - PRO (Like Via, max 200k tốc độ chậm Không bảo hành', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (25, 'bufflikefanpage', NULL, '3', 47, 'Tăng Like Fanpage - SV3 (MAX 40k BH 3 tháng) (Like lên chậm)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (26, 'bufflikefanpage', NULL, '4', 46, 'Tăng Like Fanpage - SV4 (MAX 20k BH 1 tháng) (Like lên chậm)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (27, 'bufflikefanpage', NULL, '5', 60, 'Tăng Like Fanpage - SV5 (MAX 50K BH 1 tháng) (Like chất lượng tốt) (Like lên nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (28, 'bufflikefanpage', NULL, '6', 67, 'Tăng Like Fanpage - SV6 (Like page Global (Like Tây Lên Nhanh ít tụt, nên sử dụng Bảo hành 45 ngày))', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (29, 'bufflikefanpage', NULL, '7', 25, 'Tăng Like Fanpage - SV7 (Like Việt Lên nhanh (max 100k))(BH 60 ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (30, 'bufflikefanpage', NULL, '8', 22, 'Tăng Like Fanpage - SV8 (Like việt, rẻ, nhanh (max 100k)) (BH 30 ngày)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (32, 'buffsubfanpage', NULL, '2', 42, 'Tăng Sub Fanpage - SV2 (page pro5 chạy sau 12-24h)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (33, 'buffsubfanpage', NULL, '1', 27, 'Tăng Sub Fanpage - SV1 (page thường, hoàn thành các đơn < 30k trong 24h)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (34, 'bufflikecommentsharelike', NULL, 'like', 58, 'Tăng Like Bài Viết (Like người việt thật) (max 50k)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (35, 'bufflikecommentsharelike', NULL, 'like_v2', 10, 'Tăng Like Bài Viết V2 (Like việt clone, tốc độ chậm, có tụt like) (max 250k)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (36, 'bufflikecommentsharelike', NULL, 'like_v3', 20, 'Tăng Like Bài Viết V3 (Like việt, rẻ, nhanh !) (max 50k)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (37, 'bufflikecommentsharelike', NULL, 'like_v4', 24, 'Tăng Like Bài Viết V4 (Like Việt Lên nhanh (max 80k) có tụt like)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (38, 'bufflikecommentsharelike', NULL, 'like_v5', 27, 'Tăng Like Bài Viết V5 (Like Việt Lên nhanh(1 ngày chạy 15-25k like) có tụt like)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (39, 'bufflikecommentsharelike', NULL, 'like_v6', 16, 'Tăng Like Bài Viết V6 (Like clone nhanh)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (40, 'bufflikecommentsharelike', NULL, 'like_v7', 34, 'Tăng Like Bài Viết V7 (Like Việt Lên Max Nhanh,luôn oder được)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (41, 'bufflikecommentshareshare', NULL, 'share', 1000, 'Tăng Share Bài Viết SV1 (share người thật,share việt)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (42, 'bufflikecommentshareshare', NULL, 'share_sv2', 250, 'Tăng Share Bài Viết SV2 (share giá rẻ (không chạy đối với bài viết share bài viết khác))', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (43, 'bufflikecommentshareshare', NULL, 'share_sv3', 30, 'Tăng Share Bài Viết SV3 (share ảo (không chạy đối với bài viết share bài viết khác))', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (44, 'bufflikecommentshareshare', NULL, 'share_sv4', 410, 'Tăng Share Bài Viết SV4', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (45, 'bufflikecommentshareshare', NULL, 'share_sv5', 24, 'Tăng Share Bài Viết SV5 (share ảo rẻ)', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.'),
        (46, 'buffviewstory', NULL, '1', 18, 'Tăng View Story SV1', '- Nghiêm cấm Buff các ID Seeding có nội dung vi phạm pháp luật, chính trị, đồ trụy...<br>\r\n- Nếu cố tình buff bạn sẽ bị trừ hết tiền và ban khỏi hệ thống vĩnh viễn, và phải chịu hoàn toàn trách nhiệm trước pháp luật.') ");
    }
    $CMSNT->query(" ALTER TABLE `order_autofb` ADD PRIMARY KEY (`id`) ");
    $CMSNT->query(" ALTER TABLE `rate_autofb` ADD PRIMARY KEY (`id`) ");
    $CMSNT->query(" ALTER TABLE `order_autofb` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT ");
    $CMSNT->query(" ALTER TABLE `rate_autofb` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT ");
    $CMSNT->query(" CREATE TABLE `store_fanpage` ( `id` INT(11) NOT NULL AUTO_INCREMENT , `seller` INT(11) NOT NULL DEFAULT '0' , `buyer` INT(11) NOT NULL DEFAULT '0' , `name` VARCHAR(255) NULL DEFAULT NULL , `icon` VARCHAR(255) NULL DEFAULT NULL , `uid` VARCHAR(255) NULL DEFAULT NULL , `type` VARCHAR(255) NULL DEFAULT NULL , `price` FLOAT NOT NULL DEFAULT '0' , `content` LONGTEXT NULL , `create_gettime` DATETIME NOT NULL , `create_time` INT(11) NOT NULL DEFAULT '0' , `update_gettime` DATETIME NOT NULL , `update_time` INT(11) NOT NULL DEFAULT '0' , PRIMARY KEY (`id`)) ");
    $CMSNT->query(" ALTER TABLE `orders` ADD `store_fanpage_id` INT(11) NOT NULL DEFAULT '0' AFTER `document_id` ");
    $CMSNT->query(" ALTER TABLE `store_fanpage` ADD `sl_like` INT(11) NOT NULL DEFAULT '0' AFTER `uid` ");
    $CMSNT->query(" ALTER TABLE `store_fanpage` ADD `url` TEXT NULL AFTER `name`, ADD `new_name` VARCHAR(255) NULL AFTER `url` ");
    $CMSNT->query(" ALTER TABLE `store_fanpage` ADD `fb_admin` VARCHAR(255) NULL DEFAULT NULL AFTER `sl_like` ");
    $CMSNT->query(" ALTER TABLE `store_fanpage` ADD `note` LONGTEXT NULL DEFAULT NULL AFTER `update_time` ");
    if($CMSNT->num_rows(" SELECT * FROM `addons` WHERE `id` = 14232 ") == 0){
        $CMSNT->insert("addons", [
            'id'            => 14232,
            'name'          => 'Bán Fanpage/Group',
            'description'   => 'Addon bán Fanpage/Group thủ công',
            'image'         => 'https://i.imgur.com/jmIjBfI.png',
            'createdate'    => '2022-05-07 01:59:00',
            'price'         => 1000000,
            'purchase_key'  => ''
        ]);
    }
    $CMSNT->query(" ALTER TABLE `store_fanpage` ADD `nam_tao_fanpage` VARCHAR(255) NULL DEFAULT NULL AFTER `sl_like` ");
    $CMSNT->query(" CREATE TABLE `ip_white` ( `id` INT(11) NOT NULL AUTO_INCREMENT , `ip` VARCHAR(255) NULL DEFAULT NULL , PRIMARY KEY (`id`))  ");
    $CMSNT->query(" ALTER TABLE `users` ADD `active` INT(11) NOT NULL DEFAULT '0' AFTER `banned` ");
    
    die('Success!');