<?php if( !defined( 'ONGPHP')) exit( 'Error ONGSOFT');
 







/*获取跳转域名*/

// $url = 'http://www.0519ky.cn/zhuanqian.html';
 $appid = $shezhi['appid'];
 $appsecret = $shezhi['appsecret'];
    /*huo*/

$acc = $Mem1->g('acc');

if ( is_array($acc) ) {
    /*计算时间*/
    if (  time() - (float) $acc['time']  > 7000 ) {


    //初始化
    $ch = curl_init();

    //设置选项，包括URL
    curl_setopt($ch, CURLOPT_URL, "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=$appid&secret=$appsecret");
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);

    //执行并获取HTML文档内容
    $output = curl_exec($ch);

    //释放curl句柄
    curl_close($ch);



    $shuarr = json_decode($output,true);
    $access_token = $shuarr['access_token'];

    $jj = array(
        'acc' => $access_token,
        'time' => time(),
        );
    $Mem1 -> s('acc',$jj);



}else{

        $access_token = $acc['acc'];

    }
    

}else{


    //初始化
    $ch = curl_init();

    //设置选项，包括URL
    curl_setopt($ch, CURLOPT_URL, "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=$appid&secret=$appsecret");
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);

    //执行并获取HTML文档内容
    $output = curl_exec($ch);

    //释放curl句柄
    curl_close($ch);



    $shuarr = json_decode($output,true);
    $access_token = $shuarr['access_token'];

    $jj = array(
        'acc' => $access_token,
        'time' => time(),
        );
    $Mem1 -> s('acc',$jj);
}



if ($access_token!='') {

        //初始化
    $ch = curl_init();

    //设置选项，包括URL
    curl_setopt($ch, CURLOPT_URL, "https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token=$access_token&type=jsapi");
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);

    //执行并获取HTML文档内容
    $output = curl_exec($ch);

    //释放curl句柄
    curl_close($ch);


$dada = json_decode( $output,true );
$jsapiTicket = trim($dada['ticket']);
}

$shezhi = $Mem1 -> g('shezhi') ;



if (isset(  $shezhi['tiaozhuan']  )) {

    $tiaozhuan =   $shezhi['tiaozhuan']  ;

}else{

    $tiaozhuan = '';
}



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
    <script type="text/javascript">
    	var sharedata = {};
    </script>


    <style type="text/css">
        
    #erweitu{
        position: absolute;
        width: 200px;
        margin-top: 430px;
        left: 30%;

    }
    .service-qrcode{
        text-align: center;
        position: relative;
    }
    </style>



        <script type="text/javascript" src="jquery-2.1.1.js"></script>
        <script type="text/javascript" src="http://html2canvas.hertzen.com/build/html2canvas.js"></script>  

 <script  type="text/javascript" >  
        $(document).ready( function(){  

        	

                $(".example1").on("click", function(event) {  
                        event.preventDefault();  
                        html2canvas(document.getElementById('uuu'), {  
                        allowTaint: true,  
                        taintTest: false,  
                        onrendered: function(canvas) {  
                            canvas.id = "mycanvas";  
                            //document.body.appendChild(canvas);  
                            //生成base64图片数据  
                            var dataUrl = canvas.toDataURL();  
                            var newImg = document.createElement("img");  
                            newImg.src =  dataUrl;  
                            document.body.appendChild(newImg);  

                            jQuery("#uuu").hide();

                        }  
                    });  
                });   
               
  	 $(".example1").trigger('click');




  	 $("#qrcode-invite-btn").click(function(){
    $('.cool-dialog').show();

})

$('.close-btn').click(function(){
    $('.cool-dialog').hide();
})


        });  
           
        </script>  



</head>
<body class="page-bg">


    
           
        <input class="example1" type="button" value="button" style="display: none;">  




<div id="uuu" style="background: #E5485B">
	
<div class="bg-box">
        <img class="bg-content" src="static/img/header.png">
        <div class="bg-wrapper"></div>
    </div>
    <!-- <p class="service-title" style="font-size:14px;">分享到朋友圈/微信群,群发好友,每天可赚100元</p> -->

<div class="service-qrcode">
        <p class="desc">长按保存推广二维码</p>
        <?php 

        ?>


<style type="text/css">
    
    #tutu{
        min-width: 200px;
		max-width:600px;

    }
</style>
<?php 
    
    if ($tiaozhuan!='') {
        ?>

        <img  id="tutu"  src="<?php echo WZHOST ?>ewm.php?data=<?php echo $tiaozhuan ?>?shuju=<?php echo WZHOST ?>tg.php?tuid=<?php echo $_SESSION['uid'] ?>">

        <?php
    }else{

?>

        <img  id="tutu"  src="<?php echo WZHOST ?>ewm.php?data=<?php echo WZHOST ?>tg.php?tuid=<?php echo $_SESSION['uid'] ?>">

<?php 
    }
?>
        <!-- <img class="image" src="static/img/541874dd45743711eae9de2e0e53cde1.png"> -->

    </div>






    <div class="weui_mask" style="background: rgba(0,0,0,0.8);"></div>

    <!-- 佣金规则 -->
    
    
    <div style="height: 49px;"></div>

</div>

    


    
<div class="cool-dialog dialog-rule" style="display:none;">
        <div class="dialog-bd">
            <div class="dialog-content">
                
        <h3>佣金规则</h3>
              
            <?php 
            	if (is_array($shezhi['guize'])) {

            		foreach($shezhi['guize'] as  $k => $v){
            			?>
            			        <div class="simple"><?php echo $v ?></div>
            			<?php
            		}

            	}
            ?>
        

            </div>
        </div>
        <img class="close-btn" src="static/img/close.png">
    </div>
    


<div class="rule-box invite">
        <span id="qrcode-invite-btn" class="rule-btn">佣金规则</span>
    </div>



    
<?php 
    
    $lan='zhuanqian';

?>
        <?php include QTPL.'foot.php';?>

    <link rel="stylesheet" href="static/css/web.min.css?v=140b">
 
<div style="display:none;">
	

	

</div>

<?php

    $nonceStr = 'Wm3WZYTPz0wzccnW';
$timestamp = '1491894707';



     $string = "jsapi_ticket=$jsapiTicket&noncestr=$nonceStr&timestamp=$timestamp&url=$url";



$signature = sha1($string);








?>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.js"></script>

    <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script type="text/javascript">

wx.config({
    debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
    appId: "<?php echo trim($appid) ?>", // 必填，公众号的唯一标识
    timestamp: "<?php echo $timestamp ?>", // 必填，生成签名的时间戳
    nonceStr: "<?php  echo $nonceStr ?>", // 必填，生成签名的随机串
    signature: "<?php  echo $signature ?>",// 必填，签名，见附录1
    jsApiList: [
     'getNetworkType',
        'previewImage',
        'hideOptionMenu',
    ] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2




});


    

/*
 * 注意：
 * 1. 所有的JS接口只能在公众号绑定的域名下调用，公众号开发者需要先登录微信公众平台进入“公众号设置”的“功能设置”里填写“JS接口安全域名”。
 * 2. 如果发现在 Android 不能分享自定义内容，请到官网下载最新的包覆盖安装，Android 自定义分享接口需升级至 6.0.2.58 版本及以上。
 * 3. 完整 JS-SDK 文档地址：http://mp.weixin.qq.com/wiki/7/aaa137b55fb2e0456bf8dd9148dd613f.html
 *
 * 如有问题请通过以下渠道反馈：
 * 邮箱地址：weixin-open@qq.com
 * 邮件主题：【微信JS-SDK反馈】具体问题
 * 邮件内容说明：用简明的语言描述问题所在，并交代清楚遇到该问题的场景，可附上截屏图片，微信团队会尽快处理你的反馈。
 */
wx.ready(function () {


   // wx.hideOptionMenu();
  // 1 判断当前版本是否支持指定 JS 接口，支持批量判断

  

});

wx.error(function (res) {
  // alert(res.errMsg);
});

</script>




<script type="text/javascript">
    


</script>




</body>
</html>