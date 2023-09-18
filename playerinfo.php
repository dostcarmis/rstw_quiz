<?php
$host = "localhost";
$username = "root";
$password = "car007";
$dbname = "event_registration";
$id = $_GET['id'] ;
$conn = new mysqli($host, $username, $password, $dbname);

$s = '<?xml version="1.0" encoding="utf-8"?>
<players>
</players>';

if ($conn->connect_error) {
	echo $s;
	die();
} 

$res = mysqli_query($conn, "SELECT * FROM vw_events WHERE (event_active = 1)");

if (!$res){
	echo $s;
	die();
}

if (mysqli_num_rows($res) == 0) {
	echo $s;
	die();
}

$row = mysqli_fetch_array($res);

$event_id = $row['event_id'];

mysqli_free_result($res);

$res = mysqli_query($conn, "SELECT * FROM vw_visitors WHERE (vis_code = '$id') AND (event_id = $event_id)");

if (!$res){
	echo $s;
	die();
}
				
if (mysqli_num_rows($res) > 0) {
	$row = mysqli_fetch_array($res);
	$s = '<?xml version="1.0" encoding="utf-8"?>
<players>
<player>
<naam>
<![CDATA['.$row["vis_name"].']]>
</naam>
<affiliation>
<![CDATA['.$row["class_name"].']]>
</affiliation>
</player>
</players>';
}

mysqli_free_result($res);

echo $s;		
?>