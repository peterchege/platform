<?php
require_once '../inc/db.php';
require_once '../inc/functions.php';

switch ($_GET['request']) {
    case 'internship_application':
        sleep(1);
        $first_name = sanitize($_POST['first_name']);
        $last_name = sanitize($_POST['last_name']);
        $email = sanitize($_POST['email']);
        $phone = sanitize($_POST['phone']);
        if (empty($first_name || $last_name || $email || $phone)) {
            $errors[] = 'All fields required';
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
                $errors[] = "Invalid file type. Only doc, docx and pdf files allowed";
                echo "Invalid file type. Only doc, docx, pdf files allowed.";
                exit;
            }

            if ($file_size > 5242880) {
                $errors[] = "File should be less than 5mb in size.";
                echo "File should be less than 5mb in size.";
                exit;
            }

            if (empty($errors) == true) {
                $file_path =  "../documents/internship/" . $email . '-' . $intern_id . '-' . $file_name;
                $file_name = $email . '-' . $intern_id . '-' . $file_name;
                if (move_uploaded_file($file_tmp, $file_path)) {
                    $insert = $db->query("INSERT INTO apa_job_internship_applications(intern_id,first_name,last_name,email,phone,`file`) VALUES('$intern_id','$first_name','$last_name','$email','$phone','$file_name')  ");
                    if ($insert) {
                        echo "success";
                    } else {
                        echo "An error occurred please try again.";
                    }
                } else {
                    echo 'An error occurred while uploading the file. Make sure it\'s a valid file and it\'s less than 5 mb';
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
