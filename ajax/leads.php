<?php
require_once '../inc/db.php';
require_once '../inc/functions.php';

switch ($_GET['mode']) {
    case 'lead':
        # code...

        //validate from ajax request
        //universal attributes
        $created_at = date('Y-m-d H:i:s');
        $product_id = filter_var(mysqli_real_escape_string($db, $_POST['product_id']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH);
        $product_category_id = sanitize($_POST['product_category_id']);
        $full_name = filter_var(mysqli_real_escape_string($db, $_POST['full_name']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);
        $phone = filter_var(mysqli_real_escape_string($db, $_POST['phone']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH);
        $email = filter_var(mysqli_real_escape_string($db, $_POST['email']), FILTER_SANITIZE_EMAIL, FILTER_FLAG_STRIP_HIGH);
        $location = ((isset($_POST['location'])) ? filter_var(mysqli_real_escape_string($db, $_POST['location']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : '');
        //motor private and bond(value)
        $make = ((isset($_POST['make'])) ? filter_var(mysqli_real_escape_string($db, $_POST['make']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : '');
        $model = ((isset($_POST['model'])) ? filter_var(mysqli_real_escape_string($db, $_POST['model']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : '');
        $value = ((isset($_POST['value'])) ? filter_var(mysqli_real_escape_string($db, $_POST['value']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : '');
        $yom = ((isset($_POST['yom'])) ? filter_var(mysqli_real_escape_string($db, $_POST['yom']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : '');
        $more_info = ((isset($_POST['more_info'])) ? filter_var(mysqli_real_escape_string($db, $_POST['more_info']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : '');
        //travel
        $depature_date = ((isset($_POST['depature_date'])) ? filter_var(mysqli_real_escape_string($db, $_POST['depature_date']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : '');
        $return_date = ((isset($_POST['return_date'])) ? filter_var(mysqli_real_escape_string($db, $_POST['return_date']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : '');
        $destination = ((isset($_POST['destination'])) ? filter_var(mysqli_real_escape_string($db, $_POST['destination']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : '');
        //domestic
        $property = ((isset($_POST['property'])) ? filter_var(mysqli_real_escape_string($db, $_POST['property']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : '');
        $cover = ((isset($_POST['cover'])) ? filter_var(mysqli_real_escape_string($db, $_POST['cover']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : '');
        //golfers and theft
        $occupation = ((isset($_POST['occupation'])) ? filter_var(mysqli_real_escape_string($db, $_POST['occupation']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : '');
        //pet and bonds
        $pet_number = ((isset($_POST['pet_number'])) ? filter_var(mysqli_real_escape_string($db, $_POST['pet_number']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : '');

        if (isset($_POST['type'])) {
            if (is_array($_POST['type'])) {
                $type = '';
                foreach ($_POST['type'] as $list) {
                    $filtered = filter_var(mysqli_real_escape_string($db, $list), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);
                    $type .= $filtered . ',';
                }
                $type = substr($type, 0, -1);
            } else {
                $type = filter_var(mysqli_real_escape_string($db, $_POST['type']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);
            }
        }

        //corporate health
        $population_staff = ((isset($_POST['population_staff'])) ? filter_var(mysqli_real_escape_string($db, $_POST['population_staff']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : '');
        //aviation
        $max_take_off_weight = ((isset($_POST['max_take_off_weight'])) ? filter_var(mysqli_real_escape_string($db, $_POST['max_take_off_weight']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : '');
        $pilot_details = ((isset($_POST['pilot_details'])) ? filter_var(mysqli_real_escape_string($db, $_POST['pilot_details']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : '');
        $geographical_scope = ((isset($_POST['geographical_scope'])) ? filter_var(mysqli_real_escape_string($db, $_POST['geographical_scope']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH) : '');





        $insert = mysqli_query($db, "INSERT INTO products_leads(`leads_product_id`,`leads_product_category_id`,`name`,`email`,`mobile`,`location`,`make`,`model`,`value`,`yom`,`more_info`,`depature_date`,`return_date`,`destination`,`created_at`,`property`,`covers`,`occupation`,`type`,`pet_number`,`population_staff`,`max_take_off_weight`,`geographical_scope`,`pilot_details`)
                                            VALUES('$product_id','$product_category_id','$full_name','$email','$phone','$location','$make','$model','$value','$yom','$more_info','$depature_date','$return_date','$destination','$created_at','$property','$cover','$occupation','$type','$pet_number','$population_staff','$max_take_off_weight','$geographical_scope','$pilot_details')");

        if (!$insert) {
            echo mysqli_error($db);
        } else if ($insert) {
            echo 'success';
        } else {
            echo 'success';
        }

        break;

    default:
        # code...
        break;
}
