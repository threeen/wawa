<?php
// +----------------------------------------------------------------------
// | Perfect Is Shit
// +----------------------------------------------------------------------
// | 执行支付DEMO
// +----------------------------------------------------------------------
// | Author: alexander <gt199899@gmail.com>
// +----------------------------------------------------------------------
// | Datetime: 2016-07-28 11:53:10
// +----------------------------------------------------------------------
// | Copyright: Perfect Is Shit
// +----------------------------------------------------------------------
set_time_limit(3600);
require_once('./common.php');

use PayPal\Api\Amount;
use PayPal\Api\Details;
use PayPal\Api\ExecutePayment;
use PayPal\Api\Payment;
use PayPal\Api\PaymentExecution;
use PayPal\Api\Transaction;

// ### Approval Status
// Determine if the user approved the payment or not
if (isset($_GET['success']) && $_GET['success'] == 'true') {

    // Get the payment Object by passing paymentId
    // payment id was previously stored in session in
    // CreatePaymentUsingPayPal.php
    $paymentId = $_GET['paymentId'];
    $payment = Payment::get($paymentId, $apiContext);

    // ### Payment Execute
    // PaymentExecution object includes information necessary
    // to execute a PayPal account payment.
    // The payer_id is added to the request query parameters
    // when the user is redirected from paypal back to your site
    $execution = new PaymentExecution();
    $execution->setPayerId($_GET['PayerID']);

    // ### Optional Changes to Amount
    // If you wish to update the amount that you wish to charge the customer,
    // based on the shipping address or any other reason, you could
    // do that by passing the transaction object with just `amount` field in it.
    // Here is the example on how we changed the shipping to $1 more than before.
    // $transaction = new Transaction();
    // $amount = new Amount();
    // $details = new Details();

    // $details->setShipping(0)
    //     ->setTax(0)
    //     ->setSubtotal(5);

    // $amount->setCurrency('USD');
    // $amount->setTotal(5);
    // $amount->setDetails($details);
    // $transaction->setAmount($amount);

    // Add the above transaction object inside our Execution object.
    // $execution->addTransaction($transaction);

    try {
        // Execute the payment
        $result = $payment->execute($execution, $apiContext);

        //成功
        $PAYHT  = 'http://107.150.101.56:8078/pay/ybmyjhpay.php'; //支付通信地址

        $invoice_exp = explode('-', $result->transactions[0]->invoice_number);

        $DATA = array (
          'order_sn' => $invoice_exp[0],//商户订单号
          'user_id' => $invoice_exp[1],//商户会员ID
          'money' => $invoice_exp[2],//商户订单金额
          'sign' => $invoice_exp[3],//签名
          'paymentId' =>$_GET['paymentId'],//支付平台订单号
          );

        $sHtml = "<form id='paypalReturn' name='paypalReturn' action='".$PAYHT."' method='post'>";

               while ( list ( $key, $val ) = each ( $DATA ) ) {

                       $sHtml.= "<input type='hidden' name='".$key."' value='".$val."'/>";

               }

         $sHtml = $sHtml."<input type='submit' value='".$LANG['loading']."'></form>";

         $sHtml = $sHtml."<script>document.forms['paypalReturn'].submit();</script>";

         echo  $sHtml;


        //echo "支付成功".$result->transactions[0]->invoice_number;

    } catch (PayPal\Exception\PayPalConnectionException $ex) {

        echo "支付失败".$ex->getData();
        exit(1);
    }

    return $payment;
} else {
    echo "PayPal返回回调地址参数错误";
}