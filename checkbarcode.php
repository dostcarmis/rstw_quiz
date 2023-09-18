<?php
echo "count=0&from=end";
die();
require_once('inc_conn.php');


$ctr = 0;
$code = $_REQUEST['code'];
$cid = $_REQUEST['cid'];

$sql = "SELECT COUNT(p_id) as code_count FROM players WHERE (p_code = '$code') AND (p_date = '".date('Y-m-d')."') AND (cat_id = $cid)";
$res = mysqli_query($GLOBALS['cn'], $sql);

if (!$res){
	echo "count=$ctr&from=notres";
	die();
}
if (mysqli_num_rows($res) == 0){
	echo "count=$ctr&from=numrows";
	die();
}

$row = mysqli_fetch_array($res);
$ctr = $row['code_count'];

mysqli_free_result($res);
echo "count=$ctr&from=end";
?>