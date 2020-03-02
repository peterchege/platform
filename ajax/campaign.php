<?php
require_once '../inc/db.php';
require_once '../inc/functions.php';
require_once '../inc/mails.php';
$response = array(
    'message'=>'error',
    'status'=>0,
);
switch ($_GET['mode']) {
    case 'campaign':
        if (empty($_POST['full_name'])|| !isset($_POST['full_name'])||
            empty($_POST['product_id'])||!isset($_POST['product_id'])||
            empty($_POST['phone'])||!isset($_POST['phone'])||
            empty($_POST['email'])||!isset($_POST['email'])||
            empty($_POST['location'])||!isset($_POST['location'])) {
            $response['message']='Please enter all required fields!';
        } else {
            $created_at = date('Y-m-d H:i:s');
            $product_id = filter_var(mysqli_real_escape_string($db, $_POST['product_id']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH);
            $full_name = filter_var(mysqli_real_escape_string($db, $_POST['full_name']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);
            $phone = filter_var(mysqli_real_escape_string($db, $_POST['phone']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH);
            $email = filter_var(mysqli_real_escape_string($db, $_POST['email']), FILTER_SANITIZE_EMAIL, FILTER_FLAG_STRIP_HIGH);
            $location = ((isset($_POST['location'])) ? filter_var(mysqli_real_escape_string($db, $_POST['location']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : null);

            $insert = mysqli_query($db, "INSERT INTO campaign(`leads_product_id`,`name`,`email`,`mobile`,`location`,`created_at`)
                                            VALUES('$product_id','$full_name','$email','$phone','$location','$created_at')");
            if ($insert) {
                $response['message'] = 'Thank you for your interest!';
                $response['status'] = 1;
                campaign($full_name, $email);
            } else {
                $response['message'] = 'An error occurred: ' . mysqli_error($db);
            }
        }
        echo json_encode($response);
        break;
    
    default:
        
        break;
}
