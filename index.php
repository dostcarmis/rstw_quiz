<?php
require_once('inc_page.php');

$q = '';
$cid = 0;

if (isset($_POST["Search"])){

	if (isset($_POST["q"])){
		$q = safeString($_POST["q"]);
		$_SESSION['q'] = $q;
	} 

	if (isset($_POST["cid"])){
		$cid = $_POST["cid"];
		$_SESSION['cid'] = $cid;
	} 
} else {
	if (isset($_SESSION['cid'])){
		$cid = $_SESSION['cid'];
	}

	if (isset($_SESSION['q'])){
		$q = $_SESSION['q'];
	}
} 

$sql = "SELECT * FROM vw_questions";
$where = "";

if ($cid > 0){
	if (strlen($where) > 0){
		$where .= " AND ";
	}
	$where .= "(cat_id = $cid)";
}

if (strlen($q) > 0){
	if (strlen($where) > 0){
		$where .= " AND ";
	}
	$where .= "((q_text like '%$q%') OR (q_op1 like '%$q%') OR (q_op2 like '%$q%') OR (q_op3 like '%$q%') OR (q_op4 like '%$q%'))";
}

if (strlen($where) > 0){
	$sql .= " WHERE ".$where;
}


$catsel = getOptions("categories", "cat_name", "cat_id", $cid, 'All');

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
	<div class="panel-body">
		<form name="filter-form" class="form-inline" action="index.php" method="post">
		<div class="input-group">
			<label for="cid" class="input-group-addon">Category</label>
			<select name="cid" id="cid" class="form-control">'.$catsel.'</select>
		</div>
		<div class="input-group">
			<input type="text" name="q" id="q" class="form-control" value="'.$q.'">
		</div>
		<input class="btn btn-default" type="submit" name="Search" id="Search" value="Search">
		</form>
	</div>
	<div class="table-responsive">
	<table class="table table-condensed table-bordered table-striped table-hover grid_table">
	<thead>
		<tr>
			<th class="text-center">&nbsp;</th>
			<th class="text-center">#</th>
			<th class="text-center">Category</th>
			<th class="text-center" style="width:100%;">Question</th>
		</tr>
	</thead>
	<tbody>
	';
	$ctr = 0;
	while ($row = mysqli_fetch_array($res)){
		$ctr++;
		$s .= '
			<tr>
				<td class="nowrap text-left">
					<a class="btn btn-primary btn-xs" href="questions_form.php?id='.$row['q_id'].'&amp;op=1" title="Edit" role="button"><span class="fa fa-pencil"></span></a>
					<a class="btn btn-warning btn-xs" href="javascript:void(0);" onclick="confirmDialog(\'Delete this item?\', \'Confirm Delete\', \'questions_delete.php?id='.$row['q_id'].'\');" title="Delete" role="button"><span class="fa fa-minus"></span></a>
				</td>
				<td class="text-center">'.$ctr.'</td>
				<td class="text-center">'.$row['cat_name'].'</td>
				<td>
					<p>'.$row['q_text'].'</p>
					<ol type="1" start="1" class="list-group">
		';
		for($i = 1; $i < 5; $i++){
			if ($i == $row['q_ans']){
				$s .= '
						<li class="list-group-item list-group-item-success">'.$row['q_op'.$i].'</li>
				';
			} else {
				$s .= '
						<li class="list-group-item">'.$row['q_op'.$i].'</li>
				';
			}
		}

		$s .= '
					</ol>
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
<script type="text/javascript">
var _tsOptions = {
	headers:{
		0: { sorter: false}
		}
	};
</script>
';

echo pageHeader('Questuions').$s.pageFooter();
deleteFormCache();
?>