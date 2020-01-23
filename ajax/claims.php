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
        $response = array(
            'status' => 0,
            'message' => 'Form submission failed, please try again.',
        );

        if (
            !isset($_POST['full_name']) || empty($_POST['full_name']) ||
            !isset($_POST['phone']) || empty($_POST['phone']) ||
            !isset($_POST['email']) || empty($_POST['email']) ||
            // !isset($_POST['location']) || empty($_POST['location']) || peter to add location field to accident form
            !isset($_POST['claim_type']) || empty($_POST['claim_type'])

        ) {
            $response['message'] = 'Please enter all required fields.';
        } else {
            $full_name = sanitize($_POST['full_name']);
            $phone = sanitize($_POST['phone']);
            $email = sanitize($_POST['email']);
            $claim_type = sanitize($_POST['claim_type']);
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
                case 'group life last expense':
                    $claimDocs = array('completed form', 'id', 'original burial permit');
                    break;
                case 'group life benefit':
                    $claimDocs = array('completed form', 'id', 'payslips', 'police report', 'post mortem report');
                    break;
                case 'group life critical illness':
                    $claimDocs = array('completed form', 'medical reports', 'payslips', 'id');
                    break;
                case 'group life hospital cash':
                    $claimDocs = array('completed form', 'id', 'hospital dishcarge summary', 'hospital invoice receipts');
                    break;
                case 'permanent total disability':
                    $claimDocs = array('completed form', 'medical report', 'payslips', 'id', 'police abstract');
                    break;
                case 'group life total permanent disablility':
                    $claimDocs = array('dosh 1 2', 'dosh 4', 'payslips', 'medical bill', 'sick off sheet', 'id', 'witness statement', 'police abstract');
                    break;
                case 'group life credit':
                    $claimDocs = array('death certificate', 'burial permit', 'id', 'loan application and agreement', 'loan repayment statement', 'post mortem', 'police abstract');
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
                        case 'group life last expense':
                            $query = "INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`national_id_passport`,`original_burial_permit`,`created_at`,`date_of_loss`)
                                                VALUES('$claim_id','$full_name','$phone','$email','$location','$claim_type','$documentsKeys[0]',' $documentsKeys[1]','$documentsKeys[2]','$created_at','$date_of_loss') ";
                            break;
                        case 'group life benefit':
                            $query = "INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`id`,`payslips`,`police_abstract`,`created_at`,`date_of_loss`)
                                        VALUES('$claim_id','$full_name','$phone','$email','$location','$claim_type','$documentsKeys[0]',' $documentsKeys[1]',' $documentsKeys[2]',' $documentsKeys[3]','$created_at','$date_of_loss') ";
                            break;
                        case 'group life critical illness':
                            $query = "INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`medical_report`,`payslips`,`national_id`,`created_at`,`date_of_loss`)
                                        VALUES('$claim_id','$full_name','$phone','$email','$location','$claim_type','$documentsKeys[0]',' $documentsKeys[1]','$documentsKeys[2]','$documentsKeys[3]','$created_at','$date_of_loss') ";
                            break;
                        case 'group life hospital cash':
                            $query = "INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`national_id_passport`,`hospital_dishcharge_summary`,`hospital_invoice_receipt`,`created_at`,`date_of_loss`)
                                        VALUES('$claim_id','$full_name','$phone','$email','$location','$claim_type','$documentsKeys[0]',' $documentsKeys[1]','$documentsKeys[2]','$documentsKeys[3]','$created_at','$date_of_loss') ";
                            break;
                        case 'permanent total disability':
                            $query = "INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`completed_form`,`medical_report`,`payslips`,`national_id_passport`,`police_abstract`,`created_at`,`date_of_loss`)
                                        VALUES('$claim_id','$full_name','$phone','$email','$location','$claim_type','$documentsKeys[0]',' $documentsKeys[1]','$documentsKeys[2]','$documentsKeys[3]','$documentsKeys[4]','$created_at','$date_of_loss') ";
                            break;
                        case 'group life total permanent disablility':
                            $query = "INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`dosh_one_two`,`dosh_four`,`payslips`,`medical_bill`,`sick_off_sheet`,`national_id_passport`,`witness_statement`,`created_at`,`date_of_loss`)
                                        VALUES('$claim_id','$full_name','$phone','$email','$location','$claim_type','$documentsKeys[0]',' $documentsKeys[1]','$documentsKeys[2]','$documentsKeys[3]','$documentsKeys[4]','$documentsKeys[5]','$documentsKeys[6]','$documentsKeys[7]','$created_at','$date_of_loss') ";
                            break;
                        case 'group life credit':
                            $query = "INSERT INTO claims_life(`claim_id`,`full_name`,`phone`,`email`,`location`,`claim_type`,`death_certificate`,`original_burial_permit`,`payslips`,`national_id_passport`,`loan_application_and_agreement`,`loan_repayment`,`post_mortem_report`,`police_abstract`,`created_at`,`date_of_loss`)
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
            echo json_encode($response);
            break;
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

    case 'agriculture_claim':
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
