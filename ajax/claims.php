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
                case 'claim_form_hospital_cash':
                    $life_claim_type = 'Hospital Cash Claim';
                    $claim_id = randomstring(10);
                    // completed form
                    $claim_form_hospital_cash_file_name = $_FILES['claim_form_hospital_cash']['name'];
                    $claim_form_hospital_cash_file_size = $_FILES['claim_form_hospital_cash']['size'];
                    $claim_form_hospital_cash_file_tmp = $_FILES['claim_form_hospital_cash']['tmp_name'];
                    $claim_form_hospital_cash_file_type = $_FILES['claim_form_hospital_cash']['type'];

                    // national id
                    $national_id_file_name = $_FILES['national_id']['name'];
                    $national_id_file_size = $_FILES['national_id']['size'];
                    $national_id_file_tmp = $_FILES['national_id']['tmp_name'];
                    $national_id_file_type = $_FILES['national_id']['type'];
                    // hospital discharge summary
                    $hospital_discharge_summary_file_name = $_FILES['hospital_discharge_summary']['name'];
                    $hospital_discharge_summary_file_tmp = $_FILES['hospital_discharge_summary']['tmp_name'];
                    $hospital_discharge_summary_file_size = $_FILES['hospital_discharge_summary']['size'];
                    $hospital_discharge_summary_file_type = $_FILES['hospital_discharge_summary']['type'];

                    // invoice
                    $invoice_file_name = $_FILES['invoice']['name'];
                    $invoice_file_size = $_FILES['invoice']['size'];
                    $invoice_file_tmp = $_FILES['invoice']['tmp_name'];
                    $invoice_file_type = $_FILES['invoice']['type'];

                    $claim_form_hospital_cash_file_ext = explode('.', $claim_form_hospital_cash_file_name);
                    $claim_form_hospital_cash_file_ext = end($claim_form_hospital_cash_file_ext);
                    $claim_form_hospital_cash_file_ext = strtolower($claim_form_hospital_cash_file_ext);
                    $extensions = array("doc", "docx", "pdf", "jpg", "jpeg");

                    if (in_array($claim_form_hospital_cash_file_ext, $extensions) === false) {
                        $response['message'] = "Invalid file type. Only doc, docx and pdf files allowed!";
                        $errors[] = 0;
                    }

                    if ($claim_form_hospital_cash_file_size > 5242880) {
                        $response['message'] = "File should be less than 5MB in size!";
                        $errors[] = 0;
                    }
                    if (empty($errors) == true) {
                        $file_path =  "../documents/claims/" . $email . '----' . $claim_id . '----' . $claim_form_hospital_cash_file_name;
                        $claim_form_hospital_cash_file_name = $email . '-----' . $claim_id . '----' . $claim_form_hospital_cash_file_name;
                        if (move_uploaded_file($claim_form_hospital_cash_file_tmp, $file_path)) {
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`life_claim_type`,`completed_form`,`national_id_passport_number`,`hospital_dishcharge_summary`,`hospital_invoice_receipt`,`created_at`) 
                                                VALUES('$claim_id','$full_name','$phone','$email','$location','$life_claim_type','$claim_form_hospital_cash_file_name','1','2','3','$created_at')  ");
                            if ($insert) {
                                $response['message'] = 'success';
                            } else {
                                $response['message'] = "An error occurred. Please try again!";
                                //  mysqli_error($db);
                            }
                        } else {
                            $response['message'] = 'An error occurred while uploading the file. Make sure it\'s a valid file and it\'s less than 5 MB!';
                        }
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
