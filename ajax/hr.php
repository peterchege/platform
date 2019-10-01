<?php
require_once '../inc/db.php';
require_once '../inc/functions.php';

switch ($_GET['request']) {
    case 'internship_application':
        sleep(5);
        $first_name = $_POST['first_name'];
        $last_name = $_POST['last_name'];
        $email = $_POST['email'];
        $phone = $_POST['phone'];
        if (empty($first_name || $last_name || $email || $phone)) {
            $errors = 'All fields required';
            echo 'All fields required';
            exit;
        }
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $errors[] = 'Invalid email';
            echo 'Invalid email';
            exit;
        }

        //file upload
        if (isset($_FILES)) {
            $intern_id = randomstring(10);
            $file_name = $_FILES['resume']['name'];
            $file_size = $_FILES['resume']['size'];
            $file_tmp = $_FILES['resume']['tmp_name'];
            $file_type = $_FILES['resume']['type'];
            $file_ext = explode('.', $file_name);
            $file_ext = end($file_ext);
            $file_ext = strtolower($file_ext);

            $extensions = array("doc", "docx", "pdf");

            if (in_array($file_ext, $extensions) === false) {
                $errors[] = "Invalid file.";
                echo "Invalid file.";
                exit;
            }

            if ($file_size > 5242880) {
                $errors[] = "Invalid file size.";
                echo "Invalid file size.";
                exit;
            }

            if (empty($errors) == true) {
                $file_path =  "../img/internshipfiles/" . $email . '-' . $intern_id . '-' . $file_name;
                move_uploaded_file($file_tmp, $file_path);
                $insert = $db->query("INSERT INTO apa_job_internship_applications(intern_id,first_name,last_name,email,phone,file_path) VALUES('$intern_id','$first_name','$last_name','$email','$phone','')  ");
                if ($insert) {
                    echo "success";
                }
            } else {
                print_r($errors);
            }
        } else {
            $errors[] = 'Invalid file selection.';
            echo 'Invalid file selection.';
            exit;
        }
        break;

    default:
        # code...
        break;
}
