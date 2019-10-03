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
        if (empty($_POST['full_name'] || $_POST['phone'] || $_POST['email'] || $_POST['location'] || $_POST['registration_number'] || $_POST['claim_event'] || $_POST['product_id'] || $_POST['product_category_id'] || $_POST['motor_claim_type'])) {
            $response['message'] = 'Please enter all required fields.';
            $status = 0;
            exit;
        }

        $full_name = sanitize($_POST['full_name']);
        $phone = sanitize($_POST['phone']);
        $email = sanitize($_POST['email']);
        $location = sanitize($_POST['location']);
        $registration_number = sanitize($_POST['registration_number']);
        $claim_event = sanitize($_POST['claim_event']);
        $product_id = sanitize($_POST['product_id']);
        $product_category_id = sanitize($_POST['product_$product_category_id']);
        $motor_claim_type = sanitize($_POST['motor_claim_type']);
        $created_at = date('Y-m-d H:i:s');

        if (filter_var($email, FILTER_VALIDATE_EMAIL) === false) {
            $response['message'] = 'Please enter a valid email.';
            $status = 0;
        }

        // insert to db
        $query = "INSERT INTO claims_motor(`full_name`,`phone`,`email`,`location`,`registration_number`,`claim_event`,`product_id`,`product_category_id`,`motor_claim_type`,`created_at`) 
                    VALUES('$full_name','$phone','$email','$location','$registration_number','$claim_event','$product_id','$product_category_id','$motor_claim_type','$created_at')  ";

        break;

    default:
        # code...
        break;
}
