<?php
require_once '../inc/db.php';
require_once '../inc/functions.php';

switch ($_GET['mode']) {
    case 'lead':
        # code...

        //validate
        $full_name = filter_var(mysqli_real_escape_string($db, $_POST['full_name']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);
        $phone = filter_var(mysqli_real_escape_string($db, $_POST['phone']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH);
        $email = filter_var(mysqli_real_escape_string($db, $_POST['email']), FILTER_SANITIZE_EMAIL, FILTER_FLAG_STRIP_HIGH);
        $location = filter_var(mysqli_real_escape_string($db, $_POST['location']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);
        $vehicle_make = filter_var(mysqli_real_escape_string($db, $_POST['vehicle_make']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);
        $vehicle_model = filter_var(mysqli_real_escape_string($db, $_POST['vehicle_model']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);
        $vehicle_value = filter_var(mysqli_real_escape_string($db, $_POST['vehicle_value']), FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_STRIP_HIGH);
        $yom = filter_var(mysqli_real_escape_string($db, $_POST['yom']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH);
        $more_info = filter_var(mysqli_real_escape_string($db, $_POST['more_info']), FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);
        $product_id = filter_var(mysqli_real_escape_string($db, $_POST['product_id']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH);
        $product_category_id = sanitize($_POST['product_category_id']);


        $insert = mysqli_query($db, "INSERT INTO products_leads(`leads_product_id`,`leads_product_category_id`,`name`,`email`,`mobile`,`location`,`make`,`model`,`value`,`yom`,`more_info`)
                                            VALUES('$product_id','$product_category_id','$full_name','$email','$phone','$location','$vehicle_make','$vehicle_model','$vehicle_value','$yom','$more_info')");
        if (!$insert) {
            echo mysqli_error($db);
        } else if ($insert) {
            echo 'success';
        } else {
            echo 'error';
        }

        //insert to db


        //send message response
        break;

    default:
        # code...
        break;
}
