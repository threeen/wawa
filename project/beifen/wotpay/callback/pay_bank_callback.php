<?php
require_once("../config/pay_config.php");
echo 'opstate=0';//支付成功
exit;
/*
$orderid
上行过程中传入的商户orderid
*/
$orderid		= $_POST['orderid'];

/*
$opstate
操作结果状态。
0 卡被成功使用
-1 卡号密码错误
-2 卡实际面值和提交时面值不符，卡内实际面值未使用。卡实际面值由ovalue表示
-3 卡实际面值和提交时面值不符，卡内实际面值已被使用。卡实际面值由ovalue表示
-4 卡已经使用（卡在提交到沃通付之前已经被使用）
-5 失败(网络原因、具体原因不明确等)

*/
$opstate		= $_POST['opstate'];

/*
opstate=-2或者-3时表示的值，单位元(注：现只提供正确的骏网卡实际面值，其他卡值为0或者无效。为了精确性，该值可能带有4位小数)
*/
//$ovalue			= $_POST['ovalue'];
$ovalue			="100";

/*
此次卡消耗过程中沃通付系统的订单Id
*/
$sign		= $_POST['sign'];

$attach		= $_POST['attach'];
/*
此次卡消耗过程中沃通付系统的订单结束时间
*/
$resulttime		= $_POST['completiontime'];

$sign_text  = "orderid=" . $orderid . "&opstate=" . $opstate . "&ovalue=" . $ovalue;
$sign_md5 	= md5($sign_text .$shunfoo_merchant_key);

if($sign==$sign_md5){
    if($opstate=='0'){
        echo 'opstate=0';//支付成功
		$con = mysql_connect("localhost","root","root3306");
		if (!$con)
		{
			die('Could not connect: ' . mysql_error());
		}
		mysql_select_db("wawa", $con);
		mysql_query("set names 'utf8'");
	 	$result2 = mysql_query("select * from ay_user where zhanghao='{$attach}'");
		$row = mysql_fetch_array($result2);
		mysql_query("update ay_user set jine=jine+$ovalue where zhanghao='{$attach}'");
//$sql="INSERT INTO `sp_juejin_payorder` (`id`, `userid`, `ordersn`, `price`, `status`, `createtime`,`paytime`) VALUES(NULL, '1', '$dingdan', '$jin', '1','$shijian','$shijian')";
		//mysql_query("insert into ay_jinelog (id,uid,)");
    } else {
        echo 'opstate=0';//支付失败
    }
} else {
    echo 'opstate=0';//sign验证失败
}
?>