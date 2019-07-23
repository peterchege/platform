<?php
require_once '../inc/db.php';
require_once '../inc/functions.php';
switch ($_GET['mode']) {
    case 'insert':
        sleep(5);
        $name = sanitize($_POST['name']);
        $phone = sanitize($_POST['phone']);
        $email = sanitize($_POST['email']);
        $location = sanitize($_POST['location']);
        if (empty($name || $phone || $email || $location)) {
            echo 'These fields are required';
        } else {
            $result = $db->query("INSERT INTO  customer_quotation(`name`,`phone`,`email`,`location`) VALUES('$name','$phone','$email','$location') ");
            if ($result) {
                echo 'success';
            } else {
                echo 'error';
            }
        }

        break;

    default:
        # code...
        break;
}
