<?php if( !defined( 'ONGPHP')) exit( 'Error ONGSOFT');
$D = db('');

    $canshu = isset($_GET['canshu']) ? $_GET['canshu'] :'';;



    /*获取会员开始*/
    $user = uid( $_SESSION['uid'],1 );
    /*获取会员结束*/

    /*抓娃娃记录开始*/
    $order = '  ';
    $wawa = $D ->setbiao('wawa')->order( 'id desc' )->where( array(
        'uid' => $_SESSION['uid']
        ) )-> select();
    /*抓娃娃记录结束*/


?>
<!DOCTYPE html>
<html lang="zh" class="">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Cache-Control" content="no-transform">
	<meta name="format-detection" content="telephone=no">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<title><?php  echo $shezhi['title']?></title>
	<link rel="shortcut icon" href="img/favicon.ico">
	<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>

    <script type="text/javascript">
    	var sharedata = {};
    </script>
</head>
<body class="page-bg">
        <div class="bg-box">
            <img class="bg-content" src="static/img/header.png">
            <div class="bg-wrapper"></div>
        </div>



<style type="text/css">
    .jjkk div{
        flex:1;
    }
    #biaobiao{

    }

    #biaobiao tr{
        height: 50px;
    }
     #biaobiao tr select{
        background: #eee;
        height: 30px;
        border:1px solid #eee;
        color: #666;

     }
    #biaobiao tr  input {
        border: 1px solid #eee;
        height: 30px;
        width: 100%;
        color: #666;
    }
    .jji{
        padding:  10px;
    }
    .anniu{
        background: #000;
        /*border:1px solid #eee;*/
        border-radius: 5px;
        padding:  5px 10px;


    }
    .anniu:hover{
        background: #666;
    }


</style>

        <div class="income-box jji">

<form id="biao" style="display:<?php if($user['jine']<10000) echo "none";else echo "block";?>">
        <table width="100%" style="text-align: left;" id="biaobiao">

        <tr>
            <td width="30%" align="right"> Cách lấy tiền.</td> <!--提现方式-->
            <td><select style="width: 100%" name="fs">

                <option>PayPal</option>
                <!-- <option>微信</option> -->

            </select></td>
        </tr>

        <tr>
            <td width="30%" align="right"> Lấy tiền là bao nhiêu.</td> <!--提现金额-->
            <td>
                <input type="number" name="jine" >
            </td>
        </tr>

        <tr>
            <td width="30%" align="right"> Tên</td> <!--姓名-->
            <td>

                <input type="text" name="name">

            </td>
        </tr>

        <tr>
            <td width="30%" align="right"> Số tài khoản</td> <!--账号-->
            <td>

                <input type="text" name="zhanghao">

            </td>
        </tr>


        <tr>
            <td colspan="2" align="center">
                    <span class="anniu">Gửi cái nút</span>  <!--提交按钮-->


            </td>
        </tr>

        </table>
        <input type="hidden" name="canshu" value="<?php echo $canshu ?>" >

</form>

        </div>

        <div class="cool-dialog dialog-service" style="display:<?php if($user['jine']<10000) echo "block";else echo "none";?>">
            <div class="dialog-bd">
                <div class="dialog-content">
                    <h3>Đầy 10000 ₫ có thể trích tiền mặt</h3>
                </div>
            </div>
        </div>





    <div style="height: 49px;"></div>
    <?php
        $lan='jilu';
    ?>
    <?php include QTPL.'foot.php';?>


    <link rel="stylesheet" href="static/css/web.min.css?v=140b">
    <script src="static/js/move.min.js?v=9c26"></script>
    <script src="static/js/web.min.js?v=5a93"></script>    <!--[if lt IE 9]>
    <script src="ie8.min.js"></script>
    <![endif]--><div style="display:none;">


</div>



<script type="text/javascript">
jQuery(function(){
    jQuery(".anniu").click(function(){




        var jine = jQuery("input[name=jine]").val();
        if (jine=='') {

            alert('Hãy nhập vào lấy tiền là bao nhiêu.'); /*请输入提现金额*/
            return false;
        }

        if(jine<10000){
            alert("Đến giờ số tiền không nhỏ hơn 10.000");/*提现金额不得小于10000*/
            return false;
        }

        var re =  /^\+?[1-9][0-9]*$/;  /*提现金额只能是整数*/
        if (!re.test(jine)) {
            alert('Lấy tiền chỉ có thể là số nguyên'); /*提现金额只能是整数*/
            return false;
        }

        var name = jQuery("input[name=name]").val();
        if (name=='') {
            alert('Hãy nhập tên người rút tiền'); /*请输入提现姓名*/
            return false;
        }

        var zhanghao = jQuery("input[name=zhanghao]").val();
        if (zhanghao=='') {
            alert('Hãy nhập vào tài khoản rút tiền'); /*请输入提现账号*/
            return false;
        }


        var biao = jQuery("#biao").serialize();
        var data = biao+'&action=tixian';
        $.ajax({
            async: true,
            type:"POST",
            url:"?action=ajax",
            data:data,
            dataType:'json',
            success:function(data){

                if (data.o=='yes') {

                    alert('Đã gửi ，Đợi xét duyệt');  /*已经提交, 等待商家审核*/
                    location.reload(true);
                }else if(data.o=='提现佣金大于拥有佣金'){
                    alert('佣金不足');
                     location.reload(true);
                }


            }
        })



    })
});
</script>

</body>
</html>