<?php
session_start();
require_once 'autoload.php';
require_once '../inc/db.php';
use Facebook\FacebookSession;
use Facebook\FacebookRedirectLoginHelper;
use Facebook\FacebookRequest;
use Facebook\FacebookResponse;
use Facebook\FacebookSDKException;
use Facebook\FacebookRequestException;
use Facebook\FacebookAuthorizationException;
use Facebook\GraphObject;
use Facebook\Entities\AccessToken;
use Facebook\HttpClients\FacebookCurlHttpClient;
use Facebook\HttpClients\FacebookHttpable;

// Edit Following 2 Lines
FacebookSession::setDefaultApplication('2272858242987536', '16cd03224983930ddf53ea94b03da302');
$helper = new FacebookRedirectLoginHelper('http://localhost/apainsurance/facebook/loginFB.php');

try {
	$session = $helper->getSessionFromRedirect();
} catch (FacebookRequestException $ex) { } catch (Exception $ex) { }
if (isset($session)) {
	$request = new FacebookRequest($session, 'GET', '/me?fields=id,first_name,last_name,name,email,picture.type(large)');
	$response = $request->execute();
	$graphObject = $response->getGraphObject();
	var_dump($graphObject);
	$fbid = $graphObject->getProperty('id');
	$fbfirstname = $graphObject->getProperty('first_name');
	$fblastname = $graphObject->getProperty('last_name');
	$fbfullname = $graphObject->getProperty('name');
	$femail = $graphObject->getProperty('email');
	$facebook_profile_image = $graphObject->getProperty('picture')->getProperty('url');
	if ($femail == null || $femail == '' || $femail == ' ') {
		$femail = $fbfirstname . $fblastname . $fbid . '@gmail.com';
	}
	$social_platform = $_SESSION['oauth_provider'] = 'Facebook';
	$facebook_id = $_SESSION['oauth_uid'] = $fbid;
	$first_name = $_SESSION['first_name'] = $fbfirstname;
	$last_name = $_SESSION['last_name'] = $fblastname;
	$full_name = $first_name . ' ' . $last_name;
	$femail = $_SESSION['email'] = $femail;
	$_SESSION['logincust'] = 'yes';

	//    Insert into Database
	$check = $db->query("SELECT * FROM apa_job_applicants WHERE applicant_id = '$facebook_id'");
	if (mysqli_num_rows($check) > 0) {
		//       user already registered so redirect to job portal
		header('location: ../combined_form.php');
	} else {
		// user doesn't exist so enter details to database
		$insert_facebook_applicant = $db->query("INSERT INTO apa_job_applicants (applicant_id, first_name, email, profile_image_url, social_media_platform) VALUES ('$facebook_id', '$full_name', '$femail', '$facebook_profile_image', '$social_platform') ");
		$_SESSION['successMessage'] = 'Welcome to your job portal.';
		echo "<script>
            window.open('../combined_form.php', '_SELF')
        </script>";
		exit;
	}

	//header("Location: ../homepage.html");
} else {
	$loginUrl = $helper->getLoginUrl();
	header("Location: " . $loginUrl);
}