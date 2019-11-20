<?php
require_once '../inc/db.php';
require_once '../inc/functions.php';
switch ($_GET['mode']) {
    case 'insert':
        sleep(1);
        $response = array(
            'message' => 'An error occured!',
            'status' => 0
        );
        if (
            empty($_POST['full_name']) || !isset($_POST['full_name']) ||
            empty($_POST['email']) || !isset($_POST['email']) ||
            empty($_POST['phone']) || !isset($_POST['phone']) ||
            empty($_POST['location']) || !isset($_POST['location'])
        ) {
            $response['message'] = 'Please enter all required fields!';
        } else {
            $created_at = date('Y-m-d H:i:s');
            $full_name = sanitize($_POST['full_name']);
            $phone = sanitize($_POST['phone']);
            $email = sanitize($_POST['email']);
            $location = sanitize($_POST['location']);
            if (empty($_POST['property']) || !isset($_POST['property'])) {
                $response['message'] = 'Please enter property type!';
            } else {
                $property = sanitize($_POST['property']);
                if ((empty($_POST['content']) && empty($_POST['building'])) || (!isset($_POST['content']) && !isset($_POST['building']))) {
                    $response['message'] = 'Please choose content or building cover or both!';
                } else {
                    $building = ((isset($_POST['building'])) ? filter_var(mysqli_real_escape_string($db, $_POST['building']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH) : 0);
                    $content = ((isset($_POST['content'])) ? filter_var(mysqli_real_escape_string($db, $_POST['content']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH) : 0);
                    $allrisk = ((isset($_POST['allrisk'])) ? filter_var(mysqli_real_escape_string($db, $_POST['allrisk']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH) : 0);
                    $domestic = ((isset($_POST['domestic'])) ? filter_var(mysqli_real_escape_string($db, $_POST['domestic']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH) : 0);
                    $liability = ((isset($_POST['liability'])) ? filter_var(mysqli_real_escape_string($db, $_POST['liability']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH) : 0);
                    $result = $db->query("INSERT INTO  pr_dp_calculator_customer_quotations(`full_name`,`phone`,`email`,`location`,`property`,`premises`,`contents`,`all_risk`,`domestic_employee`,`liability`,`created_at`) 
                    VALUES('$full_name','$phone','$email','$location','$property','$building','$content','$allrisk','$domestic','$liability','$created_at') ");
                    if ($result) {
                        $response['status'] = 1;
                        $response['message'] = 'Thank you for your interest in our product. One of our customer service agents will contact you!';
                    } else {
                        $response['message'] = 'An error occurred: ' . mysqli_error($db);
                    }
                }
            }
        }
        echo json_encode($response);
        break;

    default:
        # code...
        break;
}
