<?php
require_once('inc_conn.php');

function pageHeader($pageTitle){

$s = '<!DOCTYPE html>
<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Build A Star Admin</title>
    <link rel="stylesheet" href="css/chosen.min.css">
    <link rel="stylesheet" href="css/tablesorter/style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker3.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/roboto.css">
    <link rel="stylesheet" href="css/private.css">
</head>
<body>
    <nav id="nav" class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="'.WEBSITE_URL.'" title="Build A Star"><img src="images/star_smaller.png" alt="Build a Star"></a>
            </div> <!-- / .navbar-header -->
            <ul class="nav navbar-nav">
                <li><a href="'.WEBSITE_URL.'download.php" title="Download Quiz File">Download</a></li>
            </ul>
        </div>
    </nav> <!-- / #nav wrapper -->
    <div class="container-fluid">
';

return $s;
}

function pageFooter(){

$s = '
    </div>

    <footer id="footer" class="navbar-fixed-bottom text-center">
        <div class="container-fluid text-center">
            Build A Star<br>
            &copy; 2015 by DOST Region 4A &middot; CALABARZON &middot; MIS Unit
        </div>
    </footer>


    <div id="delete-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="delete-modal-label" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 id="delete-modal-label" class="modal-title">Confirm Delete</h4>
                </div>
                <div class="modal-body text-center">
                    You are about to delete a record.<br>
                    Continue?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-dismiss="modal">No</button>
                    <button type="button" id="btn-delete-yes" class="btn btn-danger">Yes</button>
                </div>
            </div>
        </div>
    </div> <!-- / #delete-modal -->

    <div id="confirm-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="confirm-modal-label" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 id="confirm-modal-title" class="modal-title">Confirm Dialog Title</h4>
                </div>
                <div id="confirm-modal-message" class="modal-body text-center">Confirm Dialog Message</div>
                <div class="modal-footer">
                    <button type="button" id="confirm-btn-no" class="btn btn-success" data-dismiss="modal">No</button>
                    <button type="button" id="confirm-btn-yes" class="btn btn-danger">Yes</button>
                </div>
            </div>
        </div>
    </div> <!-- / #confirm-modal -->    
    <script src="js/jquery-2.1.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-datepicker.min.js"></script>
    <script src="js/jquery.tablesorter.min.js"></script>
    <script src="js/jquery.tablesorter.pager.js"></script>
    <script src="js/chosen.jquery.min.js"></script>
    <script src="js/custom.js"></script>
</body>
</html>
';

return $s;
}

?>