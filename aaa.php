<?php
// $servername = "localhost";
// $username = "root";
// $password = "";
// $dbname = "apa";
// $education_level = implode(",", $_POST['employer']);
// // Create connection
// $conn = new mysqli($servername, $username, $password, $dbname);
// // Check connection
// if ($conn->connect_error) {
//     die("Connection failed: " . $conn->connect_error);
// } 

// //Insert data in the DB
// $sql = "INSERT INTO apa_job_applicants_file_attachments (file_name)
// VALUES ('$education_level')";

// if ($conn->query($sql) === TRUE) {
//     //echo "New record created successfully";
// } else {
//     echo "Error: " . $sql . "<br>" . $conn->error;
// }

// $conn->close();
$education_level = implode(",", $_POST['employer']);

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

 $sql = "INSERT INTO apa_job_applicants_file_attachments (file_name)
 VALUES ('$education_level')";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>