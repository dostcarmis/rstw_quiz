<?php
//echo "count=0&from=end";
//die();
require_once('inc_conn.php');


$s = '<?xml version="1.0" encoding="utf-8"?>
<players>
</players>';


$sql = "SELECT * FROM vw_players_alt LIMIT 10";
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
<players>
';

while ($row = mysqli_fetch_array($res)){
	$s .= '<player>
<naam>
<![CDATA['.$row["p_name"].']]>
</naam>
<affiliation>
<![CDATA['.$row["p_affiliation"].']]>
</affiliation>
<date>
<![CDATA['.$row["p_date"].']]>
</date>
<score>
<![CDATA['.$row["p_total_score"].']]>
</score>
<score_loc1>
<![CDATA['.$row["score_loc1"].']]>
</score_loc1>
<score_loc2>
<![CDATA['.$row["score_loc2"].']]>
</score_loc2>
<score_loc3>
<![CDATA['.$row["score_loc3"].']]>
</score_loc3>
<score_loc4>
<![CDATA['.$row["score_loc4"].']]>
</score_loc4>
<played_loc1>
<![CDATA['.$row["played_loc1"].']]>
</played_loc1>
<played_loc2>
<![CDATA['.$row["played_loc2"].']]>
</played_loc2>
<played_loc3>
<![CDATA['.$row["played_loc3"].']]>
</played_loc3>
<played_loc4>
<![CDATA['.$row["played_loc4"].']]>
</played_loc4>
</player>
';

}

$s .= '</players>';


mysqli_free_result($res);
echo $s;
?>