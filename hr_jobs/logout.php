<?php
require_once 'inc/dependants.php';

$_SESSION['fname']=null;
$_SESSION['lname']=null;
session_destroy();
header('location:login.php');
