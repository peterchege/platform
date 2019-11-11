<?php
require_once '../inc/db.php';
require_once '../inc/functions.php';

switch ($_GET['mode']) {
    case 'lead':
        sleep(1);
        //validate from ajax request
        //universal attributes
        $created_at = date('Y-m-d H:i:s');
        $product_id = filter_var(mysqli_real_escape_string($db, $_POST['product_id']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH);
        $product_category_id = sanitize($_POST['product_category_id']);
        $full_name = filter_var(mysqli_real_escape_string($db, $_POST['full_name']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);
        $phone = filter_var(mysqli_real_escape_string($db, $_POST['phone']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH);
        $email = filter_var(mysqli_real_escape_string($db, $_POST['email']), FILTER_SANITIZE_EMAIL, FILTER_FLAG_STRIP_HIGH);
        $location = ((isset($_POST['location'])) ? filter_var(mysqli_real_escape_string($db, $_POST['location']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : NULL);
        //motor private and bond(value)
        $make = ((isset($_POST['make'])) ? filter_var(mysqli_real_escape_string($db, $_POST['make']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : NULL);
        $model = ((isset($_POST['model'])) ? filter_var(mysqli_real_escape_string($db, $_POST['model']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : NULL);
        $value = ((isset($_POST['value'])) ? filter_var(mysqli_real_escape_string($db, $_POST['value']), FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_STRIP_HIGH) : 0);
        $yom = ((isset($_POST['yom'])) ? filter_var(mysqli_real_escape_string($db, $_POST['yom']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : NULL);
        $more_info = ((isset($_POST['more_info'])) ? filter_var(mysqli_real_escape_string($db, $_POST['more_info']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : NULL);

        //domestic
        $property = ((isset($_POST['property'])) ? filter_var(mysqli_real_escape_string($db, $_POST['property']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : NULL);
        $cover = ((isset($_POST['cover'])) ? filter_var(mysqli_real_escape_string($db, $_POST['cover']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : NULL);
        //golfers and theft
        $occupation = ((isset($_POST['occupation'])) ? filter_var(mysqli_real_escape_string($db, $_POST['occupation']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : NULL);
        //pet and bonds and livestock
        $number = ((isset($_POST['number'])) ? filter_var(mysqli_real_escape_string($db, $_POST['number']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH) : 0);
        //life product leads
        $period = ((isset($_POST['period'])) ? filter_var(mysqli_real_escape_string($db, $_POST['period']), FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_STRIP_HIGH) : 0);
        $age = ((isset($_POST['age'])) ? filter_var(mysqli_real_escape_string($db, $_POST['age']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : NULL);

        if (isset($_POST['type'])) {
            if (is_array($_POST['type'])) {
                $type = '';
                foreach ($_POST['type'] as $list) {
                    $filtered = ((isset($_POST['type'])) ? filter_var(mysqli_real_escape_string($db, $list), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : NULL);
                    $type .= $filtered . ',';
                }
                $type = substr($type, 0, -1);
            } else if (!is_array($_POST['type'])) {
                $type = ((isset($_POST['type'])) ? filter_var(mysqli_real_escape_string($db, $_POST['type']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : NULL);
            } elseif (!isset($_POST['type'])) {
                $type = ((isset($_POST['type'])) ? filter_var(mysqli_real_escape_string($db, $_POST['type']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : NULL);
            }
        } else {
            $type = '';
        }

        //corporate health
        $population_staff = ((isset($_POST['population_staff'])) ? filter_var(mysqli_real_escape_string($db, $_POST['population_staff']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH) : 0);
        //aviation
        $max_take_off_weight = ((isset($_POST['max_take_off_weight'])) ? filter_var(mysqli_real_escape_string($db, $_POST['max_take_off_weight']), FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_STRIP_HIGH) : 0);
        $pilot_details = ((isset($_POST['pilot_details'])) ? filter_var(mysqli_real_escape_string($db, $_POST['pilot_details']), FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_STRIP_HIGH) : 0);
        $geographical_scope = ((isset($_POST['geographical_scope'])) ? filter_var(mysqli_real_escape_string($db, $_POST['geographical_scope']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : NULL);
        //message/contact us
        $message = ((isset($_POST['message'])) ? filter_var(mysqli_real_escape_string($db, $_POST['message']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : NULL);
        //afya
        $inpatient = ((isset($_POST['inpatient'])) ? filter_var(mysqli_real_escape_string($db, $_POST['inpatient']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH) : 0);
        //company
        $company = ((isset($_POST['company'])) ? filter_var(mysqli_real_escape_string($db, $_POST['company']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : 0);

        $insert = mysqli_query($db, "INSERT INTO products_leads(`leads_product_id`,`leads_product_category_id`,`name`,`email`,`mobile`,`location`,`make`,`model`,`value`,`yom`,`more_info`,`destination`,`created_at`,`property`,`covers`,`occupation`,`type`,`number`,`population_staff`,`max_take_off_weight`,`geographical_scope`,`pilot_details`,`period`,`age`,`inpatient`,`message`,`company`)
                                            VALUES('$product_id','$product_category_id','$full_name','$email','$phone','$location','$make','$model','$value','$yom','$more_info','$destination','$created_at','$property','$cover','$occupation','$type','$number','$population_staff','$max_take_off_weight','$geographical_scope','$pilot_details','$period','$age','$inpatient','$message','$company')");

        if (!$insert) {
            echo mysqli_error($db);
        } else if ($insert) {
            echo 'success';
        } else {
            echo 'error';
        }

        break;
    case 'feedback':
        sleep(1);
        $response = array(
            'message' => 'An error occured',
            'status' => 0
        );
        if (
            empty($_POST['full_name']) || !isset($_POST['full_name']) ||
            empty($_POST['phone']) || !isset($_POST['phone']) ||
            empty($_POST['email']) || !isset($_POST['email']) ||
            empty($_POST['branch']) || !isset($_POST['branch']) ||
            empty($_POST['department']) || !isset($_POST['department']) ||
            empty($_POST['feedback']) || !isset($_POST['feedback'])
        ) {
            $response['message'] = 'Please fill all of the required fields!';
        } else {
            $created_at = date('Y-m-d H:i:s');
            $full_name = filter_var(mysqli_real_escape_string($db, ($_POST['full_name'])), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);
            $phone = filter_var(mysqli_real_escape_string($db, ($_POST['phone'])), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);
            $phone = filter_var(mysqli_real_escape_string($db, ($_POST['phone'])), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);
            $extension = filter_var(mysqli_real_escape_string($db, ($_POST['extension'])), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);
            $email = filter_var(mysqli_real_escape_string($db, ($_POST['email'])), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);
            $branch = filter_var(mysqli_real_escape_string($db, ($_POST['branch'])), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);
            $department = filter_var(mysqli_real_escape_string($db, ($_POST['department'])), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);
            $feedback = filter_var(mysqli_real_escape_string($db, ($_POST['feedback'])), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);
            $insert = mysqli_query($db, "INSERT INTO feedback(`full_name`,`phone`,`extension`,`branch`,`department`,`email`,`feedback`,`created_at`)
                                                        VALUES('$full_name','$phone','$extension','$branch','$department','$email','$feedback','$created_at') ");
            if ($insert) {
                $response['message'] = 'Thank you for your response!';
                $response['status'] = 1;
            } else {
                $response['message'] = 'An error occurred: ' . mysqli_error($db);
            }
        }

        echo json_encode($response);
        break;
    default:
        # code...
        break;
}
