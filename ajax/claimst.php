<?php
require_once '../inc/db.php';
require_once '../inc/functions.php';
require_once '../inc/mails.php';

switch ($_GET['request']) {
    case 'motor_claim_upload':

        sleep(1);

        $full_name = sanitize($_POST['full_name']);
        $phone = sanitize($_POST['phone']);
        $email = sanitize($_POST['email']);
        $claim_type = sanitize($_POST['motor_claim_type']);
        $registration_number = sanitize($_POST['registration_number']);
        $product_id = sanitize($_POST['product_id']);
        $product_category_id = sanitize($_POST['product_category_id']);
        $motor_claim_type = sanitize($_POST['motor_claim_type']);
        $bemail = sanitize($_POST['bemail']);
        $bname = sanitize($_POST['bname']);
        if (isset($_POST['date_of_loss'])) {
            $date_of_loss = strtotime(sanitize($_POST['date_of_loss']));
            $date_of_loss = date('Y-m-d', $date_of_loss);
        } else {
            $date_of_loss = '';
        }
        $created_at = date('Y-m-d H:i:s');

        $claim_id = randomstring(10);
        $claimDocs = array('completed claim form', 'windscreen photo', 'vehicle photo', 'police abstract');
        $extensions = array("doc", "docx", "pdf", "jpg", "jpeg");
        $errors = array(
            'detail' => '',
        );
        $filesnames = [];

        function checkSize()
    {
            global $filesize;
            foreach ($_FILES['documents']['name'] as $key => $value) {
                if ($filesize > 5242880) {
                    return 0;
                } else {
                    return 1;
                }
            }
        }

        function checkExt()
    {
            foreach ($_FILES['documents']['name'] as $key => $value) {
                global $extensions;
                $fileext = explode('.', $_FILES['documents']['name'][$key]);
                $fileext = end($fileext);
                $fileext = strtolower($fileext);

                if (!in_array($fileext, $extensions)) {
                    return 0;
                } else {
                    return 1;
                }
            }
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
                $insert = $db->query("INSERT INTO claims_motor_upload(`claim_id`,`full_name`,`phone`,`email`,`registration_number`,`motor_claim_type`,`completed_form`,`police_abstract`,`driving_license`,`log_book`,`product_id`,`product_category_id`,`detailed_statement`,`created_at`,`date_of_loss`)
                                            VALUES('$claim_id','$full_name','$phone','$email','$registration_number','$claim_type','$documentsKeys[0]',' $$documentsKeys[1]','$documentsKeys[2]','$documentsKeys[2]','$product_id','$product_category_id','$documentsKeys[2]','$created_at','$date_of_loss')  ");
                $response['message'] = 'Thanks. We\'ll get back to you as soon as we can.';
                $response['status'] = 1;
            } else {
                $response['message'] = 'An error occurred while sending email. Please try again later!';
                $response['status'] = 0;
            }
        }

        //return response
        echo json_encode($response);
        break;

}
