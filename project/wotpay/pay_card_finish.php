<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�����ύ���Կ����ڴ������Ժ򡭡�</title>
<link rel="stylesheet" type="text/css" href="style/shunfoo.css">
<script language="javascript" src="js/jquery.js"></script>
<script language="javascript" src="js/pay_card_finish.js"></script>
</head>
<?php error_reporting(0);?>
<body>
<input id="order_id" type="hidden" value="<?php echo($_GET['order_id']);?>" />
<center>
<div class="pay_base_info">
<table class="form">
<tbody>
<tr class="title">
	<td colspan="2"><img src="images/jk_logo.gif" /><br/>
	phpyuntuofu demo 1.0 <br/>
	��ͨ���ӿڰ汾:v2.6<br/>����֧���汾:v1.2</td>
</tr>
<tr>
	<td style="padding-right:150px;"><div id="shunfoomsg">��Ķ�������<?php echo($_GET['order_id']);?> ���Ѿ����ύ����ͨ�����ڽ��д������Ժ�<img src="images/proccessing.gif" alt="������" /></div></td>
</tr>
<tr class="foot">
	<td colspan="2">
		<input type="submit" value="�� �� &raquo;" id="submit" name="submit" />
	</td>
</tr>
</tbody>
</table>
</div>
</center>
</body>
</html>
