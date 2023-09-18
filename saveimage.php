<?php
require_once('inc_conn.php');

if(isset($GLOBALS["HTTP_RAW_POST_DATA"])){
	$data = $GLOBALS["HTTP_RAW_POST_DATA"];
	$filename = $_GET["filename"];
	$path = GALLERY_PATH.'/'.$filename;
	file_put_contents($path, $data);
	echo "result=0";
} else{
	echo "result=1";
}
?>