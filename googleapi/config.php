<?php
//session_start();
require_once "GoogleAPI/vendor/autoload.php";
$gClient = new Google_Client();
$gClient->setClientId("56897147605-v9ud7fbkhtjprb9o51a5opqnkrj7s08c.apps.googleusercontent.com");
$gClient->setClientSecret("1BcqReMJi9L1Mk2T4sekSYEc");
$gClient->setApplicationName("APA");
$gClient->setRedirectUri("http://localhost/apainsurance/googleapi/g-callback.php");
$gClient->addScope("https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/userinfo.email");