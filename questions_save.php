<?php
require_once('inc_conn.php');

$id = requestInteger('id', 'location: '.WEBSITE_URL.'index.php');
$op = requestInteger('op', 'location: '.WEBSITE_URL.'index.php');

saveFormCache('questions');

//echo var_dump($_POST['q_type_id']);
//die();

$_SESSION['cat_id'] = $GLOBALS['cat_id'];

if (postEmpty('q_text')){
	$_SESSION['errmsg'] = "Question Text is required.";
	redirect(WEBSITE_URL.'questions_form.php?op='.$op.'&id='.$id);
	die();
}

if (postEmpty('q_op1')){
	$_SESSION['errmsg'] = "Option 1 is required.";
	redirect(WEBSITE_URL.'questions_form.php?op='.$op.'&id='.$id);
	die();
}

if (postEmpty('q_op2')){
	$_SESSION['errmsg'] = "Option 2 is required.";
	redirect(WEBSITE_URL.'questions_form.php?op='.$op.'&id='.$id);
	die();
}

if (postEmpty('q_op3')){
	$_SESSION['errmsg'] = "Option 3 is required.";
	redirect(WEBSITE_URL.'questions_form.php?op='.$op.'&id='.$id);
	die();
}

if (postEmpty('q_op4')){
	$_SESSION['errmsg'] = "Option 4 is required.";
	redirect(WEBSITE_URL.'questions_form.php?op='.$op.'&id='.$id);
	die();
}

if (postEmpty('q_ans')){
	$_SESSION['errmsg'] = "Please choose an answer.";
	redirect(WEBSITE_URL.'questions_form.php?op='.$op.'&id='.$id);
	die();
}

$sql = '';
$msg = '';


if ($op == 1){
	$sql = getUpdateQuery('questions', 'q_id');
	$msg = 'Record Updated.';
} else {

	$sql = getInsertQuery('questions', 'q_id');
	$msg = 'Record Added.';
}



//echo $sql;
//die();

mysqli_query($GLOBALS['cn'], $sql);

$_SESSION['errmsg'] = $msg;
redirect(WEBSITE_URL.'index.php');
?>