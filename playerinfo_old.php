<?php
$servername = "localhost";
$username = "root";
$password = "asdf";
$dbname = "db_ncr_rs";
$id = $_GET['id'] ;
$conn = new mysqli($servername, $username, $password, $dbname);

$s = '<?xml version="1.0" encoding="utf-8"?>
<players>
</players>';

if ($conn->connect_error) {
	echo $s;
	die();
} 

$res = mysqli_query($conn,"SELECT * FROM tbl_register inner join tbl_affiliation on tbl_register.affiliationid = tbl_affiliation.affiliationID where id = '$id'");

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
<![CDATA['.$row["fullName"].']]>
</naam>
<affiliation>
<![CDATA['.$row["Affiliation"].']]>
</affiliation>
</player>
</players>';
}

echo $s;		
?>