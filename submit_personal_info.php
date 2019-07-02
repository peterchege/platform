<?php

$errors         = array();  	// array to hold validation errors
$data 			= array(); 		// array to pass back data

// validate the variables ======================================================
// if any of these variables don't exist, add an error to our $errors array

if (empty($first_name = $_POST['first_name']))
	$errors['first_name'] = 'First name required.';

if (empty($surname = $_POST['surname']))
	$errors['surname'] = 'Surname required.';

if (empty($other_names = $_POST['other_names']))
	$errors['other_names'] = 'Other names required.';

if (empty($id_no = $_POST['id_no']))
	$errors['id_no'] = 'Nationa ID required.';

if (empty($gender = $_POST['gender']))
	$errors['gender'] = 'Gender required.';

if (empty($dob = $_POST['dob']))
	$errors['dob'] = 'Date of birth required.';

if (empty($country = $_POST['country']))
	$errors['country'] = 'Country required.';

if (empty($state = $_POST['state']))
	$errors['stete'] = 'State required.';

if (empty($city = $_POST['city']))
	$errors['city'] = 'City required.';

if (empty($phone = $_POST['phone']))
	$errors['phone'] = 'Phone required.';

if (empty($email = $_POST['email']))
	$errors['email'] = 'Email required.';





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
	$sql = "INSERT INTO apa_job_applicants_personal_info (first_name,surname,other_names,national_id,gender,dob,country,county,city,phone_number,email)
VALUES ('$first_name','$surname','$other_names','$id_no','$gender','$dob','$country','$state','$city','$phone','$email')";
	if ($conn->query($sql) === TRUE) { } else {
		echo "Error: " . $sql . "<br>" . $conn->error;
	}

	$conn->close();

	$data['success'] = true;
	$data['message'] = 'Success!';
}

// return all our data to an AJAX call
echo json_encode($data);
