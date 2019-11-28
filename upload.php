<?php
require_once 'inc/sessions.php';
if(is_array($_FILES)) 
{
//$user = implode(",", $_POST['user']);
$education_level = implode(",", $_POST['education_level']);
$user_id =$_SESSION['user_id']; 
//Image Uplod
foreach ($_FILES['user_file']['name'] as $name => $value)
{
if(is_uploaded_file($_FILES['user_file']['tmp_name'][$name])) 
{
$file_name = $user_id."-".$education_level;
$sourcePath = $_FILES['user_file']['tmp_name'][$name];
$target_path = "files/".$_FILES['user_file']['name'][$name];
if(move_uploaded_file($sourcePath,$target_path)) 
{
require_once 'config.php';
//Insert data in the DB
$sql = "INSERT INTO apa_job_applicants_file_attachments (file_name, file_path, applicant_id)
VALUES ('$education_level','$target_path', '$user_id')";
if ($conn->query($sql) === TRUE) {
    
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
 <img src="<?php echo $targetPath; ?>" width="150px" height="180px" /> 
<?php
}}}}
?>