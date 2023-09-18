<?php
require_once('inc_page.php');

$id = requestInteger('id', 'location: '.WEBSITE_URL.'index.php');
$op = requestInteger('op', 'location: '.WEBSITE_URL.'index.php');


$pageTitle = 'Questions (add)';
$opstr = 'Add';
if ($op == 1){
    $opstr = 'Edit';
    loadDBValues("questions", "SELECT * FROM questions WHERE q_id = ".$id);
    $pageTitle = 'Questions (edit)';

    if (isset($_SESSION['cat_id'])){
    	$GLOBALS['cat_id'] = $_SESSION['cat_id'];
    }
} else {
    initFormValues('questions');
}

loadFormCache('questions');


$s = '';
if (strlen($GLOBALS['errmsg']) > 0){
	$s = '<div class="alert alert-danger">'.$GLOBALS['errmsg'].'</div>';
}

$catsel = getOptions("categories", "cat_name", "cat_id", $GLOBALS['cat_id']);

$s .= '
 <div class="panel panel-default">
	<div class="panel-heading clearfix ">
		<h3 class="panel-title pull-left">'.$pageTitle.'</h3>
		<div class="pull-right">
			<a class="btn btn-success btn-xs" href="index.php" title="Add" role="button"><span class="fa fa-arrow-left"></span> Back</a>
		</div>
	</div>
	<div class="panel-body">
		<form method="POST" action="questions_save.php?id='.$id.'&amp;op='.$op.'" accept-charset="UTF-8" name="input_form" class="form" role="form">
			<div class="form-group">
				<label for="cat_id">Category</label>
				<select name="cat_id" id="cat_id">'.$catsel.'</select>
			</div>

			<div class="form-group">
				<label for="q_text" class="control-label">Question *</label>
				<textarea class="form-control input-sm" placeholder="Question" rows="5" name="q_text" cols="50" id="q_text" required="required">'.$GLOBALS['q_text'].'</textarea>
			</div>

			<div class="form-group">
				<div class="alert alert-warning">
				Mark the radio button of the correct answer.
				</div>
			</div>


			<div class="form-group">
				<label for="q_op1" class="control-label">Option 1 *</label>
				<div class="input-group">
					<span class="input-group-addon">
						<input type="radio" name="q_ans" value="1" '.radio('q_ans', 1).'>
					</span>
					<input class="form-control" placeholder="Option 1" maxlength="255" required="required" name="q_op1" type="text" id="q_op1" value="'.$GLOBALS['q_op1'].'">
				</div>
			</div>

			<div class="form-group">
				<label for="q_op2" class="control-label">Option 2 *</label>
				<div class="input-group">
					<span class="input-group-addon">
						<input type="radio" name="q_ans" value="2" '.radio('q_ans', 2).'>
					</span>
					<input class="form-control" placeholder="Option 2" maxlength="255" required="required" name="q_op2" type="text" id="q_op2" value="'.$GLOBALS['q_op2'].'">
				</div>
			</div>

			<div class="form-group">
					<label for="q_op3" class="control-label">Option 3 *</label>
				<div class="input-group">
					<span class="input-group-addon">
						<input type="radio" name="q_ans" value="3" '.radio('q_ans', 3).'>
					</span>
					<input class="form-control" placeholder="Option 3" maxlength="255" required="required" name="q_op3" type="text" id="q_op3" value="'.$GLOBALS['q_op3'].'">
				</div>
			</div>

			<div class="form-group">
					<label for="q_op4" class="control-label">Option 4 *</label>
				<div class="input-group">
					<span class="input-group-addon">
						<input type="radio" name="q_ans" value="4" '.radio('q_ans', 4).'>
					</span>
					<input class="form-control" placeholder="Option 4" maxlength="255" required="required" name="q_op4" type="text" id="q_op4" value="'.$GLOBALS['q_op4'].'">
				</div>
			</div>


			<input class="btn btn-primary btn-block" type="submit" value="Save">
			<input type="hidden" name="q_id" value="'.$id.'">
		</form>
	</div>
	<div class="panel-footer">
	</div>
</div>
';

echo pageHeader($pageTitle).$s.pageFooter();
?>