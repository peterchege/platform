<?php
require_once 'inc/db.php';
require_once 'inc/sessions.php';
require_once 'inc/functions.php';
// if (isset($_POST['book'])) {
//     $room_name = sanitize($_POST['room_name']);
//     $start_date = sanitize($_POST['start_date']);
//     $end_date = sanitize($_POST['end_date']);
//     $start_time = sanitize($_POST['start_time']);
//     $end_time = sanitize($_POST['end_time']);
//     $company_name = sanitize($_POST['company_name']);
//     $phone = sanitize($_POST['phone']);
//     $email = sanitize($_POST['email']);
//     $capacity = sanitize($_POST['capacity']);
//     $more_information = sanitize($_POST['more_information']);

//     // if (empty($room_name) || empty($start_date) || empty($end_date) || empty($start_time) || empty($end_time) || empty($company_name) || empty($phone) || empty($email) || empty($capacity)) {
//     //     $errors[] = 'Every field is required.';
//     // }
//     // if (strtotime($start_date) > strtotime($end_date)) {
//     //     $errors[] = 'Invalid date selection.';
//     // }
//     // if (strtotime($start_time) > strtotime($end_time)) {
//     //     $errors[] = 'Invalid time selection.';
//     // }
//     // if ($room_name < 1 || $room_name > 6) {
//     //     $errors[] = 'Invalid room selection.';
//     // }

//     if (empty($errors)) {
//         // run insert
//         $booking = $db->query("INSERT INTO apollo_confrence_facilities_bookings (`apollo_confrence_facilities_fk`, `start_date`, `end_date`, `start_time`, `end_time`, `company_name`, `phone_number`, `email`, `capacity`, `more_information` )
//                                 VALUES ('$room_name', '$start_date', '$end_date', '$start_time', '$end_time', '$company_name', '$phone', '$email', '$capacity', '$more_information')  ");
//         if ($booking) {
//             //$_SESSION['successMessage'] = 'Booking successful.';
//             echo "<script>
//         alert('Booking was successful.');
//     </script>";
//         } else {
//             //$_SESSION['errorMessage'] = 'An error occurred. Please try again.';
//             echo "<script>
//         alert('An error occurred. Please try again.');
//     </script>";
//         }
//     }
// }
?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>APA INSURANCE</title>
    <link rel="stylesheet" href="css/apollo_centre.css" media="screen">
    <link rel="stylesheet" href="css/modal.css" media="screen">
    <link rel="stylesheet" href="css/claim.css" media="screen">

    <?php include 'views/head_links.php'; ?>

</head>

<body>

    <!--==========================
    Header
    ============================-->
    <?php include 'views/nav.php'; ?>
    <!-- #header -->


    <!--==========================
    Intro Section
    ============================-->

    <div class="banner-home1">
        <div class="content-camp">
        </div>


        <!-- quick services -->

        <div class="quick-link text-right">

            <div class="col-12">
                <button class="btn btn-primary">
                    HOMEPAGE
                </button>
            </div>

            <div class="col-12">
                <button class="btn btn-primary">
                    SELF SERVICE LOGIN
                </button>
            </div>

            <div class="col-12">
                <button class="btn btn-primary">
                    CONTACT US
                </button>
            </div>

        </div>

    </div>
    <div class="cover-line">
        <img src="images/line.png" alt="">
    </div>




    <!-- #intro -->




    <!-- ===================================== PRODUCTS ===================================== -->
    <br><br>
    <div class="container-fluid23">
        <div class=" text-center">

            <h1>MAKE A CLAIM</h1>
            <!-- <hr class="line what"> -->
            <div class="under-line img2">
                <img src="images/line.png" alt="">
            </div>
            <br>
            <div class="col-10">
                <p>At APA Apollo, your happiness is our utmost concern.
                    That’s why, in the unfortunate event that you have to make a claim, we will make you our
                    priority. We will be there to guide you through every step of the process.
                    Please fill out the form below to start the claim process.
                </p>
            </div>
            <BR>


            <!-- select a quote banner -->

            <div class="box-quote">
                <div class="row">
                    <h3 class="text-center">Select your product that you want to make a claim on</h3>
                </div>

                <div class="container-fluid">
                    <div class="row ">

                        <a href="claim_motor.php">
                            <div class="c0l-md-4 font-awsome text-center">
                                <i class="fas fa-car"></i>
                                <p>Motor Claim</p>
                            </div>
                        </a>

                        <div class="c0l-md-4 font-awsome text-center">
                            <i class="fas fa-user-shield"></i>
                            <p>Personal & Property</p>
                        </div>

                        <div class="c0l-md-4 font-awsome text-center">
                            <i class="fas fa-heartbeat"></i>
                            <p>Health</p>
                        </div>

                        <div class="c0l-md-4 font-awsome text-center">
                            <i class="fas fa-hand-holding-heart"></i>
                            <p>Life</p>
                        </div>

                        <div class="c0l-md-4 font-awsome text-center">
                            <i class="fas fa-hand-holding-usd"></i>
                            <p>Investment</p>
                        </div>

                    </div>
                    <br>
                </div>

            </div>
            <br><br><br><br>
        </div>
    </div>
    </div>
    <!-- =====================================FOOTER===================================== -->
    <?php include 'views/footer.php'; ?>
    <!-- #footer -->


    <!-- loading scripts -->
    <?php
    require_once 'inc/scripts.php';
    ?>
</body>

</html>