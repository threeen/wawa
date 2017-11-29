<?php
$amt = !isset($_REQUEST['amt']) ? 0 : sprintf('%.2f', $_REQUEST['amt']);
$uid = !isset($_REQUEST['userid']) ? '' : $_REQUEST['userid'];

if($amt <= 0 || strlen($uid) <= 0) {
	echo '参数错误!';
	exit;
}
$orderId = time().'-'.$uid;
$url = 'http://'.$_SERVER['SERVER_NAME'].'/';
?>
<html>
<head>
	<meta charset="utf-8" />
	<title>请选择支付方式</title>
</head>

<body>
	<form id="form1" name="form1" method="post" action="http://pay1.youyunnet.com/pay/">
		<input name="pid" type="hidden" id="pid" value="2990072728" />
		<input name="money" type="hidden" id="money" value="<?php echo $amt; ?>" />
		<input name="data" type="hidden" id="data" value="<?php echo $orderId; ?>" />
		<input name="url" type="hidden" id="url" value="<?php echo $url; ?>" />
		<input name="lb" type="hidden" id="lb" value="3" />
	</form>
	
	<script type="text/javascript">
		document.form1.submit();
	</script>
</body>
</html>