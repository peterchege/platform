<?php

$errors         = array();  	// array to hold validation errors
$data 			= array(); 		// array to pass back data

// validate the variables ======================================================
// if any of these variables don't exist, add an error to our $errors array

if (empty($institution = $_POST['institution']))
	$errors['institution'] = 'First institution required.';

if (empty($program = $_POST['program']))
	$errors['program'] = 'Program required.';

if (empty($education_level = $_POST['education_level']))
	$errors['education_level'] = ' required.';

if (empty($start_date = $_POST['start_date']))
	$errors['start_date'] = ' required.';

if (empty($graduation_date = $_POST['graduation_date']))
	$errors['graduation_date'] = ' required.';

if (empty($anticipated_graduation_date = $_POST['anticipated_graduation_date']))
	$errors['anticipated_graduation_date'] = ' required.';

if (empty($certificate = $_POST['certificate']))
	$errors['certificate'] = ' required.';

if (empty($issuing_organization = $_POST['issuing_organization']))
	$errors['issuing_organization'] = ' required.';

if (empty($issuing_date = $_POST['issuing_date']))
	$errors['issuing_date'] = ' required.';


if (empty($expiring_date = $_POST['expiring_date']))
	$errors['expiring_date'] = ' required.';





// return a response ===========================================================

// if there are any errors in our errors array, return a success boolean of false
if (!empty($errors)) {

	// if there are items in our errors array, return those errors
	$data['success'] = false;
	$data['errors']  = $errors;
} else {

	// if there are no errors process our form, then return a message

	// DO ALL YOUR FORM PROCESSING HERE
	// THIS CAN BE WHATEVER YOU WANT TO DO (LOGIN, SAVE, UPDATE, WHATEVER)

	// show a message of success and provide a true success variable

	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "apa";

	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	//Insert data in the DB
	$sql = "INSERT INTO apa_job_applicants_education_qualification (institution,program,education_level,start_date,graduation_date,anticipated_graduation_date)
VALUES ('$institution','$program','$education_level','$start_date','$graduation_date','$anticipated_graduation_date')";
	if ($conn->query($sql) === TRUE) { } else {
		echo "Error: " . $sql . "<br>" . $conn->error;
	}

	$conn->close();

	$data['success'] = true;
	$data['message'] = 'Success!';
}

// return all our data to an AJAX call
echo json_encode($data);
