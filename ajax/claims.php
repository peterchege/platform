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
        if (!isset($_POST['full_name']) || empty($_POST['full_name'] || !isset($_POST['phone']) || $_POST['phone'] || !isset($_POST['email']) ||  $_POST['email'] || !isset($_POST['location']) || $_POST['location'] || !isset($_POST['registration_number']) || $_POST['registration_number'] ||  !isset($_POST['claim_event']) || $_POST['claim_event'] ||
            !isset($_POST['product_id']) ||   $_POST['product_id'] || !isset($_POST['product_category_id']) || empty($_POST['product_category_id']) || !isset($_POST['motor_claim_type']) ||  $_POST['motor_claim_type'])) {
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

    default:
        # code...
        break;
}
