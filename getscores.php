<?php
require_once('inc_conn.php');

$s = '<?xml version="1.0" encoding="utf-8"?>
<scores>
</scores>
';
$sql = "SELECT * FROM players";

$res = mysqli_query($GLOBALS['cn'], $sql);

if (!$res){
	echo $s;
	die();
}
if (mysqli_num_rows($res) == 0){
	echo $s;
	die();
}

$s = '<?xml version="1.0" encoding="utf-8"?>
<scores>
';
while($row = mysqli_fetch_array($res)){
$d = date('m/d/Y H:i:s', strtotime($row['p_datetime']));
$s .= '<score>
<pcode><![CDATA['.$row['p_code'].']]></pcode>
<pname><![CDATA['.$row['p_name'].']]></pname>
<pscore>'.$row['p_score'].'</pscore>
<pcount>'.$row['p_count'].'</pcount>
<pdatetime><![CDATA['.$d.']]></pdatetime>
</score>
';
}

$s .= '</scores>
';

mysqli_free_result($res);
echo $s;
?>