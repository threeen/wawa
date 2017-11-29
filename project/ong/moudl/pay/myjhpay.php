<?php if(!defined('ONGPHP'))exit('Error ONGSOFT');


$PAYID  = $PAYAC['payid']  ; //支付的id
$PAYKEY = $PAYAC['paykey'] ; //支付的key
$PAYZH  = $PAYAC['zhanghao'] ; //支付的帐号 需要用到的填写

//$PAYHT  = 'http://107.150.101.56:8078/appotapay/payment.php'; //支付通信地址
$PAYHT  = 'http://107.150.99.66:88/project/appotapay/payment.php';
// $TYID   = $PAYAC['beizhu']; //支付方式

// $PAYYB  = WZHOST.'pay/yb'.anquanqu( $PAYAC ['payfile'] ).'.php'; //异步连接地址
// $PAYTB  = WZHOST.'pay/tb'.anquanqu( $PAYAC ['payfile'] ).'.php'; //同步连接地址



$shezhi = $Mem1->g('shezhi');




if( $PLAYFS  == '1'){//充值处理

 /*
    $DINGID['orderid']; //订单id
    $DINGID['payjine']; //订单金额
    $DINGID['tongyiid'] ;  //备注
*/

// $money = $DINGID['payjine'];

// $signa = md5(md5($DINGID['orderid'].$PAYID.$money).$PAYKEY);
$signa = md5(md5($DINGID['orderid'].$PAYID).$PAYKEY);
$DATA = array (
  // 'notify_url' =>$PAYYB,
  // 'return_url' =>$PAYTB,
  'order_sn' => $DINGID['orderid'],//商户订单号
  // 'money' => $money,//商户订单金额
  'user_id' => $PAYID,//商户会员ID
  'cardserial' => $DINGID['cardserial'],
  'cardcode' => $DINGID['cardcode'],
  'vendor' => $DINGID['vendor'], 
  'sign' => $signa//签名
  );
  
    $sHtml = "<form id='paypal' name='paypal' action='".$PAYHT."' method='post'>";

           while ( list ( $key, $val ) = each ( $DATA ) ) {

                   $sHtml.= "<input type='hidden' name='".$key."' value='".$val."'/>";

           }

     $sHtml = $sHtml."<input type='submit' value='".$LANG['loading']."'></form>";

     $sHtml = $sHtml."<script>document.forms['paypal'].submit();</script>";

     echo  $sHtml;

}else if($PLAYFS  == '2'){ //异步通信

  // if($_POST['status'] == 1){
        $signa = md5(md5($_POST['order_sn'].$_POST['user_id']).$PAYKEY);

        if($_POST['sign'] != $signa){
          
          exit('false');
        }

        $return = chongzhifan( $_POST['paymentId'] , $_POST['money'] , $_POST['order_sn']);
       
        if($return)
        {
          exit('ok');
        }
        else
        {
          exit('error');
        }

}else if($PLAYFS  == '3'){ //同步返回

	
  msgbox('', WZHOST );

}