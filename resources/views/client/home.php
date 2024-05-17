<?php if (!defined('IN_SITE')) {
    die('The Request Not Found');
}
$body = [
    'title' => __('Trang chủ').' | '.$CMSNT->site('title'),
    'desc'   => $CMSNT->site('description'),
    'keyword' => $CMSNT->site('keywords')
];
$body['header'] = '';
$body['footer'] = '';

if($CMSNT->site('sign_view_product') == 0){
    if (isset($_COOKIE["token"])) {
        $getUser = $CMSNT->get_row(" SELECT * FROM `users` WHERE `token` = '".check_string($_COOKIE['token'])."' ");
        if (!$getUser) {
            header("location: ".BASE_URL('client/logout'));
            exit();
        }
        $_SESSION['login'] = $getUser['token'];
    }
    if (isset($_SESSION['login'])) {
        require_once(__DIR__.'/../../../models/is_user.php');
    }
}else{
    require_once(__DIR__.'/../../../models/is_user.php');
}

require_once(__DIR__.'/header.php');
require_once(__DIR__.'/sidebar.php');
?>
<div class="content-page">
    <div class="container-fluid">
        <div class="row">
            <?php if (isset($getUser) && $getUser['status_2fa'] != 1) {?>
            <div class="col-lg-12">
                <div class="alert bg-white alert-danger" role="alert">
                    <div class="iq-alert-icon">
                        <i class="ri-alert-line"></i>
                    </div>
                    <a href="<?=BASE_URL('client/security');?>"
                        class="iq-alert-text"><?=__('Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.');?></a>
                </div>
            </div>
            <?php }?>
            <div class="col-lg-12">
                <div class="alert bg-white alert-primary" role="alert">
                    <div class="iq-alert-icon">
                        <i class="ri-alert-line"></i>
                    </div>
                    <div class="iq-alert-text"><?=$CMSNT->site('thongbao');?></div>
                </div>
            </div>
            <?php
            if(isset($_GET['shop'])){
                if(check_string($_GET['shop']) == 'shop-account'){
                    require_once(__DIR__.'/shop-account.php');
                }else if(check_string($_GET['shop']) == 'shop-document'){
                    require_once(__DIR__.'/shop-document.php');
                }else{
                    require_once(__DIR__.'/shop-account.php');
                }
            }else{
                require_once(__DIR__.'/shop-account.php');
            }
            ?>
            <?php if ($CMSNT->site('status_giao_dich_gan_day') == 1) {?>
            <div class="col-lg-6">
                <div class="card card-block card-stretch card-height">
                    <div class="card-header d-flex justify-content-between"
                        style="background: <?=$CMSNT->site('theme_color');?>;">
                        <div class="header-title">
                            <h5 class="card-title" style="color:white;"><?=__('ĐƠN HÀNG GẦN ĐÂY');?></h5>
                        </div>
                    </div>
                    <div class="card-body">
                        <div
                            class="iq-timeline m-0 d-flex align-items-center justify-content-between position-relative">
                            <ul class="list-inline p-0 m-0 w-100">

                                <?php
                                $i=0;
                                foreach ($CMSNT->get_list("SELECT * FROM `orders` ORDER BY id DESC limit 6") as $orderLog) {?>
                                <?php $i++;?>
                                <?php if ($i % 2 == 0) {?>
                                <li>
                                    <div class="time"> <span><?=timeAgo($orderLog['create_time']);?></span>
                                    </div>
                                    <div class="content">
                                        <div class="timeline-dots new-timeline-dots"></div>
                                        <h6 class="mb-1">
                                            <?=substr(getRowRealtime("users", $orderLog['buyer'], 'username'), 0, 2);?>*****
                                        </h6>
                                        <div class="d-inline-block w-100">
                                            <p><?=__('Mua');?> <b><?=format_cash($orderLog['amount']);?></b>
                                                <?=$orderLog['product_id'] != 0 ? __('tài khoản') : __('TUT/TRICK');?>
                                                <b><?=getRowRealtime("products", $orderLog['product_id'], 'name');?></b>
                                                <?=__('với giá');?> <b><?=format_currency($orderLog['pay']);?></b>
                                            </p>
                                        </div>
                                    </div>
                                </li>
                                <?php } else {?>
                                <li>
                                    <div class="time bg-success"> <span><?=timeAgo($orderLog['create_time']);?></span>
                                    </div>
                                    <div class="content">
                                        <div class="timeline-dots new-timeline-dots border-success"></div>
                                        <h6 class="mb-1">
                                            <?=substr(getRowRealtime("users", $orderLog['buyer'], 'username'), 0, 2);?>*****
                                        </h6>
                                        <div class="d-inline-block w-100">
                                            <p><?=__('Mua');?> <b><?=format_cash($orderLog['amount']);?></b>
                                                <?=$orderLog['product_id'] != 0 ? __('tài khoản') : __('TUT/TRICK');?>
                                                <b><?=getRowRealtime("products", $orderLog['product_id'], 'name');?></b>
                                                <?=__('với giá');?> <b><?=format_currency($orderLog['pay']);?></b>
                                            </p>
                                        </div>
                                    </div>
                                </li>
                                <?php }?>
                                <?php }?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card card-block card-stretch card-height">
                    <div class="card-header d-flex justify-content-between"
                        style="background: <?=$CMSNT->site('theme_color');?>;">
                        <div class="header-title">
                            <h5 class="card-title" style="color:white;"><?=__('NẠP TIỀN GẦN ĐÂY');?></h5>
                        </div>
                    </div>
                    <div class="card-body">
                        <div
                            class="iq-timeline m-0 d-flex align-items-center justify-content-between position-relative">
                            <ul class="list-inline p-0 m-0 w-100">

                                <?php
                                $i=0;
                                foreach ($CMSNT->get_list("SELECT * FROM `invoices` WHERE `status` = 1 ORDER BY id DESC limit 6") as $invoicelog) {?>
                                <?php $i++;?>
                                <?php if ($i % 2 == 0) {?>
                                <li>
                                    <div class="time"> <span><?=timeAgo($invoicelog['update_time']);?></span>
                                    </div>
                                    <div class="content">
                                        <div class="timeline-dots new-timeline-dots"></div>
                                        <h6 class="mb-1">
                                            <?=substr(getRowRealtime("users", $invoicelog['user_id'], 'username'), 0, 2);?>*****
                                        </h6>
                                        <div class="d-inline-block w-100">
                                            <p><?=__('Thực hiện nạp');?>
                                                <b><?=format_currency($invoicelog['amount']);?></b>
                                                <?=__('qua ');?>
                                                <b><?=$invoicelog['payment_method'];?></b>
                                            </p>
                                        </div>
                                    </div>
                                </li>
                                <?php } else {?>
                                <li>
                                    <div class="time bg-success"> <span><?=timeAgo($invoicelog['create_time']);?></span>
                                    </div>
                                    <div class="content">
                                        <div class="timeline-dots new-timeline-dots border-success"></div>
                                        <h6 class="mb-1">
                                            <?=substr(getRowRealtime("users", $invoicelog['user_id'], 'username'), 0, 2);?>*****
                                        </h6>
                                        <div class="d-inline-block w-100">
                                            <p><?=__('Thực hiện nạp');?>
                                                <b><?=format_currency($invoicelog['amount']);?></b>
                                                <?=__('qua ');?>
                                                <b><?=$invoicelog['payment_method'];?></b>
                                            </p>
                                        </div>
                                    </div>
                                </li>
                                <?php }?>
                                <?php }?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <?php }?>
        </div>
    </div>
</div>
</div>





<?php require_once(__DIR__.'/footer.php');?>