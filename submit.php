<?php
include_once "config.php";
  $first_name = $_POST['first_name'] ;
  $surname = $_POST['surname'] ;
  $other_names = $_POST['other_names']  ;
  $national_id = $_POST['national_id'];
  
  

//Insert data in the DB
$sql = "INSERT INTO apa_job_applicants_personal_info (first_name, surname, other_names, national_id)
VALUES ('$first_name','$surname','$other_names','$national_id')";

if (mysqli_query($conn, $sql)) {
    echo "record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);

//echo "Data Submitted Successfully!";
?>
