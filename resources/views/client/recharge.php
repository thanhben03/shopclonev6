<?php if (!defined('IN_SITE')) {
    die('The Request Not Found');
}
$body = [
    'title' => __('Nạp Tiền').' | '.$CMSNT->site('title'),
    'desc'   => $CMSNT->site('description'),
    'keyword' => $CMSNT->site('keywords')
];
$body['header'] = '
<script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.6/clipboard.min.js"></script>
';
$body['footer'] = '

';
require_once(__DIR__.'/../../../models/is_user.php');
require_once(__DIR__.'/header.php');
require_once(__DIR__.'/sidebar.php');
?>
<div class="content-page">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="alert bg-white alert-primary" role="alert">
                    <div class="iq-alert-icon">
                        <i class="ri-alert-line"></i>
                    </div>
                    <div class="iq-alert-text"><?=$CMSNT->site('recharge_notice');?></div>
                </div>
            </div>
            <?php if($CMSNT->num_rows(" SELECT * FROM `promotions` WHERE `status` = 1 ") != 0):?>
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body p-0">
                        <table class="table">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col"><?=__('Tổng nạp lớn hơn hoặc bằng');?></th>
                                    <th scope="col"><?=__('Khuyến mãi thêm');?></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i=1;foreach($CMSNT->get_list(" SELECT * FROM `promotions` WHERE `status` = 1  ORDER BY `amount` DESC ") as $promotion):?>
                                <tr>
                                    <th scope="row"><?=$i++;?></th>
                                    <td><b style="color: blue;"><?=format_currency($promotion['amount']);?></b></td>
                                    <td><b style="color: red;"><?=$promotion['discount'];?>%</b></td>
                                </tr>
                                <?php endforeach?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <?php endif?>
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header d-flex justify-content-between">
                        <div class="header-title">
                            <h4 class="card-title"><?=__('Nạp tiền qua ngân hàng');?></h4>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-6 col-md-6 col-lg-3 mt-3 mt-lg-0 mb-3">
                            <button data-toggle="modal" data-target="#modal-Addfund" type="button"
                                        class="btn btn-info btn-sm"><i class="fas fa-plus mr-1"></i>NẠP NGAY</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="modal-Addfund" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"><?=__('Nhập số tiền cần nạp');?></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="input-group mb-3">
                    <input type="hidden" id="token" value="<?=$getUser['token'];?>" required>
                    <input type="hidden" id="modal-id" required>
                    <input type="number" id="amount" onchange="totalRecharge()" onkeyup="totalRecharge()"
                        placeholder="<?=__('Nhập số tiền bạn cần nạp vào hệ thống');?>" class="form-control" required>
                </div>
                <p>
                    <span class="float-left"><?=__('Số tiền cần thanh toán');?><br><br><b id="payment"
                            style="color: blue;">0</b></span>
                    <span class="float-right"><?=__('Số tiền nhận được');?><br><br><b id="received"
                            style="color: red;">0</b></span>
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal"><?=__('Đóng');?></button>
                <button type="button" id="btnDepositOrder" class="btn btn-primary"><?=__('Tạo hoá đơn');?></button>
            </div>
        </div>
    </div>
</div>
<?php require_once(__DIR__.'/footer.php');?>
<script type="text/javascript">
function openModalAmount(id) {
    $("#modal-id").val(id);
    $("#exampleModal").modal();
}
</script>

<script type="text/javascript">
new ClipboardJS(".copy");

function copy() {
    cuteToast({
        type: "success",
        message: "<?=__('Đã sao chép vào bộ nhớ tạm');?>",
        timer: 5000
    });
}

function totalRecharge() {
    $('#total').html('<i class="fa fa-spinner fa-spin"></i> <?=__('Đang xử lý...');?>');
    $.ajax({
        url: "<?=BASE_URL("ajaxs/client/totalRecharge.php");?>",
        method: "POST",
        data: {
            amount: $("#amount").val(),
            token: $("#token").val(),
        },
        success: function(data) {
            console.log(data);
            $("#received").html(data);
            $("#payment").html($("#amount").val().toString().replace(/(.)(?=(\d{3})+$)/g, '$1.'));
        },
        error: function(err) {
            let res = JSON.parse(err.responseText);

            cuteToast({
                type: "error",
                message: res.msg,
                timer: 5000
            }, 500);
        }
    });
}


$("#btnDepositOrder").on("click", function() {
    if ($("#amount").val() < 2000) {
            return;
        }
    $('#btnDepositOrder').html('<i class="fa fa-spinner fa-spin"></i> <?=__('Đang xử lý...');?>').prop(
        'disabled',
        true);

        
        var form = $("<form/>", 
                 { action:'/client/payment-create', method: 'POST' }
            );
        form.append( 
            $("<input>", 
                { type:'text', 
                placeholder:'Keywords', 
                name: 'amount',
                value: $("#amount").val(), 
                style:'width:65%' }
            )
        );

        form.append( 
            $("<input>", 
                { type:'submit', 
                    value:'Search', 
                    style:'width:30%' }
            )
        );

        $('body').append(form);
        form.submit();


    // $.ajax({
    //     url: "<?=base_url('ajaxs/client/payment-create.php');?>",
    //     method: "POST",
    //     dataType: "JSON",
    //     data: {
    //         amount: $("#amount").val(),
    //         token: $("#token").val()
    //     },
    //     success: function(respone) {
    //         if (respone.status == 'success') {
    //             cuteToast({
    //                 type: "success",
    //                 message: respone.msg,
    //                 timer: 5000
    //             });
    //             //window.open("<?=BASE_URL('client/payment/');?>" + respone.trans_id + " ", '_blank');
    //             setTimeout("location.href = '<?=BASE_URL('client/payment/');?>" + respone.trans_id +
    //                 " ' ;", 500);

    //         } else {
    //             cuteToast({
    //                 type: "error",
    //                 message: respone.msg,
    //                 timer: 5000
    //             });
    //         }
    //         $('#btnDepositOrder').html('<?=__('Tạo hoá đơn');?>').prop('disabled', false);
    //     },
    //     error: function() {
    //         cuteToast({
    //             type: "error",
    //             message: 'Không thể xử lý',
    //             timer: 5000
    //         });
    //         $('#btnDepositOrder').html('<?=__('Tạo hoá đơn');?>').prop('disabled', false);
    //     }

    // });
});
</script>