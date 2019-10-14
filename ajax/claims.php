<?php
require_once '../inc/db.php';
require_once '../inc/functions.php';
switch ($_GET['request']) {
    case 'motor_claim':
        sleep(1);
        $response = array(
            'status' => 0,
            'message' => 'Form submission failed, please try again.'
        );
        if (!isset($_POST['full_name']) || empty($_POST['full_name'] || !isset($_POST['phone']) || $_POST['phone'] || !isset($_POST['email']) ||  $_POST['email'] || !isset($_POST['location']) || empty($_POST['location']) || !isset($_POST['registration_number']) || !isset($_POST['registration_number']) ||  !isset($_POST['claim_event']) || empty($_POST['claim_event']) ||
            !isset($_POST['product_id']) ||  empty($_POST['product_id']) || !isset($_POST['product_category_id']) || empty($_POST['product_category_id']) || !isset($_POST['motor_claim_type']) ||  empty($_POST['motor_claim_type']))) {
            $response['message'] = 'Please enter all required fields.';
        } else {
            $full_name = sanitize($_POST['full_name']);
            $phone = sanitize($_POST['phone']);
            $email = sanitize($_POST['email']);
            $location = sanitize($_POST['location']);
            $registration_number = sanitize($_POST['registration_number']);
            $claim_event = sanitize($_POST['claim_event']);
            $product_id = sanitize($_POST['product_id']);
            $product_category_id = sanitize($_POST['product_category_id']);
            $motor_claim_type = sanitize($_POST['motor_claim_type']);
            $created_at = date('Y-m-d H:i:s');

            if (filter_var($email, FILTER_VALIDATE_EMAIL) === false) {
                $response['message'] = 'Please enter a valid email.';
                $status = 0;
                exit;
            } else {
                // insert to db
                $query = "INSERT INTO claims_motor(`full_name`,`phone`,`email`,`location`,`registration_number`,`claim_event`,`product_id`,`product_category_id`,`motor_claim_type`,`created_at`) 
                                            VALUES( '$full_name', '$phone', '$email', '$location', '$registration_number', '$claim_event', '$product_id', '$product_category_id', '$motor_claim_type', '$created_at')  ";
                $feed = $db->query($query);

                if ($feed) {
                    $response['message'] = 'Submitted successfully.';
                    $response['status'] = 1;
                } else {
                    $response['message'] = 'An error occured.' . mysqli_error($db);
                    $response['status'] = 0;
                }
            }
        }
        //return response
        echo json_encode($response);

        break;
    case 'life_claim':
        sleep(1);
        $response = array(
            'status' => 0,
            'message' => 'Form submission failed, please try again.'
        );

        if (!isset($_POST['full_name']) || empty($_POST['full_name'] ||
            !isset($_POST['phone']) || empty($_POST['phone']) ||
            !isset($_POST['email']) || empty($_POST['email']) ||
            !isset($_POST['location']) || empty($_POST['location']) ||
            !isset($_POST['registration_number']) || !isset($_POST['registration_number']) ||
            !isset($_POST['claim_event']) || empty($_POST['claim_event']) ||
            !isset($_POST['product_id']) ||  empty($_POST['product_id']) ||
            !isset($_POST['product_category_id']) || empty($_POST['product_category_id']) ||
            !isset($_POST['motor_claim_type']))) {
            $response['message'] = 'Please enter all required fields.';
        } else {
            $created_at = date('Y-m-d H:i:s');
            $product_id = filter_var(mysqli_real_escape_string($db, $_POST['product_id']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH);
            $product_category_id = sanitize($_POST['product_category_id']);
            $full_name = filter_var(mysqli_real_escape_string($db, $_POST['full_name']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);
            $phone = filter_var(mysqli_real_escape_string($db, $_POST['phone']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH);
            $email = filter_var(mysqli_real_escape_string($db, $_POST['email']), FILTER_SANITIZE_EMAIL, FILTER_FLAG_STRIP_HIGH);
            $location = ((isset($_POST['location'])) ? filter_var(mysqli_real_escape_string($db, $_POST['location']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : NULL);

            if (isset($_FILES['claim_form_hospital_cash'])) {
                $form =  'claim_form_hospital_cash';
            } else if (isset($_FILES['claim_form_last_expense'])) {
                $form = 'claim_form_last_expense';
            } else if (isset($_FILES['claim_form_critical_illness'])) {
                $form = 'claim_form_critical_illness';
            } else if (isset($_FILES['claim_form_death_claim'])) {
                $form = 'claim_form_death_claim';
            } else if (isset($_FILES['policy_document_maturity'])) {
                $form = 'policy_document_maturity';
            } else if (isset($_FILES['policy_document_partial_maturity'])) {
                $form = 'policy_document_partial_maturity';
            } else {
                $form = 'invalid selection';
            }

            switch ($form) {
                case 'Hospital Cash Claim':
                    $claim_id = randomstring(10);
                    $life_claim_type = 'claim_form_hospital_cash';
                    $file_name = $_FILES['claim_form_hospital_cash']['name'];
                    $file_size = $_FILES['claim_form_hospital_cash']['size'];
                    $file_tmp = $_FILES['claim_form_hospital_cash']['tmp_name'];
                    $file_type = $_FILES['claim_form_hospital_cash']['type'];
                    $file_ext = explode('.', $file_name);
                    $file_ext = end($file_ext);
                    $file_ext = strtolower($file_ext);
                    $extensions = array("doc", "docx", "pdf");

                    if (in_array($file_ext, $extensions) === false) {
                        $response['message'] = "Invalid file type. Only doc, docx and pdf files allowed!";
                        $errors[] = 0;
                        exit;
                    }

                    if ($file_size > 5242880) {
                        $response['message'] = "File should be less than 5mb in size!";
                        $errors[] = 0;
                        exit;
                    }

                    if (empty($errors) == true) {
                        $file_path =  "../documents/claims/" . $email . '----' . $file_name . '----' . $claim_id;
                        $file_name = $email . '-----' . $file_name . '----' . $claim_id;
                        if (move_uploaded_file($file_tmp, $file_path)) {
                            $insert = $db->query("INSERT INTO claims_life(`full_name`,`phone`,`email`,`location`,`life_claim_type`,`completed_form`,`national_id_passport_number`,`hospital_dishcharge_summary`,`hospital_invoice_receipt`) 
                                                VALUES('$full_name','$phone','$email','$location','$life_claim_type','$file_name','1','2','3')  ");
                            if ($insert) {
                                $response['message'] = 'success';
                            } else {
                                echo "An error occured please try again. " . mysqli_error($db);
                            }
                        } else {
                            echo 'An error occurred while uploading the file. Make sure it\'s a valid file and it\'s less than 5 mb';
                        }
                    } else {
                        print_r($errors);
                    }
                    echo json_encode($response);
                    break;

                default:
                    # code...
                    break;
            }
        }
        break;

    default:
        # code...
        break;
}
