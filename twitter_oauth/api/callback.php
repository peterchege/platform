<?php
session_start();
require 'twitteroauth/autoload.php';
use Abraham\TwitterOAuth\TwitterOAuth;


if(isset($_REQUEST['oauth_verifier'], $_REQUEST['oauth_token']) && $_REQUEST['oauth_token']==$_SESSION['oauth_token']){
	$request_token=[];
	$request_token['oauth_token']=$_SESSION['oauth_token'];
	$request_token['oauth_token_secret']=$_SESSION['oauth_token_secret'];
	$connection= new TwitterOAuth(CONSUMER_KEY, CONSUMER_SECRET, $request_token['oauth_token'], $request_token['oauth_token_secret']);
	$access_token=$connection->oauth('oauth/access_token', array('oauth_verifier'=>$_REQUEST['oauth_verifier']));
	$_SESSION['access_token'] = $access_token;
	
	header('Location: ../../career_login.php');
}

?>
