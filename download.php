<?php
require_once('inc_page.php');

$cid = requestInteger('cid') + 2;

$sql = "SELECT * FROM questions";
//echo $sql;

$res = mysqli_query($GLOBALS['cn'], $sql);
	
if (!$res) die();

$s = '<?xml version="1.0" encoding="utf-8"?>
<quiz>
';
while ($row = mysqli_fetch_array($res)){

	$s .= '<question>
<text>
<![CDATA['.$row['q_text'].']]>
</text>
<option1>
<![CDATA['.$row['q_op1'].']]>
</option1>
<option2>
<![CDATA['.$row['q_op2'].']]>
</option2>
<option3>
<![CDATA['.$row['q_op3'].']]>
</option3>
<option4>
<![CDATA['.$row['q_op4'].']]>
</option4>
<answer>'.$row['q_ans'].'</answer>
</question>
';
}

$s .= '</quiz>';

echo $s;
?>