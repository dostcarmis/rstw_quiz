<?php
require_once('inc_page.php');

$sql = "SELECT * FROM questions";
$res = mysqli_query($GLOBALS['cn'], $sql);
	
if (!$res) die();

$s = '
<div class="panel panel-default">
	<div class="panel-heading clearfix">
		<h3 class="panel-title pull-left">Questions</h3>
		<div class="pull-right">
			<a class="btn btn-success btn-xs" href="questions_form.php?id=0&amp;op=0" title="Add Item" role="button"><span class="fa fa-plus"></span> Add Item</a>		
		</div>
	</div>
	<div class="table-responsive">
	<table class="table table-condensed table-bordered table-striped">
	<thead>
		<tr>
			<th class="text-center">Questions</th>
		</tr>
	</thead>
	<tbody>
	';
	while ($row = mysqli_fetch_array($res)){

		$s .= '
			<tr>
				<td>
					<div>
						<a class="btn btn-primary btn-xs" href="questions_form.php?id='.$row['q_id'].'&amp;op=1" title="Edit" role="button"><span class="fa fa-pencil"></span></a>
						<a class="btn btn-warning btn-xs" href="javascript:void(0);" onclick="confirmDialog(\'Delete this item?\', \'Confirm Delete\', \'questions_delete.php?id='.$row['q_id'].'\');" title="Delete" role="button"><span class="fa fa-minus"></span></a>
					</div>
					<br>
					<p>
					'.$row['q_text'].'
					<ol>
						<li>'.$row['q_op1'].'</li>
						<li>'.$row['q_op2'].'</li>
						<li>'.$row['q_op3'].'</li>
						<li>'.$row['q_op4'].'</li>
					</ol>
					</p>
				</td>
			</tr>
		';
	}
	$s .= '
	</tbody>
	</table>
	</div>
	<div class="panel-footer">
	</div>
</div>
';

echo pageHeader('Questuions').$s.pageFooter();
?>