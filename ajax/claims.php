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

                    $claim_form_hospital_cash_file_ext = explode('.', $claim_form_hospital_cash_file_name);
                    $claim_form_hospital_cash_file_ext = end($claim_form_hospital_cash_file_ext);
                    $claim_form_hospital_cash_file_ext = strtolower($claim_form_hospital_cash_file_ext);

                    // national id
                    $national_id_file_name = $_FILES['national_id']['name'];
                    $national_id_file_size = $_FILES['national_id']['size'];
                    $national_id_file_tmp = $_FILES['national_id']['tmp_name'];
                    $national_id_file_type = $_FILES['national_id']['type'];

                    $national_id_file_ext = explode('.', $national_id_file_name);
                    $national_id_file_ext = end($national_id_file_ext);
                    $national_id_file_ext = strtolower($national_id_file_ext);



                    // hospital discharge summary
                    $hospital_discharge_summary_file_name = $_FILES['hospital_discharge_summary']['name'];
                    $hospital_discharge_summary_file_tmp = $_FILES['hospital_discharge_summary']['tmp_name'];
                    $hospital_discharge_summary_file_size = $_FILES['hospital_discharge_summary']['size'];
                    $hospital_discharge_summary_file_type = $_FILES['hospital_discharge_summary']['type'];

                    $hospital_discharge_summary_file_ext = explode('.', $hospital_discharge_summary_file_name);
                    $hospital_discharge_summary_file_ext = end($hospital_discharge_summary_file_ext);
                    $hospital_discharge_summary_file_ext = strtolower($hospital_discharge_summary_file_ext);

                    // invoice
                    $invoice_file_name = $_FILES['invoice']['name'];
                    $invoice_file_size = $_FILES['invoice']['size'];
                    $invoice_file_tmp = $_FILES['invoice']['tmp_name'];
                    $invoice_file_type = $_FILES['invoice']['type'];

                    $invoice_file_ext = explode('.', $invoice_file_name);
                    $invoice_file_ext = end($invoice_file_ext);
                    $invoice_file_ext = strtolower($invoice_file_ext);




                    $extensions = array("doc", "docx", "pdf", "jpg", "jpeg");

                    if (
                        in_array($claim_form_hospital_cash_file_ext, $extensions) === false ||
                        in_array($national_id_file_ext, $extensions) === false ||
                        in_array($hospital_discharge_summary_file_ext, $extensions) === false ||
                        in_array($invoice_file_ext, $extensions) === false
                    ) {
                        $response['message'] = "Invalid file type. Only doc, docx and pdf files allowed!";
                        $errors[] = 0;
                    }

                    if ($claim_form_hospital_cash_file_size > 5242880 || $national_id_file_size > 5242880 || $hospital_discharge_summary_file_size > 5242880 || $invoice_file_size > 5242880) {
                        $response['message'] = "Files should be less than 5MB each!";
                        $errors[] = 0;
                    }

                    if (empty($errors) == true) {
                        $claim_form_hospital_cash_file_name = $email . '-----' . $claim_id . '----' . 'completed form' . '----' . $claim_form_hospital_cash_file_name;
                        $national_id_file_name = $email . '-----' . $claim_id . '----' . 'national_id' . '----' . $national_id_file_name;
                        $hospital_discharge_summary_file_name = $email . '-----' . $claim_id . '----' . 'hospital discharge summary' . '----' . $hospital_discharge_summary_file_name;
                        $invoice_file_name = $email . '-----' . $claim_id . '----' . 'invoice' . '----' . $invoice_file_name;

                        $claim_form_hospital_cash_file_path =  "../documents/claims/" . $claim_form_hospital_cash_file_name;
                        $national_id_file_path =  "../documents/claims/" . $national_id_file_name;
                        $hospital_discharge_summary_file_path =  "../documents/claims/" . $hospital_discharge_summary_file_name;
                        $invoice_file_path =  "../documents/claims/" . $invoice_file_name;



                        if (
                            move_uploaded_file($claim_form_hospital_cash_file_tmp, $claim_form_hospital_cash_file_path) &&
                            move_uploaded_file($hospital_discharge_summary_file_tmp, $hospital_discharge_summary_file_path)  &&
                            move_uploaded_file($national_id_file_tmp, $national_id_file_path)  &&
                            move_uploaded_file($invoice_file_tmp, $invoice_file_path)
                        ) {
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`life_claim_type`,`completed_form`,`national_id_passport`,`hospital_dishcharge_summary`,`hospital_invoice_receipt`,`created_at`) 
                                                VALUES('$claim_id','$full_name','$phone','$email','$location','$life_claim_type','$claim_form_hospital_cash_file_name',' $national_id_file_name','$hospital_discharge_summary_file_name','$invoice_file_name','$created_at')  ");
                            if ($insert) {
                                $response['message'] = 'success';
                            } else {
                                $response['message'] = "An error occurred. Please try again! " . mysqli_error($db);
                                //  mysqli_error($db);
                            }
                        } else {
                            $response['message'] = 'An error occurred while uploading the file. Make sure it\'s a valid file and it\'s less than 5 MB!';
                        }
                    }
                    echo json_encode($response);
                    break;

                case 'claim_form_last_expense':
                    $life_claim_type = 'Last Expense Claim';
                    $claim_id = randomstring(10);



                    // completed form
                    $claim_form_last_expense_file_name = $_FILES['claim_form_last_expense']['name'];
                    $claim_form_last_expense_file_size = $_FILES['claim_form_last_expense']['size'];
                    $claim_form_last_expense_file_tmp = $_FILES['claim_form_last_expense']['tmp_name'];
                    $claim_form_last_expense_file_type = $_FILES['claim_form_last_expense']['type'];

                    $claim_form_last_expense_file_ext = explode('.', $claim_form_last_expense_file_name);
                    $claim_form_last_expense_file_ext = end($claim_form_last_expense_file_ext);
                    $claim_form_last_expense_file_ext = strtolower($claim_form_last_expense_file_ext);

                    // national id
                    $national_id_file_name = $_FILES['national_id']['name'];
                    $national_id_file_size = $_FILES['national_id']['size'];
                    $national_id_file_tmp = $_FILES['national_id']['tmp_name'];
                    $national_id_file_type = $_FILES['national_id']['type'];

                    $national_id_file_ext = explode('.', $national_id_file_name);
                    $national_id_file_ext = end($national_id_file_ext);
                    $national_id_file_ext = strtolower($national_id_file_ext);



                    // hospital discharge summary
                    $original_burial_permit_file_name = $_FILES['original_burial_permit']['name'];
                    $original_burial_permit_file_tmp = $_FILES['original_burial_permit']['tmp_name'];
                    $original_burial_permit_file_size = $_FILES['original_burial_permit']['size'];
                    $original_burial_permit_file_type = $_FILES['original_burial_permit']['type'];

                    $original_burial_permit_file_ext = explode('.', $original_burial_permit_file_name);
                    $original_burial_permit_file_ext = end($original_burial_permit_file_ext);
                    $original_burial_permit_file_ext = strtolower($original_burial_permit_file_ext);


                    $extensions = array("doc", "docx", "pdf", "jpg", "jpeg");

                    if (
                        in_array($claim_form_last_expense_file_ext, $extensions) === false ||
                        in_array($national_id_file_ext, $extensions) === false ||
                        in_array($original_burial_permit_file_ext, $extensions) === false
                    ) {
                        $response['message'] = "Invalid file type. Only doc, docx and pdf files allowed!";
                        $errors[] = 0;
                    }

                    if ($claim_form_last_expense_file_size > 5242880 || $national_id_file_size > 5242880 || $original_burial_permit_file_size > 5242880) {
                        $response['message'] = "Files should be less than 5MB each!";
                        $errors[] = 0;
                    }

                    if (empty($errors) == true) {
                        $claim_form_last_expense_file_name = $email . '-----' . $claim_id . '----' . 'completed form' . '----' . $claim_form_last_expense_file_name;
                        $national_id_file_name = $email . '-----' . $claim_id . '----' . 'national_id' . '----' . $national_id_file_name;
                        $original_burial_permit_file_name = $email . '-----' . $claim_id . '----' . 'Original Burial Permit' . '----' . $original_burial_permit_file_name;

                        $claim_form_last_expense_file_path =  "../documents/claims/" . $claim_form_last_expense_file_name;
                        $national_id_file_path =  "../documents/claims/" . $national_id_file_name;
                        $original_burial_permit_file_path =  "../documents/claims/" . $original_burial_permit_file_name;



                        if (
                            move_uploaded_file($claim_form_last_expense_file_tmp, $claim_form_last_expense_file_path) &&
                            move_uploaded_file($original_burial_permit_file_tmp, $original_burial_permit_file_path)  &&
                            move_uploaded_file($national_id_file_tmp, $national_id_file_path)
                        ) {
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`life_claim_type`,`completed_form`,`national_id_passport`,`original_burial_permit`,`created_at`) 
                                                    VALUES('$claim_id','$full_name','$phone','$email','$location','$life_claim_type','$claim_form_last_expense_file_name',' $national_id_file_name','$original_burial_permit_file_name','$created_at')  ");
                            if ($insert) {
                                $response['message'] = 'success';
                            } else {
                                $response['message'] = "An error occurred. Please try again! " . mysqli_error($db);
                                //  mysqli_error($db);
                            }
                        } else {
                            $response['message'] = 'An error occurred while uploading the file. Make sure it\'s a valid file and it\'s less than 5 MB!';
                        }
                    }
                    echo json_encode($response);
                    break;

                case 'claim_form_critical_illness':
                    $life_claim_type = 'Critical Illness Claim';
                    $claim_id = randomstring(10);
                    // completed form
                    $claim_form_critical_illness_file_name = $_FILES['claim_form_critical_illness']['name'];
                    $claim_form_critical_illness_file_size = $_FILES['claim_form_critical_illness']['size'];
                    $claim_form_critical_illness_file_tmp = $_FILES['claim_form_critical_illness']['tmp_name'];
                    $claim_form_critical_illness_file_type = $_FILES['claim_form_critical_illness']['type'];

                    $claim_form_critical_illness_file_ext = explode('.', $claim_form_critical_illness_file_name);
                    $claim_form_critical_illness_file_ext = end($claim_form_critical_illness_file_ext);
                    $claim_form_critical_illness_file_ext = strtolower($claim_form_critical_illness_file_ext);

                    // national id
                    $national_id_file_name = $_FILES['national_id']['name'];
                    $national_id_file_size = $_FILES['national_id']['size'];
                    $national_id_file_tmp = $_FILES['national_id']['tmp_name'];
                    $national_id_file_type = $_FILES['national_id']['type'];

                    $national_id_file_ext = explode('.', $national_id_file_name);
                    $national_id_file_ext = end($national_id_file_ext);
                    $national_id_file_ext = strtolower($national_id_file_ext);



                    // hospital discharge summary
                    $medical_report_file_name = $_FILES['medical_report']['name'];
                    $medical_report_file_tmp = $_FILES['medical_report']['tmp_name'];
                    $medical_report_file_size = $_FILES['medical_report']['size'];
                    $medical_report_file_type = $_FILES['medical_report']['type'];

                    $medical_report_file_ext = explode('.', $medical_report_file_name);
                    $medical_report_file_ext = end($medical_report_file_ext);
                    $medical_report_file_ext = strtolower($medical_report_file_ext);

                    // invoice
                    $payslips_file_name = $_FILES['payslips']['name'];
                    $payslips_file_size = $_FILES['payslips']['size'];
                    $payslips_file_tmp = $_FILES['payslips']['tmp_name'];
                    $payslips_file_type = $_FILES['payslips']['type'];

                    $payslips_file_ext = explode('.', $payslips_file_name);
                    $payslips_file_ext = end($payslips_file_ext);
                    $payslips_file_ext = strtolower($payslips_file_ext);




                    $extensions = array("doc", "docx", "pdf", "jpg", "jpeg");

                    if (
                        in_array($claim_form_critical_illness_file_ext, $extensions) === false ||
                        in_array($national_id_file_ext, $extensions) === false ||
                        in_array($medical_report_file_ext, $extensions) === false ||
                        in_array($payslips_file_ext, $extensions) === false
                    ) {
                        $response['message'] = "Invalid file type. Only doc, docx and pdf files allowed!";
                        $errors[] = 0;
                    }

                    if ($claim_form_critical_illness_file_size > 5242880 || $national_id_file_size > 5242880 || $medical_report_file_size > 5242880 || $payslips_file_size > 5242880) {
                        $response['message'] = "Files should be less than 5MB each!";
                        $errors[] = 0;
                    }

                    if (empty($errors) == true) {
                        $claim_form_critical_illness_file_name = $email . '-----' . $claim_id . '----' . 'completed form' . '----' . $claim_form_critical_illness_file_name;
                        $national_id_file_name = $email . '-----' . $claim_id . '----' . 'national_id' . '----' . $national_id_file_name;
                        $medical_report_file_name = $email . '-----' . $claim_id . '----' . 'medical report' . '----' . $medical_report_file_name;
                        $payslips_file_name = $email . '-----' . $claim_id . '----' . 'payslips' . '----' . $payslips_file_name;

                        $claim_form_critical_illness_file_path =  "../documents/claims/" . $claim_form_critical_illness_file_name;
                        $national_id_file_path =  "../documents/claims/" . $national_id_file_name;
                        $medical_report_file_path =  "../documents/claims/" . $medical_report_file_name;
                        $payslips_file_path =  "../documents/claims/" . $payslips_file_name;



                        if (
                            move_uploaded_file($claim_form_critical_illness_file_tmp, $claim_form_critical_illness_file_path) &&
                            move_uploaded_file($medical_report_file_tmp, $medical_report_file_path)  &&
                            move_uploaded_file($national_id_file_tmp, $national_id_file_path)  &&
                            move_uploaded_file($payslips_file_tmp, $payslips_file_path)
                        ) {
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`life_claim_type`,`completed_form`,`national_id_passport`,`medical_report`,`payslips`,`created_at`) 
                            VALUES('$claim_id','$full_name','$phone','$email','$location','$life_claim_type','$claim_form_critical_illness_file_name',' $national_id_file_name','$medical_report_file_name','$payslips_file_name','$created_at')  ");
                            if ($insert) {
                                $response['message'] = 'success';
                            } else {
                                $response['message'] = 'An error occurred. Please try again! ' . mysqli_error($db);
                                //  mysqli_error($db);
                            }
                        } else {
                            $response['message'] = 'An error occurred while uploading the file. Make sure it\'s a valid file and it\'s less than 5 MB!';
                        }
                    }
                    echo json_encode($response);
                    break;

                case 'claim_form_death_claim':
                    $life_claim_type = 'Death Claim';
                    $claim_id = randomstring(10);

                    // completed form
                    $claim_form_death_claim_file_name = $_FILES['claim_form_death_claim']['name'];
                    $claim_form_death_claim_file_size = $_FILES['claim_form_death_claim']['size'];
                    $claim_form_death_claim_file_tmp = $_FILES['claim_form_death_claim']['tmp_name'];
                    $claim_form_death_claim_file_type = $_FILES['claim_form_death_claim']['type'];

                    $claim_form_death_claim_file_ext = explode('.', $claim_form_death_claim_file_name);
                    $claim_form_death_claim_file_ext = end($claim_form_death_claim_file_ext);
                    $claim_form_death_claim_file_ext = strtolower($claim_form_death_claim_file_ext);

                    // national id
                    $national_id_file_name = $_FILES['national_id']['name'];
                    $national_id_file_size = $_FILES['national_id']['size'];
                    $national_id_file_tmp = $_FILES['national_id']['tmp_name'];
                    $national_id_file_type = $_FILES['national_id']['type'];

                    $national_id_file_ext = explode('.', $national_id_file_name);
                    $national_id_file_ext = end($national_id_file_ext);
                    $national_id_file_ext = strtolower($national_id_file_ext);

                    // policy document
                    $policy_document_file_name = $_FILES['policy_document']['name'];
                    $policy_document_file_tmp = $_FILES['policy_document']['tmp_name'];
                    $policy_document_file_size = $_FILES['policy_document']['size'];
                    $policy_document_file_type = $_FILES['policy_document']['type'];

                    $policy_document_file_ext = explode('.', $policy_document_file_name);
                    $policy_document_file_ext = end($policy_document_file_ext);
                    $policy_document_file_ext = strtolower($policy_document_file_ext);

                    //original burial permit
                    $original_burial_permit_file_name = $_FILES['original_burial_permit']['name'];
                    $original_burial_permit_file_tmp = $_FILES['original_burial_permit']['tmp_name'];
                    $original_burial_permit_file_size = $_FILES['original_burial_permit']['size'];
                    $original_burial_permit_file_type = $_FILES['original_burial_permit']['type'];

                    $original_burial_permit_file_ext = explode('.', $original_burial_permit_file_name);
                    $original_burial_permit_file_ext = end($original_burial_permit_file_ext);
                    $original_burial_permit_file_ext = strtolower($original_burial_permit_file_ext);

                    //post_mortem_report
                    $post_mortem_report_file_name = $_FILES['post_mortem_report']['name'];
                    $post_mortem_report_file_tmp = $_FILES['post_mortem_report']['tmp_name'];
                    $post_mortem_report_file_size = $_FILES['post_mortem_report']['size'];
                    $post_mortem_report_file_type = $_FILES['post_mortem_report']['type'];

                    $post_mortem_report_file_ext = explode('.', $post_mortem_report_file_name);
                    $post_mortem_report_file_ext = end($post_mortem_report_file_ext);
                    $post_mortem_report_file_ext = strtolower($post_mortem_report_file_ext);




                    $extensions = array("doc", "docx", "pdf", "jpg", "jpeg");

                    if (
                        in_array($claim_form_death_claim_file_ext, $extensions) === false ||
                        in_array($national_id_file_ext, $extensions) === false ||
                        in_array($original_burial_permit_file_ext, $extensions) === false ||
                        in_array($policy_document_file_ext, $extensions) === false ||
                        in_array($post_mortem_report_file_ext, $extensions) === false
                    ) {
                        $response['message'] = "Invalid file type. Only doc, docx and pdf files allowed!";
                        $errors[] = 0;
                    }

                    if ($claim_form_death_claim_file_size > 5242880 || $national_id_file_size > 5242880 || $original_burial_permit_file_size > 5242880 || $policy_document_file_size > 5242880 || $post_mortem_report_file_size > 5242880) {
                        $response['message'] = "Files should be less than 5MB each!";
                        $errors[] = 0;
                    }

                    if (empty($errors) == true) {
                        $claim_form_death_claim_file_name = $email . '-----' . $claim_id . '----' . 'completed form' . '----' . $claim_form_death_claim_file_name;
                        $national_id_file_name = $email . '-----' . $claim_id . '----' . 'national_id' . '----' . $national_id_file_name;
                        $original_burial_permit_file_name = $email . '-----' . $claim_id . '----' . 'original burial permit' . '----' . $original_burial_permit_file_name;
                        $policy_document_file_name = $email . '-----' . $claim_id . '----' . 'policy document' . '----' . $policy_document_file_name;
                        $post_mortem_report_file_name = $email . '-----' . $claim_id . '----' . 'post mortem report' . '----' . $post_mortem_report_file_name;

                        $claim_form_death_claim_file_path =  "../documents/claims/" . $claim_form_death_claim_file_name;
                        $national_id_file_path =  "../documents/claims/" . $national_id_file_name;
                        $original_burial_permit_file_path =  "../documents/claims/" . $original_burial_permit_file_name;
                        $policy_document_file_path =  "../documents/claims/" . $policy_document_file_name;
                        $post_mortem_report_file_path =  "../documents/claims/" . $post_mortem_report_file_name;



                        if (
                            move_uploaded_file($claim_form_death_claim_file_tmp, $claim_form_death_claim_file_path) &&
                            move_uploaded_file($original_burial_permit_file_tmp, $original_burial_permit_file_path)  &&
                            move_uploaded_file($national_id_file_tmp, $national_id_file_path) &&
                            move_uploaded_file($policy_document_file_tmp, $policy_document_file_path) &&
                            move_uploaded_file($post_mortem_report_file_tmp, $post_mortem_report_file_path)
                        ) {
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`life_claim_type`,`completed_form`,`national_id_passport`,`policy_document`,`post_mortem_report`,`original_burial_permit`,`created_at`) 
                                                    VALUES('$claim_id','$full_name','$phone','$email','$location','$life_claim_type','$claim_form_death_claim_file_name',' $national_id_file_name','$policy_document_file_name','$post_mortem_report_file_name','$original_burial_permit_file_name','$created_at')  ");
                            if ($insert) {
                                $response['message'] = 'success';
                            } else {
                                $response['message'] = "An error occurred. Please try again! " . mysqli_error($db);
                                //  mysqli_error($db);
                            }
                        } else {
                            $response['message'] = 'An error occurred while uploading the file. Make sure it\'s a valid file and it\'s less than 5 MB!';
                        }
                    }
                    echo json_encode($response);
                    break;

                case 'policy_document_maturity':
                    $life_claim_type = 'Maturity Claim';
                    $claim_id = randomstring(10);

                    //policy document maturity
                    $policy_document_maturity_file_name = $_FILES['policy_document_maturity']['name'];
                    $policy_document_maturity_file_size = $_FILES['policy_document_maturity']['size'];
                    $policy_document_maturity_file_tmp = $_FILES['policy_document_maturity']['tmp_name'];
                    $policy_document_maturity_file_type = $_FILES['policy_document_maturity']['type'];

                    $policy_document_maturity_file_ext = explode('.', $policy_document_maturity_file_name);
                    $policy_document_maturity_file_ext = end($policy_document_maturity_file_ext);
                    $policy_document_maturity_file_ext = strtolower($policy_document_maturity_file_ext);

                    // national id
                    $national_id_file_name = $_FILES['national_id']['name'];
                    $national_id_file_size = $_FILES['national_id']['size'];
                    $national_id_file_tmp = $_FILES['national_id']['tmp_name'];
                    $national_id_file_type = $_FILES['national_id']['type'];

                    $national_id_file_ext = explode('.', $national_id_file_name);
                    $national_id_file_ext = end($national_id_file_ext);
                    $national_id_file_ext = strtolower($national_id_file_ext);


                    $extensions = array("doc", "docx", "pdf", "jpg", "jpeg");

                    if (
                        in_array($policy_document_maturity_file_ext, $extensions) === false ||
                        in_array($national_id_file_ext, $extensions) === false
                    ) {
                        $response['message'] = "Invalid file type. Only doc, docx and pdf files allowed!";
                        $errors[] = 0;
                    }

                    if ($policy_document_maturity_file_size > 5242880 || $national_id_file_size > 5242880) {
                        $response['message'] = "Files should be less than 5MB each!";
                        $errors[] = 0;
                    }

                    if (empty($errors) == true) {
                        $policy_document_maturity_file_name = $email . '-----' . $claim_id . '----' . 'policy document' . '----' . $policy_document_maturity_file_name;
                        $national_id_file_name = $email . '-----' . $claim_id . '----' . 'national id' . '----' . $national_id_file_name;


                        $policy_document_maturity_file_path =  "../documents/claims/" . $policy_document_maturity_file_name;
                        $national_id_file_path =  "../documents/claims/" . $national_id_file_name;

                        if (
                            move_uploaded_file($policy_document_maturity_file_tmp, $policy_document_maturity_file_path) &&
                            move_uploaded_file($national_id_file_tmp, $national_id_file_path)
                        ) {
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`life_claim_type`,`policy_document`,`national_id_passport`,`created_at`) 
                                                    VALUES('$claim_id','$full_name','$phone','$email','$location','$life_claim_type','$policy_document_maturity_file_name',' $national_id_file_name','$created_at')  ");
                            if ($insert) {
                                $response['message'] = 'success';
                            } else {
                                $response['message'] = "An error occurred. Please try again! " . mysqli_error($db);
                                //  mysqli_error($db);
                            }
                        } else {
                            $response['message'] = 'An error occurred while uploading the file. Make sure it\'s a valid file and it\'s less than 5 MB!';
                        }
                    }
                    echo json_encode($response);
                    break;


                case 'policy_document_partial_maturity':
                    $life_claim_type = 'Partial Maturity Claim';
                    $claim_id = randomstring(10);

                    //policy document maturity
                    $policy_document_maturity_file_name = $_FILES['policy_document_partial_maturity']['name'];
                    $policy_document_maturity_file_size = $_FILES['policy_document_partial_maturity']['size'];
                    $policy_document_maturity_file_tmp = $_FILES['policy_document_partial_maturity']['tmp_name'];
                    $policy_document_maturity_file_type = $_FILES['policy_document_partial_maturity']['type'];

                    $policy_document_maturity_file_ext = explode('.', $policy_document_maturity_file_name);
                    $policy_document_maturity_file_ext = end($policy_document_maturity_file_ext);
                    $policy_document_maturity_file_ext = strtolower($policy_document_maturity_file_ext);


                    $extensions = array("doc", "docx", "pdf", "jpg", "jpeg");

                    if (
                        in_array($policy_document_maturity_file_ext, $extensions) === false
                    ) {
                        $response['message'] = "Invalid file type. Only doc, docx and pdf files allowed!";
                        $errors[] = 0;
                    }

                    if ($policy_document_maturity_file_size > 5242880) {
                        $response['message'] = "Files should be less than 5MB each!";
                        $errors[] = 0;
                    }

                    if (empty($errors) == true) {
                        $policy_document_maturity_file_name = $email . '-----' . $claim_id . '----' . 'policy document' . '----' . $policy_document_maturity_file_name;

                        $policy_document_maturity_file_path =  "../documents/claims/" . $policy_document_maturity_file_name;

                        if (move_uploaded_file($policy_document_maturity_file_tmp, $policy_document_maturity_file_path)) {
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`life_claim_type`,`policy_document`,`created_at`) 
                                                    VALUES('$claim_id','$full_name','$phone','$email','$location','$life_claim_type','$policy_document_maturity_file_name','$created_at')  ");
                            if ($insert) {
                                $response['message'] = 'success';
                            } else {
                                $response['message'] = "An error occurred. Please try again! " . mysqli_error($db);
                                //  mysqli_error($db);
                            }
                        } else {
                            $response['message'] = 'An error occurred while uploading the file. Make sure it\'s a valid file and it\'s less than 5 MB!';
                        }
                    }
                    echo json_encode($response);
                    break;

                case 'life_group_claim':
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
                        $location = ((isset($_POST['location'])) ? filter_var(mysqli_real_escape_string($db, $_POST['location']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : null);

                        if (isset($_FILES['claim_form_last_expense'])) {
                            $form =  'claim_form_last_expense';
                        } elseif (isset($_FILES['claim_form_group_life_benefit'])) {
                            $form = 'claim_form_group_life_benefit';
                        } elseif (isset($_FILES['claim_form_critical_illness'])) {
                            $form = 'claim_form_critical_illness';
                        } elseif (isset($_FILES['claim_form_hospital_cash_claim'])) {
                            $form = 'claim_form_hospital_cash_claim';
                        } elseif (isset($_FILES['notification_letter_permanent_total_disability'])) {
                            $form = 'notification_letter_permanent_total_disability';
                        } elseif (isset($_FILES['dosh_occupational'])) {
                            $form = 'dosh_occupational';
                        } else {
                            $form = 'invalid selection';
                        }

                        switch ($form) {
                            case 'claim_form_last_expense':
                                $life_claim_type = 'Last Expense Claim';
                                $claim_id = randomstring(10);



                                // completed form
                                $claim_form_last_expense_file_name = $_FILES['claim_form_last_expense']['name'];
                                $claim_form_last_expense_file_size = $_FILES['claim_form_last_expense']['size'];
                                $claim_form_last_expense_file_tmp = $_FILES['claim_form_last_expense']['tmp_name'];
                                $claim_form_last_expense_file_type = $_FILES['claim_form_last_expense']['type'];

                                $claim_form_last_expense_file_ext = explode('.', $claim_form_last_expense_file_name);
                                $claim_form_last_expense_file_ext = end($claim_form_last_expense_file_ext);
                                $claim_form_last_expense_file_ext = strtolower($claim_form_last_expense_file_ext);

                                // national id
                                $national_id_file_name = $_FILES['national_id']['name'];
                                $national_id_file_size = $_FILES['national_id']['size'];
                                $national_id_file_tmp = $_FILES['national_id']['tmp_name'];
                                $national_id_file_type = $_FILES['national_id']['type'];

                                $national_id_file_ext = explode('.', $national_id_file_name);
                                $national_id_file_ext = end($national_id_file_ext);
                                $national_id_file_ext = strtolower($national_id_file_ext);



                                // hospital discharge summary
                                $original_burial_permit_file_name = $_FILES['original_burial_permit']['name'];
                                $original_burial_permit_file_tmp = $_FILES['original_burial_permit']['tmp_name'];
                                $original_burial_permit_file_size = $_FILES['original_burial_permit']['size'];
                                $original_burial_permit_file_type = $_FILES['original_burial_permit']['type'];

                                $original_burial_permit_file_ext = explode('.', $original_burial_permit_file_name);
                                $original_burial_permit_file_ext = end($original_burial_permit_file_ext);
                                $original_burial_permit_file_ext = strtolower($original_burial_permit_file_ext);


                                $extensions = array("doc", "docx", "pdf", "jpg", "jpeg");

                                if (
                                    in_array($claim_form_last_expense_file_ext, $extensions) === false ||
                                    in_array($national_id_file_ext, $extensions) === false ||
                                    in_array($original_burial_permit_file_ext, $extensions) === false
                                ) {
                                    $response['message'] = "Invalid file type. Only doc, docx and pdf files allowed!";
                                    $errors[] = 0;
                                }

                                if ($claim_form_last_expense_file_size > 5242880 || $national_id_file_size > 5242880 || $original_burial_permit_file_size > 5242880) {
                                    $response['message'] = "Files should be less than 5MB each!";
                                    $errors[] = 0;
                                }

                                if (empty($errors) == true) {
                                    $claim_form_last_expense_file_name = $email . '-----' . $claim_id . '----' . 'completed form' . '----' . $claim_form_last_expense_file_name;
                                    $national_id_file_name = $email . '-----' . $claim_id . '----' . 'national_id' . '----' . $national_id_file_name;
                                    $original_burial_permit_file_name = $email . '-----' . $claim_id . '----' . 'Original Burial Permit' . '----' . $original_burial_permit_file_name;

                                    $claim_form_last_expense_file_path =  "../documents/claims/" . $claim_form_last_expense_file_name;
                                    $national_id_file_path =  "../documents/claims/" . $national_id_file_name;
                                    $original_burial_permit_file_path =  "../documents/claims/" . $original_burial_permit_file_name;



                                    if (
                                        move_uploaded_file($claim_form_last_expense_file_tmp, $claim_form_last_expense_file_path) &&
                                        move_uploaded_file($original_burial_permit_file_tmp, $original_burial_permit_file_path)  &&
                                        move_uploaded_file($national_id_file_tmp, $national_id_file_path)
                                    ) {
                                        $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`life_claim_type`,`completed_form`,`national_id_passport`,`original_burial_permit`,`created_at`) 
                                                            VALUES('$claim_id','$full_name','$phone','$email','$location','$life_claim_type','$claim_form_last_expense_file_name',' $national_id_file_name','$original_burial_permit_file_name','$created_at')  ");
                                        if ($insert) {
                                            $response['message'] = 'success';
                                        } else {
                                            $response['message'] = "An error occurred. Please try again! " . mysqli_error($db);
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
        }
        break;

    default:
        # code...
        break;
}
