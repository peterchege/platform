<?php


require_once '../inc/db.php';
switch ($_GET['request']) {
    case 'book':
        sleep(1);
        $response = array(
            'status' => 0,
            'message' => 'Error'
        );
        if (
            !isset($_POST['room_name']) ||
            !isset($_POST['start_date']) ||
            !isset($_POST['end_date']) ||
            !isset($_POST['start_time']) ||
            !isset($_POST['end_time']) ||
            !isset($_POST['company_name']) ||
            !isset($_POST['phone']) ||
            !isset($_POST['email']) ||
            !isset($_POST['capacity']) ||
            empty($_POST['room_name']) ||
            empty($_POST['start_date']) ||
            empty($_POST['end_date']) ||
            empty($_POST['start_time']) ||
            empty($_POST['end_time']) ||
            empty($_POST['company_name']) ||
            empty($_POST['phone']) ||
            empty($_POST['email']) ||
            empty($_POST['capacity'])
        ) {
            $response['message'] = 'Fill all of the required fields!';
        } else {
            $room_name = mysqli_real_escape_string($db, $_POST['room_name']);
            $room_namec = filter_var($room_name, FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH);

            $start_date = mysqli_real_escape_string($db, $_POST['start_date']);
            $start_datec = filter_var($start_date, FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);

            $end_date = mysqli_real_escape_string($db, $_POST['end_date']);
            $end_datec = filter_var($end_date, FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);

            $start_time = mysqli_real_escape_string($db, $_POST['start_time']);
            $start_timec = filter_var($start_time, FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);

            $end_time = mysqli_real_escape_string($db, $_POST['end_time']);
            $end_timec = filter_var($end_time, FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);

            $company_name = mysqli_real_escape_string($db, $_POST['company_name']);
            $company_namec = filter_var($company_name, FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);

            $phone = mysqli_real_escape_string($db, $_POST['phone']);
            $phonec = filter_var($phone, FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);

            $email = mysqli_real_escape_string($db, $_POST['email']);
            $emailc = filter_var($email, FILTER_SANITIZE_EMAIL, FILTER_FLAG_STRIP_HIGH);

            $capacity = mysqli_real_escape_string($db, $_POST['capacity']);
            $capacityc = filter_var($capacity, FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);

            $more_information = mysqli_real_escape_string($db, $_POST['more_information']);
            $more_informationc = filter_var($more_information, FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_HIGH);

            //insert into database
            $book = mysqli_query($db, " INSERT INTO apollo_confrence_facilities_bookings (`apollo_confrence_facilities_fk`, `start_date`, `end_date`, `start_time`, `end_time`, `company_name`, `phone_number`, `email`, `capacity`, `more_information` )
                                    VALUES ('$room_namec', '$start_datec', '$end_datec', '$start_timec', '$end_timec', '$company_namec', '$phonec', '$emailc', '$capacityc', '$more_informationc') ");
            //send message back to ajax
            if ($book) {
                $response['message'] = 'Booking made successfully!';
                $response['status'] = 1;
            } else {
                echo '<div class="alert alert-danger">An error occurred. Please try again.</div>';
                $response['message'] = 'An error occurred. Please try again!';
            }
            $db->close();
        }
        echo json_encode($response);
        break;

    default:
        # code...
        break;
}
