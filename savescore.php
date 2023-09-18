<?php
require_once('inc_conn.php');

$code = $_REQUEST['code'];
$name = $_REQUEST['name'];
$affiliation = $_REQUEST['affiliation'];
$score = $_REQUEST['score'];
$count = $_REQUEST['count'];
$cid = $_REQUEST['cid'];
$date_time = date("Y-m-d H:i:s");
$date = date("Y-m-d");
$sql = "INSERT INTO players (p_code, p_name, p_affiliation, p_score, p_count, p_datetime, p_date, cat_id) VALUES ('$code', '$name', '$affiliation', $score, $count, '$date_time', '$date', $cid)";
try{
	mysqli_query($GLOBALS['cn'], $sql);
} catch(Exception $e){

} finally {
	
}
echo 'result=true';
?>