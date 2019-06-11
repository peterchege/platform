<?php
session_start();
require 'init.php';
require '../inc/db.php';
require '../inc/functions.php';
if ($_GET['state'] != $_SESSION['linkedincsrf']) {
    die('Invalid request');
}

$accessToken = $linkedin->getAccessToken($_GET['code']);
if (!$accessToken) {
    die("No access token found. Login again.");
}

$_SESSION['linkedInAccessToken'] = $accessToken;
$profile = $linkedin->getPerson($_SESSION['linkedInAccessToken']);

//variables
$linkedin_id = $profile->id;
$full_name = $profile->firstName->localized->en_US . ' ' . $profile->lastName->localized->en_US;
@$linkedin_profile_image = $profile->profilePicture->{"displayImage~"}->elements[0]->identifiers[0]->identifier;

//    Insert into Database
$check = $db->query("SELECT * FROM apa_job_applicants WHERE applicant_id = '$linkedin_id'");
if (mysqli_num_rows($check) > 0) {
    //       user already registered so redirect accordingly
    user_destination_social_media();
} else {
    // user doesn't exist so enter details to database
    $insert_linkedin_applicant = $db->query("INSERT INTO apa_job_applicants (applicant_id, first_name, profile_image_url, social_media_platform) 
                                                                VALUES ('$linkedin_id', '$full_name', '$linkedin_profile_image', 'linkedin') ");

    $_SESSION['successMessage'] = 'Welcome to your job portal.';
    echo "<script>
            window.open('../combined_form.php', '_SELF')
        </script>";
    exit;
}
