<?php if( !defined( 'ONGPHP')) exit( 'Error ONGSOFT');
$D = db('');





    /*获取会员开始*/
    $user = uid( $_SESSION['uid'],1 );
    /*获取会员结束*/

    /*抓娃娃记录开始*/
    $order = '  ';
    $wawa = $D ->setbiao('wawa')->order( 'id desc' )->where( array(
        'uid' => $_SESSION['uid']
        ) )-> select();
    /*抓娃娃记录结束*/


    /*提现中计算*/
    $order = '  ';
    $tixians = $D ->setbiao('tixian') -> order(  )->where( array(
        'uid' => $_SESSION['uid'],
        'type' => 1,
        'off' => 0
        ) )-> select();
   
   $shenheqian = 0;
   if (is_array($tixians)) {
       
       foreach($tixians as  $k => $v){
            $shenheqian+= (float)$v['jine'];
       }

   }
   $shenheqian = sprintf("%0.2f",$shenheqian);



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
</style>

        

        <div class="cool-box">
            <div class="box-tabs">
                <span class="box-tab">账号注册</span>
            </div>
            

            <div>
                <style type="text/css">
                    
                #biaobiao{


                }
                #biaobiao tr{
                    height: 60px;
                }
                #biaobiao tr td input{
                    width: 100%;
                    height: 35px;
                    border: none;
                    border-radius: 3px;
                    padding-left: 5px;
                }
                .qian{
                    color: #fff;
                    text-align: right;
                    padding-right: 10px;
                }
                .anniu{
                    background: #000;color: #fff;padding: 5px 10px;border-radius: 3px; cursor: pointer;
                }
                </style>

                <form id="biaobiao1">
            <table style="width: 100%;" id="biaobiao">
                <tr>
                    <td width="30%" class="qian">用户名 </td>
                    <td width="70%"><input type="text" name="name"  class="yonghuming"> </td>
                </tr>

                <tr>
                    <td class="qian" >密码 </td>
                    <td ><input type="password" name="mima"  class="mima"> </td>
                </tr>

                <tr>
                    <td class="qian">确认密码 </td>
                    <td ><input type="password" name=""  class="remima"> </td>
                </tr>

                <tr>
                    <td colspan="2" style="text-align: center;">
                    <span class="anniu zhuce">
                        注册
                    </span>
                     </td>
                    
                </tr>

                <tr>
                    <td colspan="2" style="text-align: center;">
                        
                    <a href="user.php?action=login" style="color: #fff">已有账号？去登录</a>

                    </td>
                    
                </tr>



            </table>
</form>
            </div>


        </div>

        
    <div style="height: 49px;"></div>
    <?php 
        // $lan='jilu';
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
    jQuery(".zhuce").click(function(){
        var data =jQuery("#biaobiao1").serialize();


        var name = jQuery(".name").val();
        var mima = jQuery(".mima").val();
        var remima = jQuery(".remima").val();
        data = data+"&action=reg";




        if (name=='') {
                alert('用户名不能为空');
                return false;
        }
        
        if (mima=='') {
            alert('密码不能为空');
            return false;
        }

        if (mima!=remima) {
            alert('两次密码输入不一致');
            return false;
        }


        $.ajax({
            async: true,
            type:"POST",
            url:"ajax.php",
            data:data,
            dataType:'json',
            success:function(data){
                if (data.o=='yes') {
                    location.href='?action=login';
                }else if (data.o=='此账号已经存在') {
                    alert('此账号已经存在');
                }
                
            }
        })



    })
});
</script>

</body>
</html>