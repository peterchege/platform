<?php

$errors         = array();  	// array to hold validation errors
$data 			= array(); 		// array to pass back data

// validate the variables ======================================================
	// if any of these variables don't exist, add an error to our $errors array

	if (empty($employer=$_POST['employer']))
		$errors['employer'] = 'Employer field required.';

	if (empty($position=$_POST['position']))
		$errors['position'] = ' field required.';

	if (empty($start_date=$_POST['start_date']))
		$errors['start_date'] = ' field required.';

	if (empty($end_date=$_POST['end_date']))
		$errors['end_date'] = ' field required.';

	if (empty($current_job=$_POST['current_job']))
		$errors['current_job'] = ' field required.';

	if (empty($salary=$_POST['salary']))
		$errors['salary'] = ' field required.';

	if (empty($notice_period=$_POST['notice_period']))
		$errors['notice_period'] = ' field required.';

	if (empty($roles_performed=$_POST['roles_performed']))
		$errors['roles_performed'] = ' field required.';


// return a response ===========================================================

	// if there are any errors in our errors array, return a success boolean of false
	if ( ! empty($errors)) {

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
$sql = "INSERT INTO apa_job_applicants_employment_history (employer_company,position,start_date,end_date,current_job,salary,notice_period,roles_performed)
VALUES ('$employer','$position','$start_date','$end_date','$current_job','$salary','$notice_period','$roles_performed')";
if ($conn->query($sql) === TRUE) {
    
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();

		$data['success'] = true;
		$data['message'] = 'Information saved sucessfully!!';
	}

	// return all our data to an AJAX call
	echo json_encode($data);