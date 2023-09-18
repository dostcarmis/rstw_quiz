<?php
require_once('inc_db.php');
require_once('inc_functions.php');

date_default_timezone_set('Asia/Manila');
session_start();

define( 'DB_HOST', 'localhost' );
define( 'DB_USER', 'root' );
define( 'DB_PASSWORD', 'car007' );
define( 'DB_NAME', 'quiz' );

define('WEBSITE_URL', 'http://'. $_SERVER['SERVER_NAME'] . dirname($_SERVER['PHP_SELF']).'/');

define('GALLERY_PATH', realpath('./uploads/gallery/'));
define('GALLERY_LINK_PATH', WEBSITE_URL.'uploads/gallery/');

$GLOBALS['db'] = new dbconn();
$GLOBALS['db']->connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
$GLOBALS['cn'] = $GLOBALS['db']->conn;

$GLOBALS['host'] = 'http://'. $_SERVER['SERVER_NAME'] . dirname($_SERVER['PHP_SELF']) . '/';

$GLOBALS['errmsg'] = '';

if (isset($_SESSION['errmsg'])){
	$GLOBALS['errmsg'] = $_SESSION['errmsg'];
	$_SESSION['errmsg'] = '';
}
?>