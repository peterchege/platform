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
                        $national_id_file_name = $email . '-----' . $claim_id . '----' . 'national id passport' . '----' . $national_id_file_name;
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
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`national_id_passport`,`hospital_dishcharge_summary`,`hospital_invoice_receipt`,`created_at`) 
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
                        $national_id_file_name = $email . '-----' . $claim_id . '----' . 'national id passport' . '----' . $national_id_file_name;
                        $original_burial_permit_file_name = $email . '-----' . $claim_id . '----' . 'Original Burial Permit' . '----' . $original_burial_permit_file_name;

                        $claim_form_last_expense_file_path =  "../documents/claims/" . $claim_form_last_expense_file_name;
                        $national_id_file_path =  "../documents/claims/" . $national_id_file_name;
                        $original_burial_permit_file_path =  "../documents/claims/" . $original_burial_permit_file_name;



                        if (
                            move_uploaded_file($claim_form_last_expense_file_tmp, $claim_form_last_expense_file_path) &&
                            move_uploaded_file($original_burial_permit_file_tmp, $original_burial_permit_file_path)  &&
                            move_uploaded_file($national_id_file_tmp, $national_id_file_path)
                        ) {
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`national_id_passport`,`original_burial_permit`,`created_at`) 
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



                    // medical report
                    $medical_report_file_name = $_FILES['medical_report']['name'];
                    $medical_report_file_tmp = $_FILES['medical_report']['tmp_name'];
                    $medical_report_file_size = $_FILES['medical_report']['size'];
                    $medical_report_file_type = $_FILES['medical_report']['type'];

                    $medical_report_file_ext = explode('.', $medical_report_file_name);
                    $medical_report_file_ext = end($medical_report_file_ext);
                    $medical_report_file_ext = strtolower($medical_report_file_ext);

                    // payslip
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
                        $national_id_file_name = $email . '-----' . $claim_id . '----' . 'national id passport' . '----' . $national_id_file_name;
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
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`national_id_passport`,`medical_report`,`payslips`,`created_at`) 
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
                        $national_id_file_name = $email . '-----' . $claim_id . '----' . 'national id passport' . '----' . $national_id_file_name;
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
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`national_id_passport`,`policy_document`,`post_mortem_report`,`original_burial_permit`,`created_at`) 
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
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`policy_document`,`national_id_passport`,`created_at`) 
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
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`policy_document`,`created_at`) 
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

                    break;
                default:
                    # code...
                    break;
            }
        }
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
            } elseif (isset($_FILES['claim_form_hospital_cash'])) {
                $form = 'claim_form_hospital_cash';
            } elseif (isset($_FILES['notification_letter_permanent_total_disability'])) {
                $form = 'notification_letter_permanent_total_disability';
            } elseif (isset($_FILES['dosh_one_two'])) {
                $form = 'dosh_one_two';
            } elseif (isset($_FILES['credit_death_certificate'])) {
                $form = 'credit_death_certificate';
            } else {
                $form = 'invalid selection';
            }


            switch ($form) {
                case 'claim_form_last_expense':
                    $life_claim_type = 'Group Last Expense Claim';
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



                    // original burial permit
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
                        $national_id_file_name = $email . '-----' . $claim_id . '----' . 'national id passport' . '----' . $national_id_file_name;
                        $original_burial_permit_file_name = $email . '-----' . $claim_id . '----' . 'Original Burial Permit' . '----' . $original_burial_permit_file_name;

                        $claim_form_last_expense_file_path =  "../documents/claims/" . $claim_form_last_expense_file_name;
                        $national_id_file_path =  "../documents/claims/" . $national_id_file_name;
                        $original_burial_permit_file_path =  "../documents/claims/" . $original_burial_permit_file_name;



                        if (
                            move_uploaded_file($claim_form_last_expense_file_tmp, $claim_form_last_expense_file_path) &&
                            move_uploaded_file($original_burial_permit_file_tmp, $original_burial_permit_file_path)  &&
                            move_uploaded_file($national_id_file_tmp, $national_id_file_path)
                        ) {
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`national_id_passport`,`original_burial_permit`,`created_at`) 
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

                case 'claim_form_group_life_benefit':
                    $life_claim_type = 'Group Life Benefit Claim';
                    $claim_id = randomstring(10);
                    // completed form
                    $claim_form_group_life_benefit_file_name = $_FILES['claim_form_group_life_benefit']['name'];
                    $claim_form_group_life_benefit_file_size = $_FILES['claim_form_group_life_benefit']['size'];
                    $claim_form_group_life_benefit_file_tmp = $_FILES['claim_form_group_life_benefit']['tmp_name'];
                    $claim_form_group_life_benefit_file_type = $_FILES['claim_form_group_life_benefit']['type'];

                    $claim_form_group_life_benefit_file_ext = explode('.', $claim_form_group_life_benefit_file_name);
                    $claim_form_group_life_benefit_file_ext = end($claim_form_group_life_benefit_file_ext);
                    $claim_form_group_life_benefit_file_ext = strtolower($claim_form_group_life_benefit_file_ext);

                    // national id
                    $national_id_file_name = $_FILES['national_id']['name'];
                    $national_id_file_size = $_FILES['national_id']['size'];
                    $national_id_file_tmp = $_FILES['national_id']['tmp_name'];
                    $national_id_file_type = $_FILES['national_id']['type'];

                    $national_id_file_ext = explode('.', $national_id_file_name);
                    $national_id_file_ext = end($national_id_file_ext);
                    $national_id_file_ext = strtolower($national_id_file_ext);



                    // medical report
                    $post_mortem_report_file_name = $_FILES['post_mortem_report']['name'];
                    $post_mortem_report_file_tmp = $_FILES['post_mortem_report']['tmp_name'];
                    $post_mortem_report_file_size = $_FILES['post_mortem_report']['size'];
                    $post_mortem_report_file_type = $_FILES['post_mortem_report']['type'];

                    $post_mortem_report_file_ext = explode('.', $post_mortem_report_file_name);
                    $post_mortem_report_file_ext = end($post_mortem_report_file_ext);
                    $post_mortem_report_file_ext = strtolower($post_mortem_report_file_ext);

                    // payslip
                    $payslips_file_name = $_FILES['payslips']['name'];
                    $payslips_file_size = $_FILES['payslips']['size'];
                    $payslips_file_tmp = $_FILES['payslips']['tmp_name'];
                    $payslips_file_type = $_FILES['payslips']['type'];

                    $payslips_file_ext = explode('.', $payslips_file_name);
                    $payslips_file_ext = end($payslips_file_ext);
                    $payslips_file_ext = strtolower($payslips_file_ext);




                    $extensions = array("doc", "docx", "pdf", "jpg", "jpeg");

                    if (
                        in_array($claim_form_group_life_benefit_file_ext, $extensions) === false ||
                        in_array($national_id_file_ext, $extensions) === false ||
                        in_array($post_mortem_report_file_ext, $extensions) === false ||
                        in_array($payslips_file_ext, $extensions) === false
                    ) {
                        $response['message'] = "Invalid file type. Only doc, docx and pdf files allowed!";
                        $errors[] = 0;
                    }

                    if ($claim_form_group_life_benefit_file_size > 5242880 || $national_id_file_size > 5242880 || $post_mortem_report_file_size > 5242880 || $payslips_file_size > 5242880) {
                        $response['message'] = "Files should be less than 5MB each!";
                        $errors[] = 0;
                    }

                    if (empty($errors) == true) {
                        $claim_form_group_life_benefit_file_name = $email . '-----' . $claim_id . '----' . 'completed form' . '----' . $claim_form_group_life_benefit_file_name;
                        $national_id_file_name = $email . '-----' . $claim_id . '----' . 'national id passport' . '----' . $national_id_file_name;
                        $post_mortem_report_file_name = $email . '-----' . $claim_id . '----' . 'post mortem report' . '----' . $post_mortem_report_file_name;
                        $payslips_file_name = $email . '-----' . $claim_id . '----' . 'payslips' . '----' . $payslips_file_name;

                        $claim_form_group_life_benefit_file_path =  "../documents/claims/" . $claim_form_group_life_benefit_file_name;
                        $national_id_file_path =  "../documents/claims/" . $national_id_file_name;
                        $post_mortem_report_file_path =  "../documents/claims/" . $post_mortem_report_file_name;
                        $payslips_file_path =  "../documents/claims/" . $payslips_file_name;



                        if (
                            move_uploaded_file($claim_form_group_life_benefit_file_tmp, $claim_form_group_life_benefit_file_path) &&
                            move_uploaded_file($post_mortem_report_file_tmp, $post_mortem_report_file_path)  &&
                            move_uploaded_file($national_id_file_tmp, $national_id_file_path)  &&
                            move_uploaded_file($payslips_file_tmp, $payslips_file_path)
                        ) {
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`national_id_passport`,`post_mortem_report`,`payslips`,`created_at`) 
                                VALUES('$claim_id','$full_name','$phone','$email','$location','$life_claim_type','$claim_form_group_life_benefit_file_name',' $national_id_file_name','$post_mortem_report_file_name','$payslips_file_name','$created_at')  ");
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

                default:
                    # code...
                    break;

                case 'claim_form_critical_illness':
                    $life_claim_type = 'Group Critical Illness Claim';
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



                    // medical report
                    $medical_report_file_name = $_FILES['medical_report']['name'];
                    $medical_report_file_tmp = $_FILES['medical_report']['tmp_name'];
                    $medical_report_file_size = $_FILES['medical_report']['size'];
                    $medical_report_file_type = $_FILES['medical_report']['type'];

                    $medical_report_file_ext = explode('.', $medical_report_file_name);
                    $medical_report_file_ext = end($medical_report_file_ext);
                    $medical_report_file_ext = strtolower($medical_report_file_ext);

                    // payslip
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
                        $national_id_file_name = $email . '-----' . $claim_id . '----' . 'national id passport' . '----' . $national_id_file_name;
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
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`national_id_passport`,`medical_report`,`payslips`,`created_at`) 
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

                case 'claim_form_hospital_cash':
                    $life_claim_type = 'Group Hospital Cash Claim';
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
                        $national_id_file_name = $email . '-----' . $claim_id . '----' . 'national id passport' . '----' . $national_id_file_name;
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
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`national_id_passport`,`hospital_dishcharge_summary`,`hospital_invoice_receipt`,`created_at`) 
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

                case 'notification_letter_permanent_total_disability':
                    $life_claim_type = 'Group Permanent Total Disability';
                    $claim_id = randomstring(10);
                    // completed form
                    $notification_letter_permanent_total_disability_file_name = $_FILES['notification_letter_permanent_total_disability']['name'];
                    $notification_letter_permanent_total_disability_file_size = $_FILES['notification_letter_permanent_total_disability']['size'];
                    $notification_letter_permanent_total_disability_file_tmp = $_FILES['notification_letter_permanent_total_disability']['tmp_name'];
                    $notification_letter_permanent_total_disability_file_type = $_FILES['notification_letter_permanent_total_disability']['type'];

                    $notification_letter_permanent_total_disability_file_ext = explode('.', $notification_letter_permanent_total_disability_file_name);
                    $notification_letter_permanent_total_disability_file_ext = end($notification_letter_permanent_total_disability_file_ext);
                    $notification_letter_permanent_total_disability_file_ext = strtolower($notification_letter_permanent_total_disability_file_ext);

                    // national id
                    $national_id_file_name = $_FILES['national_id']['name'];
                    $national_id_file_size = $_FILES['national_id']['size'];
                    $national_id_file_tmp = $_FILES['national_id']['tmp_name'];
                    $national_id_file_type = $_FILES['national_id']['type'];

                    $national_id_file_ext = explode('.', $national_id_file_name);
                    $national_id_file_ext = end($national_id_file_ext);
                    $national_id_file_ext = strtolower($national_id_file_ext);



                    // medical report
                    $medical_report_file_name = $_FILES['medical_report']['name'];
                    $medical_report_file_tmp = $_FILES['medical_report']['tmp_name'];
                    $medical_report_file_size = $_FILES['medical_report']['size'];
                    $medical_report_file_type = $_FILES['medical_report']['type'];

                    $medical_report_file_ext = explode('.', $medical_report_file_name);
                    $medical_report_file_ext = end($medical_report_file_ext);
                    $medical_report_file_ext = strtolower($medical_report_file_ext);

                    // payslip
                    $payslips_file_name = $_FILES['payslips']['name'];
                    $payslips_file_size = $_FILES['payslips']['size'];
                    $payslips_file_tmp = $_FILES['payslips']['tmp_name'];
                    $payslips_file_type = $_FILES['payslips']['type'];

                    $payslips_file_ext = explode('.', $payslips_file_name);
                    $payslips_file_ext = end($payslips_file_ext);
                    $payslips_file_ext = strtolower($payslips_file_ext);

                    // police abstract
                    $police_abstract_file_name = $_FILES['police_abstract']['name'];
                    $police_abstract_file_size = $_FILES['police_abstract']['size'];
                    $police_abstract_file_tmp = $_FILES['police_abstract']['tmp_name'];
                    $police_abstract_file_type = $_FILES['police_abstract']['type'];

                    $police_abstract_file_ext = explode('.', $police_abstract_file_name);
                    $police_abstract_file_ext = end($police_abstract_file_ext);
                    $police_abstract_file_ext = strtolower($police_abstract_file_ext);




                    $extensions = array("doc", "docx", "pdf", "jpg", "jpeg");

                    if (
                        in_array($notification_letter_permanent_total_disability_file_ext, $extensions) === false ||
                        in_array($national_id_file_ext, $extensions) === false ||
                        in_array($medical_report_file_ext, $extensions) === false ||
                        in_array($payslips_file_ext, $extensions) === false ||
                        in_array($police_abstract_file_ext, $extensions) === false
                    ) {
                        $response['message'] = "Invalid file type. Only doc, docx and pdf files allowed!";
                        $errors[] = 0;
                    }

                    if ($notification_letter_permanent_total_disability_file_size > 5242880 || $national_id_file_size > 5242880 || $medical_report_file_size > 5242880 || $payslips_file_size > 5242880 || $police_abstract_file_size > 5242880) {
                        $response['message'] = "Files should be less than 5MB each!";
                        $errors[] = 0;
                    }

                    if (empty($errors) == true) {
                        $notification_letter_permanent_total_disability_file_name = $email . '-----' . $claim_id . '----' . 'notification letter' . '----' . $notification_letter_permanent_total_disability_file_name;
                        $national_id_file_name = $email . '-----' . $claim_id . '----' . 'national id passport' . '----' . $national_id_file_name;
                        $medical_report_file_name = $email . '-----' . $claim_id . '----' . 'medical examination report' . '----' . $medical_report_file_name;
                        $payslips_file_name = $email . '-----' . $claim_id . '----' . 'payslips' . '----' . $payslips_file_name;
                        $police_abstract_file_name = $email . '-----' . $claim_id . '----' . 'police abstract' . '----' . $police_abstract_file_name;

                        $notification_letter_permanent_total_disability_file_path =  "../documents/claims/" . $notification_letter_permanent_total_disability_file_name;
                        $national_id_file_path =  "../documents/claims/" . $national_id_file_name;
                        $medical_report_file_path =  "../documents/claims/" . $medical_report_file_name;
                        $payslips_file_path =  "../documents/claims/" . $payslips_file_name;
                        $police_abstract_file_path =  "../documents/claims/" . $police_abstract_file_name;

                        if (
                            move_uploaded_file($notification_letter_permanent_total_disability_file_tmp, $notification_letter_permanent_total_disability_file_path) &&
                            move_uploaded_file($medical_report_file_tmp, $medical_report_file_path)  &&
                            move_uploaded_file($national_id_file_tmp, $national_id_file_path)  &&
                            move_uploaded_file($payslips_file_tmp, $payslips_file_path) &&
                            move_uploaded_file($police_abstract_file_tmp, $police_abstract_file_path)
                        ) {
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`notification_letter`,`national_id_passport`,`medical_report`,`payslips`,`police_abstract`,`created_at`) 
                                VALUES('$claim_id','$full_name','$phone','$email','$location','$life_claim_type','$notification_letter_permanent_total_disability_file_name',' $national_id_file_name','$medical_report_file_name','$payslips_file_name','$police_abstract_file_name','$created_at')  ");
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

                case 'dosh_one_two':
                    $life_claim_type = 'Group Occupational - PTD and TTD';
                    $claim_id = randomstring(10);
                    // dosh one two form
                    $dosh_one_two_file_name = $_FILES['dosh_one_two']['name'];
                    $dosh_one_two_file_size = $_FILES['dosh_one_two']['size'];
                    $dosh_one_two_file_tmp = $_FILES['dosh_one_two']['tmp_name'];
                    $dosh_one_two_file_type = $_FILES['dosh_one_two']['type'];

                    $dosh_one_two_file_ext = explode('.', $dosh_one_two_file_name);
                    $dosh_one_two_file_ext = end($dosh_one_two_file_ext);
                    $dosh_one_two_file_ext = strtolower($dosh_one_two_file_ext);

                    // dosh four form
                    $dosh_four_file_name = $_FILES['dosh_four']['name'];
                    $dosh_four_file_size = $_FILES['dosh_four']['size'];
                    $dosh_four_file_tmp = $_FILES['dosh_four']['tmp_name'];
                    $dosh_four_file_type = $_FILES['dosh_four']['type'];

                    $dosh_four_file_ext = explode('.', $dosh_four_file_name);
                    $dosh_four_file_ext = end($dosh_four_file_ext);
                    $dosh_four_file_ext = strtolower($dosh_four_file_ext);

                    // national id
                    $national_id_file_name = $_FILES['national_id']['name'];
                    $national_id_file_size = $_FILES['national_id']['size'];
                    $national_id_file_tmp = $_FILES['national_id']['tmp_name'];
                    $national_id_file_type = $_FILES['national_id']['type'];

                    $national_id_file_ext = explode('.', $national_id_file_name);
                    $national_id_file_ext = end($national_id_file_ext);
                    $national_id_file_ext = strtolower($national_id_file_ext);



                    // medical report
                    $medical_bill_file_name = $_FILES['medical_bill']['name'];
                    $medical_bill_file_tmp = $_FILES['medical_bill']['tmp_name'];
                    $medical_bill_file_size = $_FILES['medical_bill']['size'];
                    $medical_bill_file_type = $_FILES['medical_bill']['type'];

                    $medical_bill_file_ext = explode('.', $medical_bill_file_name);
                    $medical_bill_file_ext = end($medical_bill_file_ext);
                    $medical_bill_file_ext = strtolower($medical_bill_file_ext);

                    // payslip
                    $payslips_file_name = $_FILES['payslips']['name'];
                    $payslips_file_size = $_FILES['payslips']['size'];
                    $payslips_file_tmp = $_FILES['payslips']['tmp_name'];
                    $payslips_file_type = $_FILES['payslips']['type'];

                    $payslips_file_ext = explode('.', $payslips_file_name);
                    $payslips_file_ext = end($payslips_file_ext);
                    $payslips_file_ext = strtolower($payslips_file_ext);

                    // police abstract
                    $police_abstract_file_name = $_FILES['police_abstract']['name'];
                    $police_abstract_file_size = $_FILES['police_abstract']['size'];
                    $police_abstract_file_tmp = $_FILES['police_abstract']['tmp_name'];
                    $police_abstract_file_type = $_FILES['police_abstract']['type'];

                    $police_abstract_file_ext = explode('.', $police_abstract_file_name);
                    $police_abstract_file_ext = end($police_abstract_file_ext);
                    $police_abstract_file_ext = strtolower($police_abstract_file_ext);

                    // sick off sheets
                    $sick_off_sheets_file_name = $_FILES['sick_off_sheets']['name'];
                    $sick_off_sheets_file_size = $_FILES['sick_off_sheets']['size'];
                    $sick_off_sheets_file_tmp = $_FILES['sick_off_sheets']['tmp_name'];
                    $sick_off_sheets_file_type = $_FILES['sick_off_sheets']['type'];

                    $sick_off_sheets_file_ext = explode('.', $sick_off_sheets_file_name);
                    $sick_off_sheets_file_ext = end($sick_off_sheets_file_ext);
                    $sick_off_sheets_file_ext = strtolower($sick_off_sheets_file_ext);

                    // witness statement
                    $witness_statement_file_name = $_FILES['witness_statement']['name'];
                    $witness_statement_file_size = $_FILES['witness_statement']['size'];
                    $witness_statement_file_tmp = $_FILES['witness_statement']['tmp_name'];
                    $witness_statement_file_type = $_FILES['witness_statement']['type'];

                    $witness_statement_file_ext = explode('.', $witness_statement_file_name);
                    $witness_statement_file_ext = end($witness_statement_file_ext);
                    $witness_statement_file_ext = strtolower($witness_statement_file_ext);




                    $extensions = array("doc", "docx", "pdf", "jpg", "jpeg");

                    if (
                        in_array($dosh_one_two_file_ext, $extensions) === false ||
                        in_array($national_id_file_ext, $extensions) === false ||
                        in_array($dosh_four_file_ext, $extensions) === false ||
                        in_array($medical_bill_file_ext, $extensions) === false ||
                        in_array($payslips_file_ext, $extensions) === false ||
                        in_array($police_abstract_file_ext, $extensions) === false ||
                        in_array($sick_off_sheets_file_ext, $extensions) === false ||
                        in_array($witness_statement_file_ext, $extensions) === false
                    ) {
                        $response['message'] = "Invalid file type. Only doc, docx, jpg, jpeg and pdf files allowed!";
                        $errors[] = 0;
                    }

                    if ($dosh_one_two_file_size > 5242880 || $dosh_four_file_size > 5242880 || $national_id_file_size > 5242880 || $medical_bill_file_size > 5242880 || $payslips_file_size > 5242880 || $police_abstract_file_size > 5242880 || $sick_off_sheets_file_size > 5242880 || $witness_statement_file_size > 5242880) {
                        $response['message'] = "Files should be less than 5MB each!";
                        $errors[] = 0;
                    }

                    if (empty($errors) == true) {
                        $dosh_one_two_file_name = $email . '-----' . $claim_id . '----' . 'dosh part 1 and 2' . '----' . $dosh_one_two_file_name;
                        $dosh_four_file_name = $email . '-----' . $claim_id . '----' . 'dosh 4' . '----' . $dosh_four_file_name;
                        $national_id_file_name = $email . '-----' . $claim_id . '----' . 'national id passport' . '----' . $national_id_file_name;
                        $medical_bill_file_name = $email . '-----' . $claim_id . '----' . 'medical bill' . '----' . $medical_bill_file_name;
                        $payslips_file_name = $email . '-----' . $claim_id . '----' . 'payslips' . '----' . $payslips_file_name;
                        $police_abstract_file_name = $email . '-----' . $claim_id . '----' . 'police abstract' . '----' . $police_abstract_file_name;
                        $sick_off_sheets_file_name = $email . '-----' . $claim_id . '----' . 'sick off sheets' . '----' . $sick_off_sheets_file_name;
                        $witness_statement_file_name = $email . '-----' . $claim_id . '----' . 'witness statement' . '----' . $witness_statement_file_name;

                        $dosh_one_two_file_path =  "../documents/claims/" . $dosh_one_two_file_name;
                        $dosh_four_file_path =  "../documents/claims/" . $dosh_four_file_name;
                        $national_id_file_path =  "../documents/claims/" . $national_id_file_name;
                        $medical_bill_file_path =  "../documents/claims/" . $medical_bill_file_name;
                        $payslips_file_path =  "../documents/claims/" . $payslips_file_name;
                        $police_abstract_file_path =  "../documents/claims/" . $police_abstract_file_name;
                        $sick_off_sheets_file_path =  "../documents/claims/" . $sick_off_sheets_file_name;
                        $witness_statement_file_path =  "../documents/claims/" . $witness_statement_file_name;

                        if (
                            move_uploaded_file($dosh_one_two_file_tmp, $dosh_one_two_file_path) &&
                            move_uploaded_file($dosh_four_file_tmp, $dosh_four_file_path) &&
                            move_uploaded_file($medical_bill_file_tmp, $medical_bill_file_path)  &&
                            move_uploaded_file($national_id_file_tmp, $national_id_file_path)  &&
                            move_uploaded_file($payslips_file_tmp, $payslips_file_path) &&
                            move_uploaded_file($police_abstract_file_tmp, $police_abstract_file_path) &&
                            move_uploaded_file($sick_off_sheets_file_tmp, $sick_off_sheets_file_path) &&
                            move_uploaded_file($witness_statement_file_tmp, $witness_statement_file_path)
                        ) {
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`dosh_one_two`,`dosh_four`,`national_id_passport`,`medical_bill`,`payslips`,`police_abstract`,`sick_off_sheets`,`witness_statement`,`created_at`) 
                                    VALUES('$claim_id','$full_name','$phone','$email','$location','$life_claim_type','$dosh_one_two_file_name','$dosh_four_file_name',' $national_id_file_name','$medical_bill_file_name','$payslips_file_name','$police_abstract_file_name','$sick_off_sheets_file_name','$witness_statement_file_name','$created_at')  ");
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

                case 'credit_death_certificate':
                    $life_claim_type = 'Group Credit Life';
                    $claim_id = randomstring(10);
                    // death certificate file input
                    $credit_death_certificate_file_name = $_FILES['credit_death_certificate']['name'];
                    $credit_death_certificate_file_size = $_FILES['credit_death_certificate']['size'];
                    $credit_death_certificate_file_tmp = $_FILES['credit_death_certificate']['tmp_name'];
                    $credit_death_certificate_file_type = $_FILES['credit_death_certificate']['type'];

                    $credit_death_certificate_file_ext = explode('.', $credit_death_certificate_file_name);
                    $credit_death_certificate_file_ext = end($credit_death_certificate_file_ext);
                    $credit_death_certificate_file_ext = strtolower($credit_death_certificate_file_ext);

                    // dosh four form
                    $burial_permit_file_name = $_FILES['burial_permit']['name'];
                    $burial_permit_file_size = $_FILES['burial_permit']['size'];
                    $burial_permit_file_tmp = $_FILES['burial_permit']['tmp_name'];
                    $burial_permit_file_type = $_FILES['burial_permit']['type'];

                    $burial_permit_file_ext = explode('.', $burial_permit_file_name);
                    $burial_permit_file_ext = end($burial_permit_file_ext);
                    $burial_permit_file_ext = strtolower($burial_permit_file_ext);

                    // national id
                    $national_id_file_name = $_FILES['national_id']['name'];
                    $national_id_file_size = $_FILES['national_id']['size'];
                    $national_id_file_tmp = $_FILES['national_id']['tmp_name'];
                    $national_id_file_type = $_FILES['national_id']['type'];

                    $national_id_file_ext = explode('.', $national_id_file_name);
                    $national_id_file_ext = end($national_id_file_ext);
                    $national_id_file_ext = strtolower($national_id_file_ext);



                    // loan application form and agreement
                    $loan_application_and_agreement_file_name = $_FILES['loan_application_and_agreement']['name'];
                    $loan_application_and_agreement_file_tmp = $_FILES['loan_application_and_agreement']['tmp_name'];
                    $loan_application_and_agreement_file_size = $_FILES['loan_application_and_agreement']['size'];
                    $loan_application_and_agreement_file_type = $_FILES['loan_application_and_agreement']['type'];

                    $loan_application_and_agreement_file_ext = explode('.', $loan_application_and_agreement_file_name);
                    $loan_application_and_agreement_file_ext = end($loan_application_and_agreement_file_ext);
                    $loan_application_and_agreement_file_ext = strtolower($loan_application_and_agreement_file_ext);

                    // loan repayment statement
                    $loan_repayment_file_name = $_FILES['loan_repayment']['name'];
                    $loan_repayment_file_size = $_FILES['loan_repayment']['size'];
                    $loan_repayment_file_tmp = $_FILES['loan_repayment']['tmp_name'];
                    $loan_repayment_file_type = $_FILES['loan_repayment']['type'];

                    $loan_repayment_file_ext = explode('.', $loan_repayment_file_name);
                    $loan_repayment_file_ext = end($loan_repayment_file_ext);
                    $loan_repayment_file_ext = strtolower($loan_repayment_file_ext);

                    // police abstract
                    $police_abstract_file_name = $_FILES['police_abstract']['name'];
                    $police_abstract_file_size = $_FILES['police_abstract']['size'];
                    $police_abstract_file_tmp = $_FILES['police_abstract']['tmp_name'];
                    $police_abstract_file_type = $_FILES['police_abstract']['type'];

                    $police_abstract_file_ext = explode('.', $police_abstract_file_name);
                    $police_abstract_file_ext = end($police_abstract_file_ext);
                    $police_abstract_file_ext = strtolower($police_abstract_file_ext);


                    $extensions = array("doc", "docx", "pdf", "jpg", "jpeg");

                    if (
                        in_array($credit_death_certificate_file_ext, $extensions) === false ||
                        in_array($national_id_file_ext, $extensions) === false ||
                        in_array($burial_permit_file_ext, $extensions) === false ||
                        in_array($loan_application_and_agreement_file_ext, $extensions) === false ||
                        in_array($loan_repayment_file_ext, $extensions) === false ||
                        in_array($police_abstract_file_ext, $extensions) === false
                    ) {
                        $response['message'] = "Invalid file type. Only doc, docx, jpg, jpeg and pdf files allowed!";
                        $errors[] = 0;
                    }

                    if ($credit_death_certificate_file_size > 5242880 || $burial_permit_file_size > 5242880 || $national_id_file_size > 5242880 || $loan_application_and_agreement_file_size > 5242880 || $loan_repayment_file_size > 5242880 || $police_abstract_file_size > 5242880) {
                        $response['message'] = "Files should be less than 5MB each!";
                        $errors[] = 0;
                    }

                    if (empty($errors) == true) {
                        $credit_death_certificate_file_name = $email . '-----' . $claim_id . '----' . 'dosh part 1 and 2' . '----' . $credit_death_certificate_file_name;
                        $burial_permit_file_name = $email . '-----' . $claim_id . '----' . 'dosh 4' . '----' . $burial_permit_file_name;
                        $national_id_file_name = $email . '-----' . $claim_id . '----' . 'national id passport' . '----' . $national_id_file_name;
                        $loan_application_and_agreement_file_name = $email . '-----' . $claim_id . '----' . 'loan application and agreement' . '----' . $loan_application_and_agreement_file_name;
                        $loan_repayment_file_name = $email . '-----' . $claim_id . '----' . 'loan_repayment' . '----' . $loan_repayment_file_name;
                        $police_abstract_file_name = $email . '-----' . $claim_id . '----' . 'police abstract' . '----' . $police_abstract_file_name;

                        $credit_death_certificate_file_path =  "../documents/claims/" . $credit_death_certificate_file_name;
                        $burial_permit_file_path =  "../documents/claims/" . $burial_permit_file_name;
                        $national_id_file_path =  "../documents/claims/" . $national_id_file_name;
                        $loan_application_and_agreement_file_path =  "../documents/claims/" . $loan_application_and_agreement_file_name;
                        $loan_repayment_file_path =  "../documents/claims/" . $loan_repayment_file_name;
                        $police_abstract_file_path =  "../documents/claims/" . $police_abstract_file_name;

                        if (
                            move_uploaded_file($credit_death_certificate_file_tmp, $credit_death_certificate_file_path) &&
                            move_uploaded_file($burial_permit_file_tmp, $burial_permit_file_path) &&
                            move_uploaded_file($loan_application_and_agreement_file_tmp, $loan_application_and_agreement_file_path)  &&
                            move_uploaded_file($national_id_file_tmp, $national_id_file_path)  &&
                            move_uploaded_file($loan_repayment_file_tmp, $loan_repayment_file_path) &&
                            move_uploaded_file($police_abstract_file_tmp, $police_abstract_file_path)


                        ) {
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`death_certificate`,`original_burial_permit`,`national_id_passport`,`loan_application_and_agreement`,`loan_repayment`,`police_abstract`,`created_at`) 
                                    VALUES('$claim_id','$full_name','$phone','$email','$location','$life_claim_type','$credit_death_certificate_file_name','$burial_permit_file_name',' $national_id_file_name','$loan_application_and_agreement_file_name','$loan_repayment_file_name','$police_abstract_file_name','$created_at')  ");
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
            } //specify form case
        }

    case 'life_personal_property_claim':
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

            if (isset($_FILES['claim_form_property_damage'])) {
                $form =  'claim_form_property_damage';
            } elseif (isset($_FILES['dosh_one_two_property_damage'])) {
                $form = 'dosh_one_two_property_damage';
            } elseif (isset($_FILES['completed_medical_report'])) {
                $form = 'completed_medical_report';
            } elseif (isset($_FILES['claim_form_livestock'])) {
                $form = 'claim_form_livestock';
            } elseif (isset($_FILES['claim_form_crop'])) {
                $form = 'claim_form_crop';
            } elseif (isset($_FILES['personal_accident_claim_form'])) {
                $form = 'personal_accident_claim_form';
            }  else {
                $form = 'invalid selection';
            }

            #switch starts here
            switch ($form) {
                case 'claim_form_property_damage':
                    $personal_property_claim_type = 'Personal Property Damage';
                    $claim_id = randomstring(10);

                    // completed form
                    $claim_form_property_damage_file_name = $_FILES['claim_form_property_damage']['name'];
                    $claim_form_property_damage_file_size = $_FILES['claim_form_property_damage']['size'];
                    $claim_form_property_damage_file_tmp = $_FILES['claim_form_property_damage']['tmp_name'];
                    $claim_form_property_damage_file_type = $_FILES['claim_form_property_damage']['type'];

                    $claim_form_property_damage_file_ext = explode('.', $claim_form_property_damage_file_name);
                    $claim_form_property_damage_file_ext = end($claim_form_property_damage_file_ext);
                    $claim_form_property_damage_file_ext = strtolower($claim_form_property_damage_file_ext);

                    // police abstract
                    $police_abstract_file_name = $_FILES['police_abstract']['name'];
                    $police_abstract_file_size = $_FILES['police_abstract']['size'];
                    $police_abstract_file_tmp = $_FILES['police_abstract']['tmp_name'];
                    $police_abstract_file_type = $_FILES['police_abstract']['type'];

                    $police_abstract_file_ext = explode('.', $police_abstract_file_name);
                    $police_abstract_file_ext = end($police_abstract_file_ext);
                    $police_abstract_file_ext = strtolower($police_abstract_file_ext);



                    // invoice
                    $invoice_file_name = $_FILES['invoice']['name'];
                    $invoice_file_tmp = $_FILES['invoice']['tmp_name'];
                    $invoice_file_size = $_FILES['invoice']['size'];
                    $invoice_file_type = $_FILES['invoice']['type'];

                    $invoice_file_ext = explode('.', $invoice_file_name);
                    $invoice_file_ext = end($invoice_file_ext);
                    $invoice_file_ext = strtolower($invoice_file_ext);

                    // detailed statement
                    $detailed_statement_file_name = $_FILES['detailed_statement']['name'];
                    $detailed_statement_file_size = $_FILES['detailed_statement']['size'];
                    $detailed_statement_file_tmp = $_FILES['detailed_statement']['tmp_name'];
                    $detailed_statement_file_type = $_FILES['detailed_statement']['type'];

                    $detailed_statement_file_ext = explode('.', $detailed_statement_file_name);
                    $detailed_statement_file_ext = end($detailed_statement_file_ext);
                    $detailed_statement_file_ext = strtolower($detailed_statement_file_ext);




                    $extensions = array("doc", "docx", "pdf", "jpg", "jpeg");

                    if (
                        in_array($claim_form_property_damage_file_ext, $extensions) === false ||
                        in_array($police_abstract_file_ext, $extensions) === false ||
                        in_array($invoice_file_ext, $extensions) === false ||
                        in_array($detailed_statement_file_ext, $extensions) === false
                    ) {
                        $response['message'] = "Invalid file type. Only doc, docx and pdf files allowed!";
                        $errors[] = 0;
                    }

                    if ($claim_form_property_damage_file_size > 5242880 || $police_abstract_file_size > 5242880 || $invoice_file_size > 5242880 || $detailed_statement_file_size > 5242880) {
                        $response['message'] = "Files should be less than 5MB each!";
                        $errors[] = 0;
                    }

                    if (empty($errors) == true) {
                        $claim_form_property_damage_file_name = $email . '-----' . $claim_id . '----' . 'completed form' . '----' . $claim_form_property_damage_file_name;
                        $police_abstract_file_name = $email . '-----' . $claim_id . '----' . 'police abstract' . '----' . $police_abstract_file_name;
                        $invoice_file_name = $email . '-----' . $claim_id . '----' . 'proforma invoice' . '----' . $invoice_file_name;
                        $detailed_statement_file_name = $email . '-----' . $claim_id . '----' . 'detailed statement' . '----' . $detailed_statement_file_name;

                        $claim_form_property_damage_file_path =  "../documents/claims/" . $claim_form_property_damage_file_name;
                        $police_abstract_file_path =  "../documents/claims/" . $police_abstract_file_name;
                        $invoice_file_path =  "../documents/claims/" . $invoice_file_name;
                        $detailed_statement_file_path =  "../documents/claims/" . $detailed_statement_file_name;



                        if (
                            move_uploaded_file($claim_form_property_damage_file_tmp, $claim_form_property_damage_file_path) &&
                            move_uploaded_file($police_abstract_file_tmp, $police_abstract_file_path)  &&
                            move_uploaded_file($invoice_file_tmp, $invoice_file_path) &&
                            move_uploaded_file($detailed_statement_file_tmp, $detailed_statement_file_path)
                        ) {
                            $insert = $db->query("INSERT INTO claims_personal_property(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`police_abstract`,`invoice`,`detailed_statement`,`created_at`) 
                                                VALUES('$claim_id','$full_name','$phone','$email','$location','$personal_property_claim_type','$claim_form_property_damage_file_name',' $police_abstract_file_name','$invoice_file_name','$detailed_statement_file_name','$created_at')  ");
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

                case 'dosh_one_two_property_damage':
                    $personal_property_claim_type = 'Injuries - Wiba';
                    $claim_id = randomstring(10);

                    // completed form
                    $dosh_one_two_property_damage_file_name = $_FILES['dosh_one_two_property_damage']['name'];
                    $dosh_one_two_property_damage_file_size = $_FILES['dosh_one_two_property_damage']['size'];
                    $dosh_one_two_property_damage_file_tmp = $_FILES['dosh_one_two_property_damage']['tmp_name'];
                    $dosh_one_two_property_damage_file_type = $_FILES['dosh_one_two_property_damage']['type'];

                    $dosh_one_two_property_damage_file_ext = explode('.', $dosh_one_two_property_damage_file_name);
                    $dosh_one_two_property_damage_file_ext = end($dosh_one_two_property_damage_file_ext);
                    $dosh_one_two_property_damage_file_ext = strtolower($dosh_one_two_property_damage_file_ext);

                    // police abstract
                    $dosh_four_file_name = $_FILES['dosh_four']['name'];
                    $dosh_four_file_size = $_FILES['dosh_four']['size'];
                    $dosh_four_file_tmp = $_FILES['dosh_four']['tmp_name'];
                    $dosh_four_file_type = $_FILES['dosh_four']['type'];

                    $dosh_four_file_ext = explode('.', $dosh_four_file_name);
                    $dosh_four_file_ext = end($dosh_four_file_ext);
                    $dosh_four_file_ext = strtolower($dosh_four_file_ext);

                    $extensions = array("doc", "docx", "pdf", "jpg", "jpeg");

                    if (
                        in_array($dosh_one_two_property_damage_file_ext, $extensions) === false ||
                        in_array($dosh_four_file_ext, $extensions) === false
                    ) {
                        $response['message'] = "Invalid file type. Only doc, docx and pdf files allowed!";
                        $errors[] = 0;
                    }

                    if ($dosh_one_two_property_damage_file_size > 5242880 || $dosh_four_file_size > 5242880) {
                        $response['message'] = "Files should be less than 5MB each!";
                        $errors[] = 0;
                    }

                    if (empty($errors) == true) {
                        $dosh_one_two_property_damage_file_name = $email . '-----' . $claim_id . '----' . 'dosh one and two completed form' . '----' . $dosh_one_two_property_damage_file_name;
                        $dosh_four_file_name = $email . '-----' . $claim_id . '----' . 'dosh four' . '----' . $dosh_four_file_name;

                        $dosh_one_two_property_damage_file_path =  "../documents/claims/" . $dosh_one_two_property_damage_file_name;
                        $dosh_four_file_path =  "../documents/claims/" . $dosh_four_file_name;



                        if (
                            move_uploaded_file($dosh_one_two_property_damage_file_tmp, $dosh_one_two_property_damage_file_path) &&
                            move_uploaded_file($dosh_four_file_tmp, $dosh_four_file_path)
                        ) {
                            $insert = $db->query("INSERT INTO claims_personal_property(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`dosh_one_two`,`dosh_four`,`created_at`) 
                                                    VALUES('$claim_id','$full_name','$phone','$email','$location','$personal_property_claim_type','$dosh_one_two_property_damage_file_name',' $dosh_four_file_name','$created_at')  ");
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

                case 'claim_form_crop':
                    $personal_property_claim_type = 'Crop Claim';
                    $claim_id = randomstring(10);

                    // completed form
                    $claim_form_crop_file_name = $_FILES['claim_form_crop']['name'];
                    $claim_form_crop_file_size = $_FILES['claim_form_crop']['size'];
                    $claim_form_crop_file_tmp = $_FILES['claim_form_crop']['tmp_name'];
                    $claim_form_crop_file_type = $_FILES['claim_form_crop']['type'];

                    $claim_form_crop_file_ext = explode('.', $claim_form_crop_file_name);
                    $claim_form_crop_file_ext = end($claim_form_crop_file_ext);
                    $claim_form_crop_file_ext = strtolower($claim_form_crop_file_ext);

                    $extensions = array("doc", "docx", "pdf", "jpg", "jpeg");

                    if (
                        in_array($claim_form_crop_file_ext, $extensions) === false
                    ) {
                        $response['message'] = "Invalid file type. Only doc, docx and pdf files allowed!";
                        $errors[] = 0;
                    }

                    if ($claim_form_crop_file_size > 5242880) {
                        $response['message'] = "Files should be less than 5MB each!";
                        $errors[] = 0;
                    }

                    if (empty($errors) == true) {
                        $claim_form_crop_file_name = $email . '-----' . $claim_id . '----' . 'completed form' . '----' . $claim_form_crop_file_name;

                        $claim_form_crop_file_path =  "../documents/claims/" . $claim_form_crop_file_name;



                        if (
                            move_uploaded_file($claim_form_crop_file_tmp, $claim_form_crop_file_path)
                        ) {
                            $insert = $db->query("INSERT INTO claims_personal_property(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`created_at`) 
                                                    VALUES('$claim_id','$full_name','$phone','$email','$location','$personal_property_claim_type','$claim_form_crop_file_name','$created_at')  ");
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

                case 'claim_form_livestock':
                    $personal_property_claim_type = 'Livestock Claim';
                    $claim_id = randomstring(10);

                    // completed form
                    $claim_form_livestock_file_name = $_FILES['claim_form_livestock']['name'];
                    $claim_form_livestock_file_size = $_FILES['claim_form_livestock']['size'];
                    $claim_form_livestock_file_tmp = $_FILES['claim_form_livestock']['tmp_name'];
                    $claim_form_livestock_file_type = $_FILES['claim_form_livestock']['type'];

                    $claim_form_livestock_file_ext = explode('.', $claim_form_livestock_file_name);
                    $claim_form_livestock_file_ext = end($claim_form_livestock_file_ext);
                    $claim_form_livestock_file_ext = strtolower($claim_form_livestock_file_ext);

                    //post mortem
                    $post_mortem_file_name = $_FILES['post_mortem']['name'];
                    $post_mortem_file_size = $_FILES['post_mortem']['size'];
                    $post_mortem_file_tmp = $_FILES['post_mortem']['tmp_name'];
                    $post_mortem_file_type = $_FILES['post_mortem']['type'];

                    $post_mortem_file_ext = explode('.', $post_mortem_file_name);
                    $post_mortem_file_ext = end($post_mortem_file_ext);
                    $post_mortem_file_ext = strtolower($post_mortem_file_ext);



                    // invoice
                    $vet_loss_certificate_file_name = $_FILES['vet_loss_certificate']['name'];
                    $vet_loss_certificate_file_tmp = $_FILES['vet_loss_certificate']['tmp_name'];
                    $vet_loss_certificate_file_size = $_FILES['vet_loss_certificate']['size'];
                    $vet_loss_certificate_file_type = $_FILES['vet_loss_certificate']['type'];

                    $vet_loss_certificate_file_ext = explode('.', $vet_loss_certificate_file_name);
                    $vet_loss_certificate_file_ext = end($vet_loss_certificate_file_ext);
                    $vet_loss_certificate_file_ext = strtolower($vet_loss_certificate_file_ext);

                    // detailed statement
                    $dead_livestock_photo_file_name = $_FILES['dead_livestock_photo']['name'];
                    $dead_livestock_photo_file_size = $_FILES['dead_livestock_photo']['size'];
                    $dead_livestock_photo_file_tmp = $_FILES['dead_livestock_photo']['tmp_name'];
                    $dead_livestock_photo_file_type = $_FILES['dead_livestock_photo']['type'];

                    $dead_livestock_photo_file_ext = explode('.', $dead_livestock_photo_file_name);
                    $dead_livestock_photo_file_ext = end($dead_livestock_photo_file_ext);
                    $dead_livestock_photo_file_ext = strtolower($dead_livestock_photo_file_ext);




                    $extensions = array("doc", "docx", "pdf", "jpg", "jpeg");

                    if (
                        in_array($claim_form_livestock_file_ext, $extensions) === false ||
                        in_array($post_mortem_file_ext, $extensions) === false ||
                        in_array($vet_loss_certificate_file_ext, $extensions) === false ||
                        in_array($dead_livestock_photo_file_ext, $extensions) === false
                    ) {
                        $response['message'] = "Invalid file type. Only doc, docx and pdf files allowed!";
                        $errors[] = 0;
                    }

                    if ($claim_form_livestock_file_size > 5242880 || $post_mortem_file_size > 5242880 || $vet_loss_certificate_file_size > 5242880 || $dead_livestock_photo_file_size > 5242880) {
                        $response['message'] = "Files should be less than 5MB each!";
                        $errors[] = 0;
                    }

                    if (empty($errors) == true) {
                        $claim_form_livestock_file_name = $email . '-----' . $claim_id . '----' . 'completed form' . '----' . $claim_form_livestock_file_name;
                        $post_mortem_file_name = $email . '-----' . $claim_id . '----' . 'post mortem report' . '----' . $post_mortem_file_name;
                        $vet_loss_certificate_file_name = $email . '-----' . $claim_id . '----' . 'vet loss certificate' . '----' . $vet_loss_certificate_file_name;
                        $dead_livestock_photo_file_name = $email . '-----' . $claim_id . '----' . 'dead livestock photo' . '----' . $dead_livestock_photo_file_name;

                        $claim_form_livestock_file_path =  "../documents/claims/" . $claim_form_livestock_file_name;
                        $post_mortem_file_path =  "../documents/claims/" . $post_mortem_file_name;
                        $vet_loss_certificate_file_path =  "../documents/claims/" . $vet_loss_certificate_file_name;
                        $dead_livestock_photo_file_path =  "../documents/claims/" . $dead_livestock_photo_file_name;



                        if (
                            move_uploaded_file($claim_form_livestock_file_tmp, $claim_form_livestock_file_path) &&
                            move_uploaded_file($post_mortem_file_tmp, $post_mortem_file_path)  &&
                            move_uploaded_file($vet_loss_certificate_file_tmp, $vet_loss_certificate_file_path) &&
                            move_uploaded_file($dead_livestock_photo_file_tmp, $dead_livestock_photo_file_path)
                        ) {
                            $insert = $db->query("INSERT INTO claims_personal_property(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`post_mortem`,`vet_loss_certificate`,`dead_livestock_photo`,`created_at`) 
                                                    VALUES('$claim_id','$full_name','$phone','$email','$location','$personal_property_claim_type','$claim_form_livestock_file_name',' $post_mortem_file_name','$vet_loss_certificate_file_name','$dead_livestock_photo_file_name','$created_at')  ");
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
                    
                    case 'personal_accident_claim_form':
                        $personal_property_claim_type = 'Personal Accident Claim';
                        $claim_id = randomstring(10);
    
                        // completed form
                        $claim_form_livestock_file_name = $_FILES['claim_form_livestock']['name'];
                        $claim_form_livestock_file_size = $_FILES['claim_form_livestock']['size'];
                        $claim_form_livestock_file_tmp = $_FILES['claim_form_livestock']['tmp_name'];
                        $claim_form_livestock_file_type = $_FILES['claim_form_livestock']['type'];
    
                        $claim_form_livestock_file_ext = explode('.', $claim_form_livestock_file_name);
                        $claim_form_livestock_file_ext = end($claim_form_livestock_file_ext);
                        $claim_form_livestock_file_ext = strtolower($claim_form_livestock_file_ext);
    
                        //post mortem
                        $post_mortem_file_name = $_FILES['post_mortem']['name'];
                        $post_mortem_file_size = $_FILES['post_mortem']['size'];
                        $post_mortem_file_tmp = $_FILES['post_mortem']['tmp_name'];
                        $post_mortem_file_type = $_FILES['post_mortem']['type'];
    
                        $post_mortem_file_ext = explode('.', $post_mortem_file_name);
                        $post_mortem_file_ext = end($post_mortem_file_ext);
                        $post_mortem_file_ext = strtolower($post_mortem_file_ext);
    
    
    
                        // invoice
                        $vet_loss_certificate_file_name = $_FILES['vet_loss_certificate']['name'];
                        $vet_loss_certificate_file_tmp = $_FILES['vet_loss_certificate']['tmp_name'];
                        $vet_loss_certificate_file_size = $_FILES['vet_loss_certificate']['size'];
                        $vet_loss_certificate_file_type = $_FILES['vet_loss_certificate']['type'];
    
                        $vet_loss_certificate_file_ext = explode('.', $vet_loss_certificate_file_name);
                        $vet_loss_certificate_file_ext = end($vet_loss_certificate_file_ext);
                        $vet_loss_certificate_file_ext = strtolower($vet_loss_certificate_file_ext);
    
                        // detailed statement
                        $dead_livestock_photo_file_name = $_FILES['dead_livestock_photo']['name'];
                        $dead_livestock_photo_file_size = $_FILES['dead_livestock_photo']['size'];
                        $dead_livestock_photo_file_tmp = $_FILES['dead_livestock_photo']['tmp_name'];
                        $dead_livestock_photo_file_type = $_FILES['dead_livestock_photo']['type'];
    
                        $dead_livestock_photo_file_ext = explode('.', $dead_livestock_photo_file_name);
                        $dead_livestock_photo_file_ext = end($dead_livestock_photo_file_ext);
                        $dead_livestock_photo_file_ext = strtolower($dead_livestock_photo_file_ext);
    
    
    
    
                        $extensions = array("doc", "docx", "pdf", "jpg", "jpeg");
    
                        if (
                            in_array($claim_form_livestock_file_ext, $extensions) === false ||
                            in_array($post_mortem_file_ext, $extensions) === false ||
                            in_array($vet_loss_certificate_file_ext, $extensions) === false ||
                            in_array($dead_livestock_photo_file_ext, $extensions) === false
                        ) {
                            $response['message'] = "Invalid file type. Only doc, docx and pdf files allowed!";
                            $errors[] = 0;
                        }
    
                        if ($claim_form_livestock_file_size > 5242880 || $post_mortem_file_size > 5242880 || $vet_loss_certificate_file_size > 5242880 || $dead_livestock_photo_file_size > 5242880) {
                            $response['message'] = "Files should be less than 5MB each!";
                            $errors[] = 0;
                        }
    
                        if (empty($errors) == true) {
                            $claim_form_livestock_file_name = $email . '-----' . $claim_id . '----' . 'completed form' . '----' . $claim_form_livestock_file_name;
                            $post_mortem_file_name = $email . '-----' . $claim_id . '----' . 'post mortem report' . '----' . $post_mortem_file_name;
                            $vet_loss_certificate_file_name = $email . '-----' . $claim_id . '----' . 'vet loss certificate' . '----' . $vet_loss_certificate_file_name;
                            $dead_livestock_photo_file_name = $email . '-----' . $claim_id . '----' . 'dead livestock photo' . '----' . $dead_livestock_photo_file_name;
    
                            $claim_form_livestock_file_path =  "../documents/claims/" . $claim_form_livestock_file_name;
                            $post_mortem_file_path =  "../documents/claims/" . $post_mortem_file_name;
                            $vet_loss_certificate_file_path =  "../documents/claims/" . $vet_loss_certificate_file_name;
                            $dead_livestock_photo_file_path =  "../documents/claims/" . $dead_livestock_photo_file_name;
    
    
    
                            if (
                                move_uploaded_file($claim_form_livestock_file_tmp, $claim_form_livestock_file_path) &&
                                move_uploaded_file($post_mortem_file_tmp, $post_mortem_file_path)  &&
                                move_uploaded_file($vet_loss_certificate_file_tmp, $vet_loss_certificate_file_path) &&
                                move_uploaded_file($dead_livestock_photo_file_tmp, $dead_livestock_photo_file_path)
                            ) {
                                $insert = $db->query("INSERT INTO claims_personal_property(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`post_mortem`,`vet_loss_certificate`,`dead_livestock_photo`,`created_at`) 
                                                        VALUES('$claim_id','$full_name','$phone','$email','$location','$personal_property_claim_type','$claim_form_livestock_file_name',' $post_mortem_file_name','$vet_loss_certificate_file_name','$dead_livestock_photo_file_name','$created_at')  ");
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
        # code...l
        break;
}
