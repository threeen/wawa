<?php if( !defined( 'ONGPHP')) exit( 'Error ONGSOFT');
$D = db('');

/*查询下级分类*/
$order = '  ';
$fenleis = $D ->setbiao('type')->order(  )->where( array(
    'cid' => 66
    ) )-> select();



/*查询会员信息*/
$user = uid( $_SESSION['uid'] ,1);
$jine = $user['jine'];


$shezhi = $Mem1 -> g('shezhi') ;


?><!DOCTYPE html>
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
<body class="">
    <div class="doll-index ">
        <div class="doll-index-bd level__medium level-dolls5">
            <div id="ex_doll_header">
                <div class="doll-bean doll-tid">
                    <span class="">&nbsp;ID: <?php echo $user['name'] ?></span>
                </div>
                <div class="doll-bean doll-bean2">
                    <span class="doll-bean-num" data-price="<?php echo (float)$jine*100 ?>">₫ <?php echo $jine ?></span>
                    <i class="doll-bean-plus doll-pay"></i>
                    <div class="doll-bean-add cpm-hide"><span>+</span><span>0</span></div>
                </div>
                <div id="bongStart"></div>
            <!--     <div class="rule-box invite">
                    <a href="javascript:;" class="rule-btn doll-played">规则</a>
                </div> -->

                <?php 
                	if ($shezhi['isyinyue'] =='1') {
                		?>
<div class="rule-box invite top1">
                        <a href="javascript:;" class="rule-btn caozuoyinyue"><span class="yinyue"></span>Âm nhạc</a> <!--音乐-->
                </div>
                		<?php
                	}

                ?>
                  

                <div class="rule-box invite top2">
                        <a href="javascript:;" class="rule-btn doll-qrcode">Dịch vụ khách hàng</a> <!--客服-->
                </div>

                <div class="rule-box invite top3">
                        <a href="javascript:;" class="rule-btn tuichu">Rút lui</a> <!--退出-->
                </div>


                <!-- <div class="header-btn">
                    <a href="javascript:" class="doll-btn doll-played">
                        <img class="doll-img" src="static/img/common/btn-played.png" alt="">
                    </a>
                    <a href="/f13e-1/qrcode/f13e.html" class="doll-btn doll-qrcode">
                        <img class="doll-img" src="static/img/common/btn-qrcode.png" alt="">
                    </a>
                    <a href="javascript:" class="doll-btn doll-service">
                        <img class="doll-img" src="static/img/common/btn-service.png" alt="">
                    </a>
                </div> -->
                <div class="doll-title">
                    <div class="doll-title-txt">
                        <span class="doll-title-txt_cn">3000 đồng</span> <!--1元场-->
                        <span class="doll-title-txt_en">Clip búp bê</span> <!--夹娃娃-->
                    </div>
                </div>
                <div class="machine-light machine-light__left">
                    <i class="machine-light_item" style="bottom: 16px;"></i>
                </div>
                <div class="machine-light machine-light__right">
                    <i class="machine-light_item" style="bottom: 16px;"></i>
                </div>
            </div>
            <div id="ex_doll_game">
                <div class="doll-machine">
                    <div class="machine" id="machine">
                        <div class="machine-clip" id="machine-clip"
                             style="transition-timing-function: cubic-bezier(0.25, 0.25, 0.75, 0.75); transform: translateY(0px);">
                            <i class="machine-clip-line" id="machine-clip-line" style="height: 433px;"></i>
                            <i class="machine-clip-origin"></i>
                            <div class="machine-clip-arm machine-clip-arm__left">
                                <i class="machine-clip-arm_item"></i>
                            </div>
                            <div class="machine-clip-arm machine-clip-arm__right">
                                <i class="machine-clip-arm_item"></i>
                            </div>
                        </div>
                        <div class="doll-box">
                            <ul class="doll-list rolling" id="doll-list" style="width:10rem;"></ul>
                        </div>
                        <div class="doll-box doll-box__small">
                            <ul class="doll-list" id="doll-list__small"
                                style="width:15rem;-webkit-animation:dollListMove__small 15s .1s cubic-bezier(0.43, 0.43, 0.56, 0.56) infinite both;animation:dollListMove__small 15s .1s cubic-bezier(0.43, 0.43, 0.56, 0.56) infinite both">
                            </ul>
                        </div>
                        <i class="machine-bg_bd"></i>
                        <i class="machine-bg_floor" id="machine-bg_floor"></i>
                        <i class="machine-bg_bot"></i>
                        <i class="machine-bg_repeat"></i>
                        <div class="atm">
                            <img src="static/img/packet.png" alt="">
                        </div>
                    </div>
                    <i class="doll-machine_corner doll-machine_corner__1"></i><i
                        class="doll-machine_corner doll-machine_corner__2"></i><i
                        class="doll-machine_corner doll-machine_corner__3"></i><i
                        class="doll-machine_corner doll-machine_corner__4"></i>
                    <div class="machine-tips-box cpm-hide">
                        <div class="machine-tips">
                            <div class="machine-tips_txt"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="marquee-box">
                <marquee class="marquee" scrolldelay="150" direction="left" align="middle">
                    <?php echo $shezhi['ads'] ?>
                </marquee>
            </div>
        </div>

        <div id="ex_doll_bet" style="width:100%;">
            <div class="doll-index-ft">
                <div id="ex.doll.duobao"></div>
                <div class="doll-bets-hd"></div>
                <div class="doll-bets-bd">
                    <div class="doll-bets-quota">
                            <a href="javascript:"
                               class="quota-btn quota-btn__primary active"
                               data-dolls="dolls5" data-title="3000 đồng"
                               data-key="medium" data-price="300000">
                                <span class="quota-btn-inner">3k</span>
                                <div class="quota-btn-tips">
                                    <span>Chơi một lần tốn 3000 ₫</span> <!--夹一次花费3000越南盾-->
                                </div>
                            </a>
                            <a href="javascript:"
                               class="quota-btn quota-btn__primary"
                               data-dolls="dolls10" data-title="10000 đồng"
                               data-key="medium" data-price="1000000">
                                <span class="quota-btn-inner">10k</span>
                                <div class="quota-btn-tips">
                                    <span>Chơi một lần tốn 10000 ₫</span> <!--夹一次花费10000越南盾-->
                                </div>
                            </a>
                            <a href="javascript:"
                               class="quota-btn quota-btn__primary"
                               data-dolls="dolls20" data-title="20000 đồng"
                               data-key="adv" data-price="2000000">
                                <span class="quota-btn-inner">20k</span>
                                <div class="quota-btn-tips">
                                    <span>Chơi một lần tốn 20000 ₫</span> <!--夹一次花费20000越南盾-->
                                </div>
                            </a>
                        <div class="quota-btn-shadow">
                            <i class="quota-btn-shadow_item"></i>
                            <i class="quota-btn-shadow_item"></i>
                            <i class="quota-btn-shadow_item"></i>
                        </div>
                    </div>
                    <div class="doll-bets-btn">
                        <span class="bets-btn"> Bắt đầu </span> <!--开始-->
                        <i class="bets-btn_outer"></i>
                        <i class="bets-btn_shadow"></i>
                    </div>
                </div>
                <div class="doll-bets-bg"></div>
            </div>
        </div>
    </div>
    <div id="ex_doll_extra">
        <div id="ex.doll.bongStart">
            <div style="overflow: hidden;">
                <div class="games-dialog-mod" id="starGameWrapper">
                    <div class="cpm-mask"></div>
                    <div class="dialog-container star-state__downcount" id="starGame">
                        <div class="packet-dialog">
                            <img src="static/img/packet-dialog.png" alt="">
                            <div class="dialog-txt">
                                <p class="title">Được thưởng...</p> <!--正在获取奖励中...-->
                                <p class="context"></p>
                            </div>
                            <div class="btns">
                                <!-- <a style="display:none" class="share-win dialog-Btn" href="?action=zhuanqian">Để anh bạn ở cùng nhau</a> --> <!--让好友一起来-->
                                <!-- <a style="display:none" class="share-lose dialog-Btn" href="?action=zhuanqian">Chia sẻ cho may mắn</a> --> <!--向好友借运气-->
                                <a style="display:none" class="next-btn dialog-Btn" href="index.php">Thêm một khẩu</a> <!--再来一把-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="weui_mask" style="background: rgba(0,0,0,0.8);"></div>
    <!-- 邀请有奖 -->
    <div class="cool-dialog dialog-played" style="display:none;">
        <div class="dialog-bd">
            <div class="dialog-content">
                <h3>游戏规则</h3>
                <div class="simple">1. 比夹娃娃机还高的中奖率，不出门就能抽大奖。</div>
                <div class="simple">2. 每夹一次消耗一定的金币，高级场大奖更多喔。</div>
                <div class="simple">3. 娃娃在夹起过程掉落，视为失败，失败也有大大的安慰奖。</div>
                <div class="simple">4. 如夹到实物大奖，请火速联系客服领取。</div>
            </div>
            <div class="dialog-btn-group">
                <a href="/f13e-1/qrcode/f13e.html"
                   class="dialog-btn dialog-btn-primary dialog-invite-btn">邀请好友</a>
            </div>
        </div>
    </div>
    <img class="close-btn" src="static/img/close.png">
    <!-- 客服 -->
    <div class="cool-dialog dialog-service" style="display:none;">
        <div class="dialog-bd">
            <div class="dialog-content">
                <h3>Nếu có vấn đề gì, xin thêm dịch vụ khách hàng</h3>
                <p>Xin hãy dùng lâu nhấn thêm dịch vụ khách hàng，Hãy diễn tả thêm khi gặp vấn đề！</p>
                <div style="text-align:center;">
                    <img style="width:85%;"

                         src="<?php echo $shezhi['kefu']  ?>"/>

                </div>
            </div>
        </div>
    </div>
    <!-- 代理客服 -->
    <div class="cool-dialog dialog-service-agent" style="display:none;">
        <div class="dialog-bd">
            <div class="dialog-content">
                <h3>代理专属客服</h3>
                <p>长按加代理客服经理，获取更多合作信息！</p>
                <div style="text-align:center;">
                    <img style="width:85%;"
                         src="static/img/qrcode03.png"/>
                </div>
            </div>
        </div>
    </div>
    <!-- 代理高级客服 -->
    <div class="cool-dialog dialog-service-senior" style="display:none;">
        <div class="dialog-bd">
            <div class="dialog-content">
                <h3>代理高级客服</h3>
                <p>长按加高级客服经理，获取更多合作信息！</p>
                <div style="text-align:center;">
                    <img style="width:85%;"
                         src="static/img/superqrcode.png"/>
                </div>
            </div>
        </div>
    </div>
    <!-- 佣金奖励 -->
    <div class="cool-dialog doll-reward-rule" style="display:none;">
        <div class="dialog-bd">
            <div class="dialog-content" style='text-align: center;'>
                <h3>佣金奖励规则</h3>
                    <p>1.满20元奖励1元</p>
                    <p>2.满50元奖励5元</p>
                    <p>3.满100奖励10元</p>
            </div>
        </div>
    </div>
    <img class="close-btn" src="static/img/close.png">
    <!-- 充值 -->
    <div class="cool-dialog dialog-pay" style="display:none;">
        <div class="dialog-bd">
            <div class="dialog-content">
                    <!-- <div class="pay-list"> -->
                            <!--<a href=""class="pay-item weui_btn weui_btn_primary" data-url="" zhi='1'>Nạp tiền 1 đô </a>-->
                                <!--充值1美金-->
 
                            <!-- <a href="" class="pay-item weui_btn weui_btn_primary" data-url="" zhi='3' >Nạp tiền 3 đô </a> -->
                               
 
                            <!-- <a href="" class="pay-item weui_btn weui_btn_primary" data-url="" zhi='5'>Nạp tiền 5 đô </a>   充值5美金 -->
                               
 
                            <!-- <a href="" class="pay-item weui_btn weui_btn_primary" data-url="" zhi='10'>Nạp tiền 10 đô </a> 充值10美金-->
                               
 
                            <!-- <a href="" class="pay-item weui_btn weui_btn_primary" data-url="" zhi='15'>Nạp tiền 15 đô </a> 充值15美金-->
                               
 
                            <!-- <a href="" class="pay-item weui_btn weui_btn_primary" data-url="" zhi='30' >Nạp tiền 30 đô </a> 充值30美金-->
                            <!-- <div style="text-align:center;"> -->
                            <form action="" method="get"> 
                                   <label>thẻ cào điện thoại：</label> 
                                   <select style="width: 40%; height: 35px; padding-left: 5px" name="vendor"> 
                                   <option value="appota">appota </option> 
                                   <option value="vinaphone">vinaphone</option> 
                                   <option value="mobifone">mobifone</option> 
                                   <option value="fpt">  fpt  </option> 
                                   <option value="mega">  mega  </option> 
                                   <option value="vtc">  vtc  </option> 
                                   <option value="viettel"> viettel </option> 
                                   </select> 
                            </form>
                            <!-- </div> -->

                            <style type="text/css">
                                
                            #biaobiao{


                            }
                            #biaobiao tr{
                                height: 60px;
                            }
                            #biaobiao tr td input{
                                width: 80%;
                                height: 35px;
                                border: none;
                                border-radius: 3px;
                                padding-left: 5px;
                            }
                            .biaoti{
                                color: #000;
                                text-align: center;
                                padding-right: 10px;
                            }
                            .name2{
                                color: #000;
                                text-align: right;
                                padding-right: 10px;
                            }
                            .anniu{
                                background: #000;color: #fff;padding: 10px 20px;border-radius: 5px; cursor: pointer;
                            }
                            </style>

                               <table style="width: 100%;" id="biaobiao">
                                    <tr>
                                       <td class="name2">mã số thẻ: </td> <!--用户名-->
                                       <td ><input type="text" name="Card_Code"  class="Card_Code"> </td>
                                    </tr>

                                    <tr>
                                       <td class="name2" >số seri: </td> <!--密码-->
                                       <td ><input type="password" name="Card_Serial"  class="Card_Serial"> </td>
                                    </tr>

                                    <tr>
                                       <td colspan="2" style="text-align: center;">
                                       <span class="anniu denglu">
                                           nạp thẻ <!--登陆-->
                                       </span>
                                        </td>
                                       
                                    </tr>

                               </table>
                    <!-- </div> -->
                    <div class="pay-qrcode" style="display: none;">
                        <img src="static/img/qrcode.png" alt="">
                    </div>
            </div>
        </div>
    </div>
    <img class="close-btn" src="static/img/close.png">
    </div>
    
    <div style="height: 49px;"></div>
    


<?php 
    $lan = 'index';
?>

    <?php include QTPL.'foot.php';?>

<?php 
	if ($shezhi['yinyue']!='') {
		?>
		<audio id="music2" src="<?php echo $shezhi['yinyue'] ?>"  loop="loop">你的浏览器不支持audio标签。</audio>     
		<?php

	}else{
		?>
<audio id="music2" src="song.mp3"  loop="loop">你的浏览器不支持audio标签。</audio>     

		<?php

	}

?>


    <link rel="stylesheet" href="static/css/web.min.css?v=140b">
    <script src="static/js/move.min.js?v=9c26"></script>
    <script src="static/js/web.min.js?v=5a93"></script>    <!--[if lt IE 9]>
    <script src="ie8.min.js"></script>
    <![endif]-->    <script type="text/javascript">
        $(function () {



        	<?php 
        		if ($shezhi['isyinyue']=='1') {
        	?>
            /*音乐的处理开始*/
            var music = document.getElementById('music2');     
            jQuery(".caozuoyinyue").click(function(){

                  if (music.paused){

                       music.play();     
                         jQuery(".yinyue").html('');
                   }     
                   else{     

                        jQuery(".yinyue").html('x');
                        music.pause();     
                   }

            })

            jQuery(".caozuoyinyue").trigger('click');
            /*音乐的处理结束*/

            <?php 
            	}
            ?>
            

            /*付款按钮开始*/
            $('.doll-played').click(function () {
                $('.weui_mask').addClass('weui_mask_visible');
                $('.dialog-played').show();
            });

            $('.doll-service,.doll-qrcode').click(function () {
                $('.weui_mask').addClass('weui_mask_visible');
                $('.dialog-service').show();
            });

            $('.doll-qrcode-agent').click(function () {
                $('.weui_mask').addClass('weui_mask_visible');
                $('.dialog-service-agent').show();
            });

            $('.doll-qrcode-senior').click(function () {
                $('.weui_mask').addClass('weui_mask_visible');
                $('.dialog-service-senior').show();
            });

            $('.doll-reward').click(function () {
                $('.weui_mask').addClass('weui_mask_visible');
                $('.doll-reward-rule').show();
            });

            $('.doll-pay').click(function () {


                $('.weui_mask').addClass('weui_mask_visible');
                $('.dialog-pay').show();
            });

            $('.cool-dialog .close-btn, .weui_mask').click(function () {
                $('.cool-dialog').hide();
                $('.weui_mask').removeClass('weui_mask_visible');
            });
            /*付款按钮结束*/

            /*支付*/
            $('.pay-item').click(function () {

                var zhi = jQuery(this).attr('zhi');
                location.href='pay.php?y=pay&jine='+zhi+'&paytype=1097';
                $.showLoading("正在加载...");
                return false;
            })


        });
    </script>
<div style="display:none;">
	

</div>


<div id="isjiazhong" zhi='0' style="display: none;"></div>

<style type="text/css">
    .piao{
        position: fixed;
        background: #000;
        color: #fff;
        top: 20%;
        left: 5%;
        padding:  5px;
        border-radius: 5px;
        filter:alpha(opacity=60);-moz-opacity:0.6;-khtml-opacity: 0.6;opacity: 0.6;

    }

</style>

<div class="piao" style="display:none; ;">

   <div class="jjh">
   	 
   </div>


</div>

<script type="text/javascript">
jQuery(function(){

    /*退出*/
    jQuery(".tuichu").click(function(){
        $.ajax({
            async: true,
            type:"POST",
            url:"?action=ajax",
            data:{action:'out'},
            dataType:'json',
            success:function(data){
                if (data.o=='yes') {
                    location.reload(true);
                }
                
            }
        })

    })

    /*充值*/
    jQuery(".denglu").click(function(){
        var name = jQuery(".Card_Code").val();
        var mima = jQuery(".Card_Serial").val();

        var vendor = jQuery("select[name=vendor]").val();

        location.href='pay.php?y=pay&cardcode='+name+'&cardserial='+mima+'&vendor='+vendor+'&paytype=1097';
        // $.showLoading("正在加载...");
    })
<?php 
	

	if ($shezhi['istan']!='') {

?>

	/*悬浮框的操作*/
    function jj(){

    	/*请求数据*/
    	$.ajax({
    		async: false,
    		type:"POST",
    		url:"?action=ajax",
    		data:{action:'getshuju'},
    		dataType:'json',
    		success:function(data){

                                if (data.zuobi=='1') {

                                    jQuery(".jjh").html(data.sss);

                                }else{

                                     if (data.o=='yes') {

                                        /*恭喜某某抓取了多少金币*/
                                        jQuery(".jjh").html('Chúc mừng '+data.name+' Bắt được <span style="color: #fdef55;font-weight: bold;">'+data.jine+'</span> Vàng');


                                    }else{

                                        jQuery(".jjh").html('');
                                    }
                                }

    		}
    	})


        var   dd = jQuery(".jjh").html();
        if (dd!='') {
              jQuery(".piao").fadeIn(1000,function(){
            setTimeout(function(){
                jQuery(".piao").fadeOut(1500);
            },1000);
             });
        }



          

    	



    }
    var dd = setInterval(jj, 8000 );

<?php 
	}
?>
});
</script>
</body>
<script type="text/javascript">
    var dolls =
    {
        <?php
        if (is_array($fenleis)) {
        $uu = 0;
        $nn = count($fenleis);
        foreach($fenleis as  $k => $v){

        /*查询下面的产品*/
        $order = '  ';
        $cps = $D ->setbiao('center')->order(  )->where( array(
            'cid' => $v['id'],
        ) )-> select();

        $uu = $uu+1;


        ?>

        "<?php echo $v['name'] ?>": [

            <?php

            if (is_array($cps)) {
            $yy = 0;
            $nn1 = count($cps);

            foreach($cps as  $k1 => $v1){

            $yy = $yy+1;

            ?>


            {"index": <?php echo $v1['id'] ?>, "price": <?php echo $v1['jiage'] ?>}

            <?php
            if ($nn1!=$yy) {

            ?>   ,

            <?php
            }
            ?>
            <?php
            }
            }
            ?>



        ]
        <?php
        if ($uu!=$nn) {
        ?>
        ,
        <?php
        }
        ?>

        <?php
        }
        }
        ?>





    };

    var closePlay = false;
</script>
<script id="doll-items-tmpl" type="text/x-jquery-tmpl">
  {{each(i,doll) dolls}}
  <li class="doll-item" data-index="${doll.index}" data-theme="{{if doll.price > 0}}2{{else}}1{{/if}}">
    <div class="doll-img doll-img__monkey">
      <div class="doll-img_move">
        <i class="doll-img_face doll-img_face__1"></i>
        <div class="doll-img_name {{if doll.price > 0}}doll-img_name__packet{{else}}doll-img_name__goods{{/if}}">
          <span class="doll-img_txt">{{if doll.price > 0}}${doll.price}{{/if}}</span>
        </div>
        <i class="doll-img_body"></i>
      </div>
      <i class="doll-img_shadow"></i>
      <i class="doll-img_smoke"></i>
      <i class="doll-img_tag"></i>
    </div>
  </li>
  {{/each}}


    </script>
<script id="small-doll-items-tmpl" type="text/x-jquery-tmpl">
  {{each(i,doll) dolls}}
  <li class="doll-item">
    <div class="doll-img doll-img__monkey">
      <div class="doll-img_move">
        <i class="doll-img_face doll-img_face__2"></i>
        <div class="doll-img_name {{if doll.price > 0}}doll-img_name__packet{{else}}doll-img_name__goods{{/if}}">
          <span class="doll-img_txt">{{if doll.price > 0}}${doll.price}{{/if}}</span>
        </div>
        <i class="doll-img_body"></i>
      </div>
      <i class="doll-img_shadow"></i>
    </div>
  </li>
  {{/each}}


    </script>
</html>