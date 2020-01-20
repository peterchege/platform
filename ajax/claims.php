<?php
require_once '../inc/db.php';
require_once '../inc/functions.php';
require_once '../inc/mails.php';

switch ($_GET['request']) {
    case 'claim_report':
        sleep(1);
        $response = array(
            'status' => 0,
            'message' => 'An error occurred!',
        );

        if (
            !isset($_POST['full_name']) || empty($_POST['full_name']) ||
            !isset($_POST['phone']) || empty($_POST['phone']) ||
            !isset($_POST['email']) || empty($_POST['email']) ||
            !isset($_POST['location']) || empty($_POST['location']) ||
            !isset($_POST['claim_event']) || empty($_POST['claim_event']) ||
            !isset($_POST['product_id']) || empty($_POST['product_id']) ||
            !isset($_POST['product_category_id']) || empty($_POST['product_category_id']) ||
            !isset($_POST['claim_type']) || empty($_POST['claim_type'])
        ) {
            $response['message'] = 'Please enter all required fields.';
        } else {
            $full_name = sanitize($_POST['full_name']);
            $phone = sanitize($_POST['phone']);
            $email = sanitize($_POST['email']);
            $location = sanitize($_POST['location']);

            $registration_number = ((isset($_POST['registration_number'])) ? sanitize($_POST['registration_number']) : '');
            $claim_event = sanitize($_POST['claim_event']);
            $product_id = sanitize($_POST['product_id']);
            $product_category_id = sanitize($_POST['product_category_id']);
            $claim_type = sanitize($_POST['claim_type']);
            $bemail = sanitize($_POST['bemail']);
            $bname = sanitize($_POST['bname']);

            if (isset($_POST['date_of_loss'])):
                $date_of_loss = strtotime(sanitize($_POST['date_of_loss']));
                $date_of_loss = date('Y-m-d', $date_of_loss);
            else:
                $date_of_loss = '';
            endif;

            $created_at = date('Y-m-d H:i:s');

            if (filter_var($email, FILTER_VALIDATE_EMAIL) === false) {
                $response['message'] = 'Please enter a valid email.';
                $status = 0;
                exit;
            } else {
                //mailing claim report
                $subject = ucwords($claim_type . ' claim reported on ' . pretty_date($created_at) . ' by ' . $full_name);
                $businessEmail = 'anthonybaru@gmail.com';
                $businessFullName = $bname;
                $clientEmail = $email;
                $clientFullName = $full_name;

                $body = $full_name . ' just reported a claim with the following details: <br><br>';
                $body .= 'Mobile number: ' . $phone . '<br>';
                $body .= 'Email address: ' . $email . '<br>';
                $body .= 'Location: ' . $location . '<br>';
                if ($product_id == 6):
                    $body .= 'Vehicle registration number: ' . $registration_number . '<br>';
                endif;
                $body .= 'Date of Loss: ' . pretty_date2($date_of_loss) . '<br>';
                $body .= 'Claim Event: ' . $claim_event;

                if (claim_report($subject, $businessEmail, $businessFullName, $clientEmail, $clientFullName, $body) == 1) {
                    // insert to db
                    $query = "INSERT INTO claims_reports(`full_name`,`phone`,`email`,`location`,`registration_number`,`claim_event`,`product_id`,`product_category_id`,`claim_type`,`created_at`,`date_of_loss`)
                                            VALUES( '$full_name', '$phone', '$email', '$location', '$registration_number', '$claim_event', '$product_id', '$product_category_id', '$claim_type', '$created_at','$date_of_loss')  ";
                    $feed = $db->query($query);
                    $response['message'] = 'Thanks. We\'ll get back to you as soon as we can.';
                    $response['status'] = 1;
                } else {
                    $response['message'] = 'An error occurred. Please try again!';
                    $response['status'] = 0;
                }
            }
        }
        //return response
        echo json_encode($response);
        break;

    case 'motor_claim_upload':
        sleep(1);
        $full_name = sanitize($_POST['full_name']);
        $phone = sanitize($_POST['phone']);
        $email = sanitize($_POST['email']);
        $claim_type = sanitize($_POST['motor_claim_type']);
        $registration_number = sanitize($_POST['registration_number']);
        $product_id = sanitize($_POST['product_id']);
        $product_category_id = sanitize($_POST['product_category_id']);
        $motor_claim_type = sanitize($_POST['claim_type']);
        $bemail = sanitize($_POST['bemail']);
        $bname = sanitize($_POST['bname']);

        if (isset($_POST['date_of_loss'])):
            $date_of_loss = strtotime(sanitize($_POST['date_of_loss']));
            $date_of_loss = date('Y-m-d', $date_of_loss);
        else:
            $date_of_loss = 'no date';
        endif;

        $created_at = date('Y-m-d H:i:s');

        $claim_id = randomstring(10);

        switch ($claim_type) {
            case 'accident':
                $claimDocs = array('completed form', 'police abstract', 'driving license', 'log book', 'detailed statement');
                break;
            case 'windscreen':
                $claimDocs = array('completed form', 'windscreen photo', 'vehicle photo', 'police abstract');
                break;
            case 'theft':
                $claimDocs = array('completed form', 'police abstract', 'driving license', 'log book', 'detailed statement');
                break;
            default:
                # code...
                break;
        }
        $extensions = array("doc", "docx", "pdf", "jpg", "jpeg");
        $errors = array(
            'detail' => '',
        );

        function checkSize()
    {
            global $filesize;
            foreach ($_FILES['documents']['name'] as $key => $value) {
                if ($filesize > 5242880):
                    $return = 0;
                    break;
                else:
                    $return = 1;
                endif;
            }
            return $return;
        }

        function checkExt()
    {
            foreach ($_FILES['documents']['name'] as $key => $value) {
                global $extensions;
                $fileext = explode('.', $_FILES['documents']['name'][$key]);
                $fileext = end($fileext);
                $fileext = strtolower($fileext);
                if (!in_array($fileext, $extensions)):
                    $return = 0;
                    break;
                else:
                    $return = 1;
                endif;
            }
            return $return;
        }

        foreach ($_FILES['documents']['name'] as $key => $document) {
            $filename = $_FILES['documents']['name'][$key];
            $filesize = $_FILES['documents']['size'][$key];
            $filetempname = $_FILES['documents']['tmp_name'][$key];
            $filetype = $_FILES['documents']['type'][$key];

            $fileext = explode('.', $filename);
            $fileext = end($fileext);
            $fileext = strtolower($fileext);

            if (checkExt() == 0) {
                $errors['detail'] = 'Invalid file!. Only doc, docx, pdf, jpg and jpeg files are allowed.';
                break;
            } else {
                if (checkSize() == 0) {
                    $errors['detail'] = 'Files should be less than 5 MB each!';
                    break;
                } else {
                    $doc = $claimDocs[$key];
                    $filename = $email . '----' . $claim_id . '----' . $doc . '----' . $filename;
                    $filepath = "../documents/claims/" . $filename;
                    if (move_uploaded_file($filetempname, $filepath)) {
                        $documents[$filename] = $filepath;
                        $errors['detail'] = 'uploadsuccess';
                    } else {
                        $errors['detail'] = 'uploadfail';
                    }
                }
            }
        }

        if ($errors['detail'] == 'uploadsuccess') {
            // mailing claims documents
            $subject = ucwords($motor_claim_type . ' claim documents submitted on ' . pretty_date($created_at));
            $businessEmail = 'anthonybaru@gmail.com';
            $businessFullName = 'Anthony Baru';
            $clientEmail = $email;
            $clientFullName = $full_name;
            $body = $clientFullName . ' has submitted documents for a claim. Details are as follows: <br><br>';
            $body .= 'Mobile number: ' . $phone . '<br>';
            $body .= 'Email address: ' . $email . '<br>';
            $body .= 'Vehicle registration number: ' . $registration_number . '<br>';
            $body .= 'Date of loss: ' . pretty_date2($date_of_loss) . '<br>';

            //mailing claims documents
            if (claim_motor($subject, $businessEmail, $businessFullName, $clientEmail, $clientFullName, $body, $documents) == 1) {
                $documentsKeys = array_keys($documents);
                switch ($claim_type) {
                    case 'accident':
                        $query = "INSERT INTO claims_motor_upload(`claim_id`,`full_name`,`phone`,`email`,`registration_number`,`motor_claim_type`,`completed_form`,`police_abstract`,`driving_license`,`log_book`,`detailed_statement`,`product_id`,`product_category_id`,`created_at`,`date_of_loss`)
                                        VALUES('$claim_id','$full_name','$phone','$email','$registration_number','$claim_type','$documentsKeys[0]',' $documentsKeys[1]','$documentsKeys[2]','$documentsKeys[3]','$documentsKeys[4]','$product_id','$product_category_id','$created_at','$date_of_loss')";
                        break;
                    case 'windscreen':
                        $query = "INSERT INTO claims_motor_upload(`claim_id`,`full_name`,`phone`,`email`,`registration_number`,`motor_claim_type`,`completed_form`,`windscreen_photo`,`vehicle_photo`,`police_abstract`,`product_id`,`product_category_id`,`created_at`,`date_of_loss`)
                                            VALUES('$claim_id','$full_name','$phone','$email','$registration_number','$claim_type','$documentsKeys[0]',' $$documentsKeys[1]','$documentsKeys[2]','$documentsKeys[3]','$product_id','$product_category_id','$created_at','$date_of_loss')";
                        break;
                    case 'theft':
                        $query = "INSERT INTO claims_motor_upload(`claim_id`,`full_name`,`phone`,`email`,`registration_number`,`motor_claim_type`,`completed_form`,`police_abstract`,`driving_license`,`log_book`,`detailed_statement`,`product_id`,`product_category_id`,`created_at`,`date_of_loss`)
                                        VALUES('$claim_id','$full_name','$phone','$email','$registration_number','$claim_type','$documentsKeys[0]',' $documentsKeys[1]','$documentsKeys[2]','$documentsKeys[3]','$documentsKeys[4]','$product_id','$product_category_id','$created_at','$date_of_loss')";
                        break;
                    default:
                        # code...
                        break;
                }

                $insert = $db->query($query);
                $response['message'] = 'Thanks. We\'ll get back to you as soon as we can.';
                $response['status'] = 1;
            } else {
                $response['message'] = 'An error occurred while sending email. Please try again later!';
                $response['status'] = 0;
            }
        } else {
            $response['message'] = $errors['detail'];
            $response['status'] = 0;
        }
        echo json_encode($response);
        break;

    case 'life_claim':
        sleep(1);
        $response = array(
            'status' => 0,
            'message' => 'Form submission failed, please try again.',
        );

        if (
            !isset($_POST['full_name']) || empty($_POST['full_name']) ||
            !isset($_POST['phone']) || empty($_POST['phone']) ||
            !isset($_POST['email']) || empty($_POST['email']) ||
            !isset($_POST['location']) || empty($_POST['location'])

        ) {
            $response['message'] = 'Please enter all required fields.';
        } else {
            $created_at = date('Y-m-d H:i:s');
            $product_id = filter_var(mysqli_real_escape_string($db, $_POST['product_id']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH);
            $product_category_id = sanitize($_POST['product_category_id']);
            $full_name = filter_var(mysqli_real_escape_string($db, $_POST['full_name']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);
            $phone = filter_var(mysqli_real_escape_string($db, $_POST['phone']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH);
            $email = filter_var(mysqli_real_escape_string($db, $_POST['email']), FILTER_SANITIZE_EMAIL, FILTER_FLAG_STRIP_HIGH);
            $location = ((isset($_POST['location'])) ? filter_var(mysqli_real_escape_string($db, $_POST['location']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : null);
            $claim_type = sanitize($_POST['claim_type']);
            $bemail = sanitize($_POST['bemail']);
            $bname = sanitize($_POST['bname']);
            if (isset($_POST['date_of_loss'])):
                $date_of_loss = strtotime(sanitize($_POST['date_of_loss']));
                $date_of_loss = date('Y-m-d', $date_of_loss);
            else:
                $date_of_loss = '';
            endif;
            $claim_id = randomstring(10);

            switch ($claim_type) {
                case 'hospital cash':
                    $claimDocs = array('completed form', 'id', 'hosp discharge summary', 'hospital invoices receipts');
                    break;
                case 'last expense':
                    $claimDocs = array('completed form', 'id', 'burial permit');
                    break;
                case 'critical illness':
                    $claimDocs = array('completed form', 'id', 'medical reports', 'payslips');
                    break;
                case 'death':
                    $claimDocs = array('completed form', 'id', 'policy document', 'burial permit', 'post mortem report');
                    break;
                case 'maturity':
                    $claimDocs = array('id', 'policy document');
                    break;
                case 'partial maturity':
                    $claimDocs = array('policy document');
                    break;

            }
            $extensions = array("doc", "docx", "pdf", "jpg", "jpeg");
            $errors = array(
                'detail' => '',
            );

            function checkSize()
        {
                global $filesize;
                foreach ($_FILES['documents']['name'] as $key => $value) {
                    if ($filesize > 5242880):
                        $return = 0;
                        break;
                    else:
                        $return = 1;
                    endif;
                }
                return $return;
            }

            function checkExt()
        {
                foreach ($_FILES['documents']['name'] as $key => $value) {
                    global $extensions;
                    $fileext = explode('.', $_FILES['documents']['name'][$key]);
                    $fileext = end($fileext);
                    $fileext = strtolower($fileext);
                    if (!in_array($fileext, $extensions)):
                        $return = 0;
                        break;
                    else:
                        $return = 1;
                    endif;
                }
                return $return;
            }

            foreach ($_FILES['documents']['name'] as $key => $document) {
                $filename = $_FILES['documents']['name'][$key];
                $filesize = $_FILES['documents']['size'][$key];
                $filetempname = $_FILES['documents']['tmp_name'][$key];
                $filetype = $_FILES['documents']['type'][$key];

                $fileext = explode('.', $filename);
                $fileext = end($fileext);
                $fileext = strtolower($fileext);

                if (checkExt() == 0) {
                    $errors['detail'] = 'Invalid file(s)!. Only doc, docx, pdf, jpg and jpeg files are allowed.';
                    break;
                } else {
                    if (checkSize() == 0) {
                        $errors['detail'] = 'Files should be less than 5 MB each!';
                        break;
                    } else {
                        $doc = $claimDocs[$key];
                        $filename = $email . '----' . $claim_id . '----' . $doc . '----' . $filename;
                        $filepath = "../documents/claims/" . $filename;
                        if (move_uploaded_file($filetempname, $filepath)) {
                            $documents[$filename] = $filepath;
                            $errors['detail'] = 'uploadsuccess';
                        } else {
                            $errors['detail'] = 'uploadfail';
                        }
                    }
                }
            }

            if ($errors['detail'] == 'uploadsuccess') {
                // mailing claims documents
                $subject = ucwords($claim_type . ' claim documents submitted on ' . pretty_date($created_at));
                $businessEmail = 'anthonybaru@gmail.com';
                $businessFullName = 'Anthony Baru';
                $clientEmail = $email;
                $clientFullName = $full_name;
                $body = $clientFullName . ' has submitted documents for a claim. Details are as follows: <br><br>';
                $body .= 'Mobile number: ' . $phone . '<br>';
                $body .= 'Email address: ' . $email . '<br>';
                $body .= 'Date of loss: ' . pretty_date2($date_of_loss) . '<br>';

                //mailing claims documents
                if (claim_motor($subject, $businessEmail, $businessFullName, $clientEmail, $clientFullName, $body, $documents) == 1) {
                    $documentsKeys = array_keys($documents);
                    switch ($claim_type) {
                        case 'hospital cash':
                            $query = "INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`national_id_passport`,`hospital_dishcharge_summary`,`hospital_invoice_receipt`,`created_at`)
                                        VALUES('$claim_id','$full_name','$phone','$email','$location','$claim_type','$documentsKeys[0]',' $documentsKeys[1]','$documentsKeys[2]','$documentsKeys[3]','$created_at') ";
                            break;
                        case 'last expense':
                            $query = "INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`national_id_passport`,`original_burial_permit`,`created_at`)
                                        VALUES('$claim_id','$full_name','$phone','$email','$location','$claim_type','$documentsKeys[0]',' $documentsKeys[1]','$documentsKeys[2]','$created_at') ";
                            break;
                        case 'critical illness':
                            $query = "INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`national_id_passport`,`medical_report`,`payslips`,`created_at`)
                                        VALUES('$claim_id','$full_name','$phone','$email','$location','$claim_type','$documentsKeys[0]',' $documentsKeys[1]','$documentsKeys[2]','$documentsKeys[3]','$created_at') ";
                            break;
                        case 'death':
                            $query = "INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`national_id_passport`,`policy_document`,`original_burial_permit`,`post_mortem_report`,`created_at`)
                                        VALUES('$claim_id','$full_name','$phone','$email','$location','$claim_type','$documentsKeys[0]',' $documentsKeys[1]','$documentsKeys[2]','$documentsKeys[3]','$documentsKeys[4]','$created_at') ";
                            break;
                        case 'maturity':
                            $query = "INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`national_id_passport`,`policy_document`,`created_at`)
                                        VALUES('$claim_id','$full_name','$phone','$email','$location','$claim_type','$documentsKeys[0]',' $documentsKeys[1]','$created_at') ";
                            break;
                        case 'partial maturity':
                            $query = "INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`policy_document`,`created_at`)
                                        VALUES('$claim_id','$full_name','$phone','$email','$location','$claim_type',' $documentsKeys[0]','$created_at') ";
                            break;
                    }

                    $insert = $db->query($query);
                    $response['message'] = 'Thanks. We\'ll get back to you as soon as we can.';
                    $response['status'] = 1;
                } else {
                    $response['message'] = 'An error occurred while sending email. Please try again later!';
                    $response['status'] = 0;
                }
            } else {
                $response['message'] = $errors['detail'];
                $response['status'] = 0;
            }
        }
        echo json_encode($response);
        break;

    case 'life_group_claim':
        sleep(1);
        $response = array(
            'status' => 0,
            'message' => 'Form submission failed, please try again.',
        );

        if (
            !isset($_POST['full_name']) || empty($_POST['full_name']) ||
            !isset($_POST['phone']) || empty($_POST['phone']) ||
            !isset($_POST['email']) || empty($_POST['email']) ||
            !isset($_POST['location']) || empty($_POST['location'])
        ) {
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
                $form = 'claim_form_last_expense';
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
                        $response['message'] = "Invalid file type. Only doc, docx, jpg, jpeg and pdf files allowed!";
                        $errors[] = 0;
                    }

                    if ($claim_form_last_expense_file_size > 5242880 || $national_id_file_size > 5242880 || $original_burial_permit_file_size > 5242880) {
                        $response['message'] = "Files should be less than 5MB each!";
                        $errors[] = 0;
                    }

                    if (empty($errors) == true) {
                        $claim_form_last_expense_file_name = $email . '----' . $claim_id . '----' . 'completed form' . '----' . $claim_form_last_expense_file_name;
                        $national_id_file_name = $email . '----' . $claim_id . '----' . 'national id passport' . '----' . $national_id_file_name;
                        $original_burial_permit_file_name = $email . '----' . $claim_id . '----' . 'Original Burial Permit' . '----' . $original_burial_permit_file_name;

                        $claim_form_last_expense_file_path = "../documents/claims/" . $claim_form_last_expense_file_name;
                        $national_id_file_path = "../documents/claims/" . $national_id_file_name;
                        $original_burial_permit_file_path = "../documents/claims/" . $original_burial_permit_file_name;

                        if (
                            move_uploaded_file($claim_form_last_expense_file_tmp, $claim_form_last_expense_file_path) &&
                            move_uploaded_file($original_burial_permit_file_tmp, $original_burial_permit_file_path) &&
                            move_uploaded_file($national_id_file_tmp, $national_id_file_path)
                        ) {
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`national_id_passport`,`original_burial_permit`,`created_at`)
                                                    VALUES('$claim_id','$full_name','$phone','$email','$location','$life_claim_type','$claim_form_last_expense_file_name',' $national_id_file_name','$original_burial_permit_file_name','$created_at')  ");
                            if ($insert) {
                                $response['message'] = 'success';
                                $response['status'] = 1;
                            } else {
                                $response['message'] = "An error occurred. Please try again! " . mysqli_error($db);
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
                        $response['message'] = "Invalid file type. Only doc, docx, jpg, jpeg and pdf files allowed!";
                        $errors[] = 0;
                    }

                    if ($claim_form_group_life_benefit_file_size > 5242880 || $national_id_file_size > 5242880 || $post_mortem_report_file_size > 5242880 || $payslips_file_size > 5242880) {
                        $response['message'] = "Files should be less than 5MB each!";
                        $errors[] = 0;
                    }

                    if (empty($errors) == true) {
                        $claim_form_group_life_benefit_file_name = $email . '----' . $claim_id . '----' . 'completed form' . '----' . $claim_form_group_life_benefit_file_name;
                        $national_id_file_name = $email . '----' . $claim_id . '----' . 'national id passport' . '----' . $national_id_file_name;
                        $post_mortem_report_file_name = $email . '----' . $claim_id . '----' . 'post mortem report' . '----' . $post_mortem_report_file_name;
                        $payslips_file_name = $email . '----' . $claim_id . '----' . 'payslips' . '----' . $payslips_file_name;

                        $claim_form_group_life_benefit_file_path = "../documents/claims/" . $claim_form_group_life_benefit_file_name;
                        $national_id_file_path = "../documents/claims/" . $national_id_file_name;
                        $post_mortem_report_file_path = "../documents/claims/" . $post_mortem_report_file_name;
                        $payslips_file_path = "../documents/claims/" . $payslips_file_name;

                        if (
                            move_uploaded_file($claim_form_group_life_benefit_file_tmp, $claim_form_group_life_benefit_file_path) &&
                            move_uploaded_file($post_mortem_report_file_tmp, $post_mortem_report_file_path) &&
                            move_uploaded_file($national_id_file_tmp, $national_id_file_path) &&
                            move_uploaded_file($payslips_file_tmp, $payslips_file_path)
                        ) {
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`national_id_passport`,`post_mortem_report`,`payslips`,`created_at`)
                                VALUES('$claim_id','$full_name','$phone','$email','$location','$life_claim_type','$claim_form_group_life_benefit_file_name',' $national_id_file_name','$post_mortem_report_file_name','$payslips_file_name','$created_at')  ");
                            if ($insert) {
                                $response['message'] = 'success';
                                $response['status'] = 1;
                            } else {
                                $response['message'] = 'An error occurred. Please try again! ' . mysqli_error($db);
                            }
                        } else {
                            $response['message'] = 'An error occurred while uploading the file. Make sure it\'s a valid file and it\'s less than 5 MB!';
                        }
                    }
                    echo json_encode($response);
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
                        $response['message'] = "Invalid file type. Only doc, docx, jpg, jpeg and pdf files allowed!";
                        $errors[] = 0;
                    }

                    if ($claim_form_critical_illness_file_size > 5242880 || $national_id_file_size > 5242880 || $medical_report_file_size > 5242880 || $payslips_file_size > 5242880) {
                        $response['message'] = "Files should be less than 5MB each!";
                        $errors[] = 0;
                    }

                    if (empty($errors) == true) {
                        $claim_form_critical_illness_file_name = $email . '----' . $claim_id . '----' . 'completed form' . '----' . $claim_form_critical_illness_file_name;
                        $national_id_file_name = $email . '----' . $claim_id . '----' . 'national id passport' . '----' . $national_id_file_name;
                        $medical_report_file_name = $email . '----' . $claim_id . '----' . 'medical report' . '----' . $medical_report_file_name;
                        $payslips_file_name = $email . '----' . $claim_id . '----' . 'payslips' . '----' . $payslips_file_name;

                        $claim_form_critical_illness_file_path = "../documents/claims/" . $claim_form_critical_illness_file_name;
                        $national_id_file_path = "../documents/claims/" . $national_id_file_name;
                        $medical_report_file_path = "../documents/claims/" . $medical_report_file_name;
                        $payslips_file_path = "../documents/claims/" . $payslips_file_name;

                        if (
                            move_uploaded_file($claim_form_critical_illness_file_tmp, $claim_form_critical_illness_file_path) &&
                            move_uploaded_file($medical_report_file_tmp, $medical_report_file_path) &&
                            move_uploaded_file($national_id_file_tmp, $national_id_file_path) &&
                            move_uploaded_file($payslips_file_tmp, $payslips_file_path)
                        ) {
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`national_id_passport`,`medical_report`,`payslips`,`created_at`)
                            VALUES('$claim_id','$full_name','$phone','$email','$location','$life_claim_type','$claim_form_critical_illness_file_name',' $national_id_file_name','$medical_report_file_name','$payslips_file_name','$created_at')  ");
                            if ($insert) {
                                $response['message'] = 'success';
                                $response['status'] = 1;
                            } else {
                                $response['message'] = 'An error occurred. Please try again! ' . mysqli_error($db);
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
                        $response['message'] = "Invalid file type. Only doc, docx, jpg, jpeg and pdf files allowed!";
                        $errors[] = 0;
                    }

                    if ($claim_form_hospital_cash_file_size > 5242880 || $national_id_file_size > 5242880 || $hospital_discharge_summary_file_size > 5242880 || $invoice_file_size > 5242880) {
                        $response['message'] = "Files should be less than 5MB each!";
                        $errors[] = 0;
                    }

                    if (empty($errors) == true) {
                        $claim_form_hospital_cash_file_name = $email . '----' . $claim_id . '----' . 'completed form' . '----' . $claim_form_hospital_cash_file_name;
                        $national_id_file_name = $email . '----' . $claim_id . '----' . 'national id passport' . '----' . $national_id_file_name;
                        $hospital_discharge_summary_file_name = $email . '----' . $claim_id . '----' . 'hospital discharge summary' . '----' . $hospital_discharge_summary_file_name;
                        $invoice_file_name = $email . '----' . $claim_id . '----' . 'invoice' . '----' . $invoice_file_name;

                        $claim_form_hospital_cash_file_path = "../documents/claims/" . $claim_form_hospital_cash_file_name;
                        $national_id_file_path = "../documents/claims/" . $national_id_file_name;
                        $hospital_discharge_summary_file_path = "../documents/claims/" . $hospital_discharge_summary_file_name;
                        $invoice_file_path = "../documents/claims/" . $invoice_file_name;

                        if (
                            move_uploaded_file($claim_form_hospital_cash_file_tmp, $claim_form_hospital_cash_file_path) &&
                            move_uploaded_file($hospital_discharge_summary_file_tmp, $hospital_discharge_summary_file_path) &&
                            move_uploaded_file($national_id_file_tmp, $national_id_file_path) &&
                            move_uploaded_file($invoice_file_tmp, $invoice_file_path)
                        ) {
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`national_id_passport`,`hospital_dishcharge_summary`,`hospital_invoice_receipt`,`created_at`)
                                                    VALUES('$claim_id','$full_name','$phone','$email','$location','$life_claim_type','$claim_form_hospital_cash_file_name',' $national_id_file_name','$hospital_discharge_summary_file_name','$invoice_file_name','$created_at')  ");
                            if ($insert) {
                                $response['message'] = 'success';
                                $response['status'] = 1;
                            } else {
                                $response['message'] = "An error occurred. Please try again! " . mysqli_error($db);
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
                        $response['message'] = "Invalid file type. Only doc, docx, jpg, jpeg and pdf files allowed!";
                        $errors[] = 0;
                    }

                    if ($notification_letter_permanent_total_disability_file_size > 5242880 || $national_id_file_size > 5242880 || $medical_report_file_size > 5242880 || $payslips_file_size > 5242880 || $police_abstract_file_size > 5242880) {
                        $response['message'] = "Files should be less than 5MB each!";
                        $errors[] = 0;
                    }

                    if (empty($errors) == true) {
                        $notification_letter_permanent_total_disability_file_name = $email . '----' . $claim_id . '----' . 'notification letter' . '----' . $notification_letter_permanent_total_disability_file_name;
                        $national_id_file_name = $email . '----' . $claim_id . '----' . 'national id passport' . '----' . $national_id_file_name;
                        $medical_report_file_name = $email . '----' . $claim_id . '----' . 'medical examination report' . '----' . $medical_report_file_name;
                        $payslips_file_name = $email . '----' . $claim_id . '----' . 'payslips' . '----' . $payslips_file_name;
                        $police_abstract_file_name = $email . '----' . $claim_id . '----' . 'police abstract' . '----' . $police_abstract_file_name;

                        $notification_letter_permanent_total_disability_file_path = "../documents/claims/" . $notification_letter_permanent_total_disability_file_name;
                        $national_id_file_path = "../documents/claims/" . $national_id_file_name;
                        $medical_report_file_path = "../documents/claims/" . $medical_report_file_name;
                        $payslips_file_path = "../documents/claims/" . $payslips_file_name;
                        $police_abstract_file_path = "../documents/claims/" . $police_abstract_file_name;

                        if (
                            move_uploaded_file($notification_letter_permanent_total_disability_file_tmp, $notification_letter_permanent_total_disability_file_path) &&
                            move_uploaded_file($medical_report_file_tmp, $medical_report_file_path) &&
                            move_uploaded_file($national_id_file_tmp, $national_id_file_path) &&
                            move_uploaded_file($payslips_file_tmp, $payslips_file_path) &&
                            move_uploaded_file($police_abstract_file_tmp, $police_abstract_file_path)
                        ) {
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`notification_letter`,`national_id_passport`,`medical_report`,`payslips`,`police_abstract`,`created_at`)
                                VALUES('$claim_id','$full_name','$phone','$email','$location','$life_claim_type','$notification_letter_permanent_total_disability_file_name',' $national_id_file_name','$medical_report_file_name','$payslips_file_name','$police_abstract_file_name','$created_at')  ");
                            if ($insert) {
                                $response['message'] = 'success';
                                $response['status'] = 1;
                            } else {
                                $response['message'] = 'An error occurred. Please try again! ' . mysqli_error($db);
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
                        $dosh_one_two_file_name = $email . '----' . $claim_id . '----' . 'dosh part 1 and 2' . '----' . $dosh_one_two_file_name;
                        $dosh_four_file_name = $email . '----' . $claim_id . '----' . 'dosh 4' . '----' . $dosh_four_file_name;
                        $national_id_file_name = $email . '----' . $claim_id . '----' . 'national id passport' . '----' . $national_id_file_name;
                        $medical_bill_file_name = $email . '----' . $claim_id . '----' . 'medical bill' . '----' . $medical_bill_file_name;
                        $payslips_file_name = $email . '----' . $claim_id . '----' . 'payslips' . '----' . $payslips_file_name;
                        $police_abstract_file_name = $email . '----' . $claim_id . '----' . 'police abstract' . '----' . $police_abstract_file_name;
                        $sick_off_sheets_file_name = $email . '----' . $claim_id . '----' . 'sick off sheets' . '----' . $sick_off_sheets_file_name;
                        $witness_statement_file_name = $email . '----' . $claim_id . '----' . 'witness statement' . '----' . $witness_statement_file_name;

                        $dosh_one_two_file_path = "../documents/claims/" . $dosh_one_two_file_name;
                        $dosh_four_file_path = "../documents/claims/" . $dosh_four_file_name;
                        $national_id_file_path = "../documents/claims/" . $national_id_file_name;
                        $medical_bill_file_path = "../documents/claims/" . $medical_bill_file_name;
                        $payslips_file_path = "../documents/claims/" . $payslips_file_name;
                        $police_abstract_file_path = "../documents/claims/" . $police_abstract_file_name;
                        $sick_off_sheets_file_path = "../documents/claims/" . $sick_off_sheets_file_name;
                        $witness_statement_file_path = "../documents/claims/" . $witness_statement_file_name;

                        if (
                            move_uploaded_file($dosh_one_two_file_tmp, $dosh_one_two_file_path) &&
                            move_uploaded_file($dosh_four_file_tmp, $dosh_four_file_path) &&
                            move_uploaded_file($medical_bill_file_tmp, $medical_bill_file_path) &&
                            move_uploaded_file($national_id_file_tmp, $national_id_file_path) &&
                            move_uploaded_file($payslips_file_tmp, $payslips_file_path) &&
                            move_uploaded_file($police_abstract_file_tmp, $police_abstract_file_path) &&
                            move_uploaded_file($sick_off_sheets_file_tmp, $sick_off_sheets_file_path) &&
                            move_uploaded_file($witness_statement_file_tmp, $witness_statement_file_path)
                        ) {
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`dosh_one_two`,`dosh_four`,`national_id_passport`,`medical_bill`,`payslips`,`police_abstract`,`sick_off_sheets`,`witness_statement`,`created_at`)
                                    VALUES('$claim_id','$full_name','$phone','$email','$location','$life_claim_type','$dosh_one_two_file_name','$dosh_four_file_name',' $national_id_file_name','$medical_bill_file_name','$payslips_file_name','$police_abstract_file_name','$sick_off_sheets_file_name','$witness_statement_file_name','$created_at')  ");
                            if ($insert) {
                                $response['message'] = 'success';
                                $response['status'] = 1;
                            } else {
                                $response['message'] = 'An error occurred. Please try again! ' . mysqli_error($db);
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
                        $credit_death_certificate_file_name = $email . '----' . $claim_id . '----' . 'dosh part 1 and 2' . '----' . $credit_death_certificate_file_name;
                        $burial_permit_file_name = $email . '----' . $claim_id . '----' . 'dosh 4' . '----' . $burial_permit_file_name;
                        $national_id_file_name = $email . '----' . $claim_id . '----' . 'national id passport' . '----' . $national_id_file_name;
                        $loan_application_and_agreement_file_name = $email . '----' . $claim_id . '----' . 'loan application and agreement' . '----' . $loan_application_and_agreement_file_name;
                        $loan_repayment_file_name = $email . '----' . $claim_id . '----' . 'loan_repayment' . '----' . $loan_repayment_file_name;
                        $police_abstract_file_name = $email . '----' . $claim_id . '----' . 'police abstract' . '----' . $police_abstract_file_name;

                        $credit_death_certificate_file_path = "../documents/claims/" . $credit_death_certificate_file_name;
                        $burial_permit_file_path = "../documents/claims/" . $burial_permit_file_name;
                        $national_id_file_path = "../documents/claims/" . $national_id_file_name;
                        $loan_application_and_agreement_file_path = "../documents/claims/" . $loan_application_and_agreement_file_name;
                        $loan_repayment_file_path = "../documents/claims/" . $loan_repayment_file_name;
                        $police_abstract_file_path = "../documents/claims/" . $police_abstract_file_name;

                        if (
                            move_uploaded_file($credit_death_certificate_file_tmp, $credit_death_certificate_file_path) &&
                            move_uploaded_file($burial_permit_file_tmp, $burial_permit_file_path) &&
                            move_uploaded_file($loan_application_and_agreement_file_tmp, $loan_application_and_agreement_file_path) &&
                            move_uploaded_file($national_id_file_tmp, $national_id_file_path) &&
                            move_uploaded_file($loan_repayment_file_tmp, $loan_repayment_file_path) &&
                            move_uploaded_file($police_abstract_file_tmp, $police_abstract_file_path)

                        ) {
                            $insert = $db->query("INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`death_certificate`,`original_burial_permit`,`national_id_passport`,`loan_application_and_agreement`,`loan_repayment`,`police_abstract`,`created_at`)
                                    VALUES('$claim_id','$full_name','$phone','$email','$location','$life_claim_type','$credit_death_certificate_file_name','$burial_permit_file_name',' $national_id_file_name','$loan_application_and_agreement_file_name','$loan_repayment_file_name','$police_abstract_file_name','$created_at')  ");
                            if ($insert) {
                                $response['message'] = 'success';
                                $response['status'] = 1;
                            } else {
                                $response['message'] = 'An error occurred. Please try again! ' . mysqli_error($db);
                            }
                        } else {
                            $response['message'] = 'An error occurred while uploading the file. Make sure it\'s a valid file and it\'s less than 5 MB!';
                        }
                    }
                    echo json_encode($response);
                    break;
            } //specify form case
        }

    // no break
    case 'life_personal_property_claim':
        sleep(1);
        $response = array(
            'status' => 0,
            'message' => 'Form submission failed, please try again.',
        );
        if (
            !isset($_POST['full_name']) || empty($_POST['full_name']) ||
            !isset($_POST['phone']) || empty($_POST['phone']) ||
            !isset($_POST['email']) || empty($_POST['email']) ||
            !isset($_POST['location']) || empty($_POST['location']) ||
            !isset($_POST['claim_type']) || empty($_POST['claim_type'])
        ) {
            $response['message'] = 'Please enter all required fields.';
        } else {
            $created_at = date('Y-m-d H:i:s');
            $product_id = filter_var(mysqli_real_escape_string($db, $_POST['product_id']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH);
            $product_category_id = sanitize($_POST['product_category_id']);
            $full_name = filter_var(mysqli_real_escape_string($db, $_POST['full_name']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);
            $phone = filter_var(mysqli_real_escape_string($db, $_POST['phone']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH);
            $email = filter_var(mysqli_real_escape_string($db, $_POST['email']), FILTER_SANITIZE_EMAIL, FILTER_FLAG_STRIP_HIGH);
            $location = ((isset($_POST['location'])) ? filter_var(mysqli_real_escape_string($db, $_POST['location']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : null);
            $claim_type = sanitize($_POST['claim_type']);
            $bemail = sanitize($_POST['bemail']);
            $bname = sanitize($_POST['bname']);
            if (isset($_POST['date_of_loss'])):
                $date_of_loss = strtotime(sanitize($_POST['date_of_loss']));
                $date_of_loss = date('Y-m-d', $date_of_loss);
            else:
                $date_of_loss = '';
            endif;
            $claim_id = randomstring(10);

            switch ($claim_type) {
                case 'property damage':
                    $claimDocs = array('completed form', 'police abstract', 'proforma invoice', 'detailed statement');
                    break;
                case 'wiba':
                    $claimDocs = array('completed form-dosh 1 and 2', 'dosh 4');
                    break;
                case 'personal accident':
                    $claimDocs = array('completed form', 'detailed statement', 'payslips', 'id', 'sick sheet', 'medical bill', 'discharge summary', 'police abstract');
                    break;

            }
            $extensions = array("doc", "docx", "pdf", "jpg", "jpeg");
            $errors = array(
                'detail' => '',
            );

            function checkSize()
        {
                global $filesize;
                foreach ($_FILES['documents']['name'] as $key => $value) {
                    if ($filesize > 5242880):
                        $return = 0;
                        break;
                    else:
                        $return = 1;
                    endif;
                }
                return $return;
            }

            function checkExt()
        {
                foreach ($_FILES['documents']['name'] as $key => $value) {
                    global $extensions;
                    $fileext = explode('.', $_FILES['documents']['name'][$key]);
                    $fileext = end($fileext);
                    $fileext = strtolower($fileext);
                    if (!in_array($fileext, $extensions)):
                        $return = 0;
                        break;
                    else:
                        $return = 1;
                    endif;
                }
                return $return;
            }

            foreach ($_FILES['documents']['name'] as $key => $document) {
                $filename = $_FILES['documents']['name'][$key];
                $filesize = $_FILES['documents']['size'][$key];
                $filetempname = $_FILES['documents']['tmp_name'][$key];
                $filetype = $_FILES['documents']['type'][$key];

                $fileext = explode('.', $filename);
                $fileext = end($fileext);
                $fileext = strtolower($fileext);

                if (checkExt() == 0) {
                    $errors['detail'] = 'Invalid file(s)!. Only doc, docx, pdf, jpg and jpeg files are allowed.';
                    break;
                } else {
                    if (checkSize() == 0) {
                        $errors['detail'] = 'Files should be less than 5 MB each!';
                        break;
                    } else {
                        $doc = $claimDocs[$key];
                        $filename = $email . '----' . $claim_id . '----' . $doc . '----' . $filename;
                        $filepath = "../documents/claims/" . $filename;
                        if (move_uploaded_file($filetempname, $filepath)) {
                            $documents[$filename] = $filepath;
                            $errors['detail'] = 'uploadsuccess';
                        } else {
                            $errors['detail'] = 'uploadfail';
                        }
                    }
                }
            }

            if ($errors['detail'] == 'uploadsuccess') {
                // mailing claims documents
                $subject = ucwords($claim_type . ' claim documents submitted on ' . pretty_date($created_at));
                $businessEmail = 'anthonybaru@gmail.com';
                $businessFullName = 'Anthony Baru';
                $clientEmail = $email;
                $clientFullName = $full_name;
                $body = $clientFullName . ' has submitted documents for a claim. Details are as follows: <br><br>';
                $body .= 'Mobile number: ' . $phone . '<br>';
                $body .= 'Email address: ' . $email . '<br>';
                $body .= 'Date of loss: ' . pretty_date2($date_of_loss) . '<br>';

                //mailing claims documents
                if (claim_motor($subject, $businessEmail, $businessFullName, $clientEmail, $clientFullName, $body, $documents) == 1) {
                    $documentsKeys = array_keys($documents);
                    switch ($claim_type) {
                        case 'property damage':
                            $query = "INSERT INTO claims_personal_property_upload(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`police_abstract`,`proforma_invoice`,`detailed_statement`,`created_at`,`date_of_loss`)
                                        VALUES('$claim_id','$full_name','$phone','$email','$location','$claim_type','$documentsKeys[0]',' $documentsKeys[1]','$documentsKeys[2]','$documentsKeys[3]','$created_at','$date_of_loss') ";
                            break;
                        case 'wiba':
                            $query = "INSERT INTO claims_personal_property_upload(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`dosh_one_two`,`dosh_four`,`created_at`,`date_of_loss`)
                                        VALUES('$claim_id','$full_name','$phone','$email','$location','$claim_type','$documentsKeys[0]',' $documentsKeys[1]','$created_at','$date_of_loss') ";
                            break;
                        case 'personal accident':
                            $query = "INSERT INTO claims_personal_property_upload(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`detailed_statement`,`payslips`,`national_id`,`sick_sheet`,`medical_bill`,`discharge_summary`,`police_abstract`,`created_at`,`date_of_loss`)
                                        VALUES('$claim_id','$full_name','$phone','$email','$location','$claim_type','$documentsKeys[0]',' $documentsKeys[1]','$documentsKeys[2]','$documentsKeys[3]','$documentsKeys[4]','$documentsKeys[5]','$documentsKeys[6]','$documentsKeys[7]','$created_at','$date_of_loss') ";
                            break;
                    }

                    $insert = $db->query($query);
                    $response['message'] = 'Thanks. We\'ll get back to you as soon as we can.';
                    $response['status'] = 1;
                } else {
                    $response['message'] = 'An error occurred while sending email. Please try again later!';
                    $response['status'] = 0;
                }
            } else {
                $response['message'] = $errors['detail'];
                $response['status'] = 0;
            }
        }
        echo json_encode($response);
        break;

} //end switch
