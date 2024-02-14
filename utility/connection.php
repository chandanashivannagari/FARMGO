<?php
session_start();
$con= mysqli_connect('localhost','root','','farm-go');
mysqli_select_db($con,'grocerry');
define('C',"/xampp/htdocs/farmgo");
?>