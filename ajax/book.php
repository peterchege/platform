<?php


require_once '../inc/db.php';
require_once '../inc/functions.php';
require_once '../inc/mails.php';
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
            $date = date('D, d M Y H:i:s');
            $roomvalue = mysqli_fetch_array(mysqli_query($db, "SELECT name FROM apollo_confrence_facilities WHERE id = '$room_namec' LIMIT 1"));

            //mail
            $subject ='APOLLO CONFRENCE FACILITY BOOKING MADE ON '.$date;
            $body = $company_namec .' just sent a booking request. Details are as follows: '. '<br><br>';
            $body.= 'Facility: '. $roomvalue['name'].'<br>';
            $body.= 'Start date: '. $start_datec.'<br>';
            $body.= 'Start time: '. $start_timec.'<br>';
            $body.= 'End date: '. $end_datec.'<br>';
            $body.= 'End time: '. $end_timec.'<br>';
            $body.= 'phone: '. $phonec.'<br>';
            $body.= 'Email: '. $emailc.'<br>';
            $body.= 'Capacity: '. $capacityc.'<br>';
            if (!empty($more_informationc)):
            $body.= 'More information: '. $more_informationc.'<br>'; else:
            $body.='';
            endif;
            $book_mail = apollo_book(
                $room_namec,
                $start_datec,
                $end_datec,
                $start_timec,
                $end_timec,
                $company_namec,
                $phonec,
                $emailc,
                $capacityc,
                $more_informationc,
                $subject,
                $body
            );

            if ($book_mail==1):
        $book = mysqli_query($db, " INSERT INTO apollo_confrence_facilities_bookings (`apollo_confrence_facilities_fk`, `start_date`, `end_date`, `start_time`, `end_time`, `company_name`, `phone_number`, `email`, `capacity`, `more_information` )
        VALUES ('$room_namec', '$start_datec', '$end_datec', '$start_timec', '$end_timec', '$company_namec', '$phonec', '$emailc', '$capacityc', '$more_informationc') ");
            $response['message'] = 'Booking made successfully!';
            $response['status'] = 1; else:
            $response['message'] = 'An error occurred. Please try again!';
            endif;
            $db->close();
        }
        echo json_encode($response);
        break;

    default:
        # code...
        break;
}
