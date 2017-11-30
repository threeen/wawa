<?php

require_once('./appota.php');

// $jine = $_POST['money'];
$order_sn = $_POST['order_sn'];
$user_id = $_POST['user_id'];
$sign = $_POST['sign'];
$cardcode = $_POST['cardcode'];
$cardserial = $_POST['cardserial'];
$vendor = $_POST['vendor'];

// ### Payer
// A resource representing a Payer that funds a payment
// For paypal account payments, set payment method
// to 'paypal'.
$pay = new AppotaPay('A180562-2OIBW3-BE2BDF3A63EF1DEF', 'en','R43BuPzIyZOf6jp8');

$result = $pay->cardCharging($order_sn, $cardcode, $cardserial, $vendor, $sign, $user_id);

// echo "<pre>";
// var_dump( $result );
// echo "</pre>";
//
// exit;

if ($result['success'])
{
    //成功
    //$PAYHT  = 'http://107.150.101.56:8078/pay/ybmyjhpay.php'; //支付通信地址
    $PAYHT  = 'http://107.150.99.66:88/project/ong/moudl/pay/ybmyjhpay.php';
    $DATA = array (
      'order_sn' => $order_sn,//商户订单号
      'user_id' => $user_id,//商户会员ID
      'money' => round($result['amount'], 2),//商户订单金额
       // 'money' => round($result['amount'] / 22724, 2),//商户订单金额
      'sign' => $sign,//签名
      'paymentId' =>$result['transaction_id']//支付平台订单号
      );

    $re = $pay->makeRequest($PAYHT, $DATA);

    echo $re;

    if ($re == 'ok')
    {
        $index = 'http://107.150.99.66:88/project/index.php';

          $sHtml = "<form id='index2' name='index2' action='".$index."' method='post'>";

          $sHtml = $sHtml."<input type='submit' value='".$LANG['loading']."'></form>";

          $sHtml = $sHtml."<script>document.forms['index2'].submit();</script>";
          echo  $sHtml;
    }
}
else
{
    echo $result['message'];
}

exit;


