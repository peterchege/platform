<?php
require_once "../inc/db.php";
require_once "../inc/functions.php";
require_once "../inc/sessions.php";
require_once "config.php";

if (isset($_SESSION['access_token'])) {

    $gClient->setAccessToken($_SESSION['access_token']);
} else if (isset($_GET['code'])) {
    $token = $gClient->fetchAccessTokenWithAuthCode($_GET['code']);
    $_SESSION['access_token'] = $token;
} else {
    header('Location: ../career_login.php');
    exit();
}

$oAuth = new Google_Service_Oauth2($gClient);
$userData = $oAuth->userinfo_v2_me->get();

$google_id = $_SESSION['id'] = $userData['id'];
$name = $_SESSION['name'] = $userData['name'];
$email = $_SESSION['email'] = $userData['email'];
$gender = $_SESSION['gender'] = $userData['gender'];
$picture = $_SESSION['picture'] = $userData['picture'];


//    Insert into database 
$check = $db->query("SELECT * FROM apa_job_applicants WHERE applicant_id = '$google_id'");
if (mysqli_num_rows($check) > 0) {
    //        user already registered so redirect accordingly
    user_destination_social_media();
} else {
    //        user doesn't exist so enter details to database
    $insert_google_applicant = $db->query("INSERT INTO apa_job_applicants (applicant_id, first_name, email, profile_image_url, social_media_platform, gender) 
                                                VALUES ('$google_id', '$name', '$email', '$picture', 'google', '$gender') ");
    $_SESSION['successMessage'] = 'Welcome to your job portal.';
    echo "<script>
    window.open('../combined_form.php','_SELF')
    </script>";
    exit;
}
exit();
