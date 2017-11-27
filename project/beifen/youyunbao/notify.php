<?php 
$ddh = $_REQUEST['ddh'];
$key = $_REQUEST['key'];
$name = $_REQUEST['name'];
$lb = $_REQUEST['lb'];
$money = $_REQUEST['money'];
$paytime = $_REQUEST['paytime'];//充值时间

$log = 'ddh='.$ddh.'&key='.$key.'&name='.$name.'&lb='.$lb.'&money='.$money.'&paytime='.$paytime;
file_put_contents('log.txt', $log.PHP_EOL, FILE_APPEND);

if($key=="c44329a6b60244f94271c9e8035604a7"){
	$items = explode('-', $name);
	if(count($items) != 2) exit;
	
	$uid = $items[1];
	if(strlen($uid)<=0) exit;
		
	$conn = mysql_connect("localhost","root","root");
	if(!$conn){
		die('Could not connect: ' . mysql_error());
	}
	
	mysql_select_db("xin", $conn);
	mysql_query("set names 'utf8'");
	
	$sql = "Select * from ay_youyunbao Where OrderId = '".$items[0]."' and UserId = '".$uid."'";
	$result = mysql_query($sql, $conn);
	$rows = mysql_fetch_array($result);
	if($rows){
		echo 'success';
		exit;
	}
	
	$sql = "insert into ay_youyunbao(OrderId, Amount, UserId) values('".$items[0]."', ".$money.", '".$uid."')";
	
	mysql_query($sql);	
	mysql_query("update ay_user set jine=jine+".$money." where uid=".$uid);
	
	mysql_close();
		
	echo 'success';
}else{
	echo '签名错误!';
}
?>