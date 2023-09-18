<?php
require_once('inc_conn.php');

$id = requestInteger('id', 'location: '.WEBSITE_URL.'index.php');
//$op = requestInteger('op', 'location: '.WEBSITE_URL.'index.php');

$sql = "DELETE FROM questions WHERE q_id = $id";
mysqli_query($GLOBALS['cn'], $sql);

$msg = 'Record Deleted.';

$_SESSION['errmsg'] = $msg;
redirect(WEBSITE_URL.'index.php');
?>