<?php
$index = 'http://107.150.101.56:8078/index.php';

$sHtml = "<form id='index' name='index' action='".$index."' method='post'>";

$sHtml = $sHtml."<input type='submit' value='".$LANG['loading']."'></form>";

$sHtml = $sHtml."<script>document.forms['index'].submit();</script>";

echo  $sHtml;