<?php
//session_start();
require_once "GoogleAPI/vendor/autoload.php";
$gClient = new Google_Client();
$gClient->setClientId("363311180674-4786ee7va4o3oo2cojdq0hp57isdvukq.apps.googleusercontent.com");
$gClient->setClientSecret("aGE3xdbrDPAw9izO59Up-sq4");
$gClient->setApplicationName("APA INSURANCE");
$gClient->setRedirectUri("http://localhost/apainsurance/googleapi/g-callback.php");
$gClient->addScope("https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/userinfo.email");