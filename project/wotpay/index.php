<?php
require_once("shunfoo/class.shunfoo.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��ͨ��֧����ʾ</title>
<link rel="stylesheet" type="text/css" href="style/shunfoo.css">
<script language="javascript" src="js/jquery.js"></script>
<script language="javascript" src="js/pay.js"></script>
</head>
<body>
<center>

<?php
$html	 = '<form method="post" action="pay_go.php"  name="pay" id="pay">';
$html	.= '<div class="pay_base_info">';
$html	.= '<table class="form">';
$html	.= '<tbody>';
$html	.= '<tr class="title">';
$html	.= '	<td colspan="2"><img src="images/jk_logo.gif" /><br/>phpshunfoo demo 2.0 <br/>��ͨ���ӿڰ汾:v2.6<br/>����֧���汾:v1.2</td>';
$html	.= '</tr>';
$html	.= '<tr>';
$html	.= '	<td class="label">��ֵ�˻�:</td>';
$html	.= '	<td class="content">';
$html	.= '		<input type="text" name="account" id="account" value="myaccount"/>';
$html	.= '	</td>';
$html	.= '</tr>';
$html	.= '<tr>';
$html	.= '	<td class="label">ȷ���˺�:</td>';
$html	.= '	<td class="content">';
$html	.= '		<input type="text" name="account_confirm" id="account_confirm"  value="myaccount"/>';
$html	.= '	</td>';
$html	.= '</tr>';
$html	.= '<tr>';
$html	.= '	<td class="label">֧�����:</td>';
$html	.= '	<td class="content">';
$html	.= '		<input type="text" name="amount" id="amount"  value="20"/>';
$html	.= '	</td>';
$html	.= '</tr>';
$html	.= '<tr>';
$html	.= '	<td class="label">֧����ʽ:</td>';
$html	.= '	<td class="content">';
$html	.= '		<input type="radio" name="payType" id="payType_bank" class="payType" value="bank" checked="checked"><label for="payType_bank">����֧��</label>';
$html	.= '		<input type="radio" name="payType" id="payType_card" class="payType" value="card" ><label for="payType_card">����֧��(����)</label>';
$html	.= '		<input type="radio" name="payType" id="payType_card_muti" class="payType" value="card_muti" ><label for="payType_card_muti">����֧��(�࿨)</label>';
$html	.= '	</td>';
$html	.= '</tr>';

//������(����)
$html	.= '<tr class="payTypeCard">';
$html	.= '	<td colspan="2">';
foreach($shunfoo_cardtype as $card){
	$cardTypeRadioId	= 'cardType_' . $card['code'];
	$html	.= '<span class="cardType">';
	$html	.= '<input type="radio"  class="cardType" name="cardType" id="'.$cardTypeRadioId.'" value="'.$card['code'].'">';
	$html	.= '<label for="'. $cardTypeRadioId .'">'.$card['name'].'</label>';
	$html	.= '</span>';
}
$html	.= '	</td>';
$html	.= '</tr>';
$html	.= '<tr class="payTypeCard">';
$html	.= '	<td class="label">����:</td>';
$html	.= '	<td class="content">';
$html	.= '		<input type="text" name="card_number" id="card_number"  value="xxxxx"/>';
$html	.= '	</td>';
$html	.= '</tr>';
$html	.= '<tr class="payTypeCard">';
$html	.= '	<td class="label">����:</td>';
$html	.= '	<td class="content">';
$html	.= '		<input type="text" name="card_password" id="card_password"  value="xxxxx"/>';
$html	.= '	</td>';
$html	.= '</tr>';

//��������
$html	.= '<tr class="payTypeBank">';
$html	.= '	<td colspan="2">';
$html	.= '	<div class="bankTypeDiv">';
foreach($shunfoo_banktype as $bank){
	$bankTypeRadioId	= 'bankType_' . $bank['code'];
	$html	.= '<span class="bankType">';
	$html	.= '<input type="radio"  class="bankType" name="bankType" id="'.$bankTypeRadioId.'" value="'.$bank['code'].'">';
	$html	.= '<label for="'. $bankTypeRadioId .'">'.$bank['name'].'</label>';
	$html	.= '</span>';
}
$html	.= '	<div>';
$html	.= '	</td>';

$html	.= '</tr>';

//������(�࿨)
$html	.= '<tr class="payType_card_muti">';
$html	.= '	<td colspan="2">';
foreach($shunfoo_cardtype as $card){
	$cardTypeRadioId	= 'cardType_' . $card['code'];
	$html	.= '<span class="cardType">';
	$html	.= '<input type="radio"  class="cardType_muti" name="cardType_muti" id="'.$cardTypeRadioId.'" value="'.$card['code'].'">';
	$html	.= '<label for="'. $cardTypeRadioId .'">'.$card['name'].'</label>';
	$html	.= '</span>';
}
$html	.= '	</td>';
$html	.= '</tr>';

$html	.= '<tr class="payType_card_muti">';
$html	.= '	<td colspan="2">';
$html	.= '��Ҫ����<input type="text" id="card_count" name="card_count" size="5" value="1"/>�ſ�';
$html	.= '	</td>';
$html	.= '</tr>';
$html	.= '<tr id="card_info" class="payType_card_muti">';
$html	.= '	<td colspan="2">';
$html	.= '����:<input type="text" name="card_number[]" id="card_number"  value="xxxxx"/>';
$html	.= '����:<input type="text" name="card_password[]" id="card_password"  value="xxxxx"/>';
$html	.= '�������:<input type="text" name="card_value[]" id="card_value"  value=""/>';
$html	.= '���Ʒ�Χ:<select name="restrict[]" id="restrict">';
$option="";
foreach($shunfoo_restrict as $code => $text )
{
	if($code==="0")
	{
		$option.='<option value="'.$code.'" selected="selected">'.$text.'</option>'."\n";
	}
	else{
		$option.='<option value="'.$code.'" >'.$text.'</option>'."\n";
	}
}
$html .= $option;
$html	.= '</select>';
$html	.= '	</td>';
$html	.= '</tr>';
$html	.= '<tr id="end_card_info" class="payType_card_muti">';
$html	.= '	<td colspan="2">';
$html	.= '��ע��Ϣ��<textarea id="attach" name="attach"></textarea>';
$html	.= '	</td>';
$html	.= '</tr>';
/*
$html	.= '<tr class="payType_card_muti">';
$html	.= '	<td class="label">����:</td>';
$html	.= '	<td class="content">';
$html	.= '		<input type="text" name="card_number" id="card_number"  value="xxxxx"/>';
$html	.= '	</td>';
$html	.= '</tr>';
$html	.= '<tr class="payType_card_muti">';
$html	.= '	<td class="label">����:</td>';
$html	.= '	<td class="content">';
$html	.= '		<input type="text" name="card_password" id="card_password"  value="xxxxx"/>';
$html	.= '	</td>';
$html	.= '</tr>';
*/

$html	.= '<tr class="foot">';
$html	.= '	<td colspan="2"><input type="submit" value="ȷ��֧�� >>" id="submit" name="submit" /></td>';
$html	.= '</tr>';
$html	.= '</tbody>';
$html	.= '</table>';
$html	.= '</form>';
echo($html);
?>
</center>	
</body>
</html>
