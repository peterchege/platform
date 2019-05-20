<?php
	include_once 'src/Google_Client.php';
	include_once 'src/contrib/Google_Oauth2Service.php';
	
	// Edit Following 3 Lines
	$clientId = 'Paste_Application_Client_ID_Here'; //Application client ID
	$clientSecret = 'Paste_Application_Client_Secret_Here'; //Application client secret
	$redirectURL = 'Paste_Application_Callback_URL_Here'; //Application Callback URL
	
	$gClient = new Google_Client();
	$gClient->setApplicationName('Your Application Name');
	$gClient->setClientId($clientId);
	$gClient->setClientSecret($clientSecret);
	$gClient->setRedirectUri($redirectURL);
	$google_oauthV2 = new Google_Oauth2Service($gClient);
?>