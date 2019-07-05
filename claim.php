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
                    GET A QUOTE
                </button>
            </div>

            <div class="col-12">
                <button class="btn btn-primary">
                    MAKE A CLAIM
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

                <div class="container">
                    <div class="row ">
                        <div class="c0l-md-4 font-awsome text-center" data-target="#modal-full" uk-toggle>
                            <i class="fas fa-user-shield"></i>
                            <p>Personal</p>
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
                        <div class="c0l-md-4 font-awsome text-center">
                            <i class="fas fa-store"></i>
                            <p>Commercial</p>
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


    <!-- ===================================== PERSONAL MODAL ===================================== -->

    <div id="modal-full" class="uk-modal-full" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
            <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
                <div class="uk-background-cover" style="background-image: url('img/'); 
                background-size: cover; " uk-height-viewport>

                    <div class="box-contain">


                        <div class="uk-margin personal">
                            <h2>PERSONAL INSURANCE</h2>
                            <div class="uk-form-controls">
                                <label><input class="uk-radio" type="radio" name="radio0" checked> Motor Private</label><br>
                                <label><input class="uk-radio" type="radio" name="radio1"> Personal Accident</label><br>
                                <label><input class="uk-radio" type="radio" name="radio2"> Student Personal Accident</label><br>
                                <label><input class="uk-radio" type="radio" name="radio4"> Domestic Package</label><br>
                                <label><input class="uk-radio" type="radio" name="radio5"> Pet </label><br>
                                <label><input class="uk-radio" type="radio" name="radio6"> Golfers </label>
                            </div>
                        </div>
                        <div class="head-layer">
                        </div>
                    </div>
                </div>
                <div class="uk-padding-large">
                    <form class="form-container" action="" method="POST">
                        <br>
                        <h3 for="inputAddress" class="comp-detail">PERSONALS</h3>
                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="inputAddress">Name</label>
                                    <input name="company_name" id="company_name" type="text" class="form-control" placeholder="Full Name" value="" selected>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputAddress2">Phone Number</label>
                                    <input name="phone" id="phone" type="tel" class="form-control" placeholder="07XX XXX 537" value="">
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="inputAddress">Email Address</label>
                                    <input name="email" id="email" type="email" class="form-control" placeholder="example@gmail.com" value="">
                                </div>
                                <div class=" form-group col-md-6">
                                    <label for="inputAddress2">Location</label>
                                    <input name="capacity" id="capacity" type="text"  class="form-control" placeholder="Nairobi" value="">
                                </div>
                            </div>

                        </div>

                        <hr>
                        <div class="form-group col-md-12">
                            <h3 for="inputAddress">CLAIM DETAILS</h3>
                        </div>

                        <div class="container">
                            <div class="row">
                                <div class=" form-group col-md-12">
                                    <label for="inputAddress2">Policy Number(optional)</label>
                                    <input name="capacity" type="number" class="form-control" id="inputAddress2" placeholder="APN/743234" value="<?= ((isset($capacity)) ? $capacity : '') ?>">
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="inputAddress">Type of Claim</label>
                                    <select class="form-control" id="exampleFormControlSelect1">
                                        <option>Accident</option>
                                        <option>WindScreen</option>
                                        <option>Theft(Partial)</option>
                                        <option>Theft(Total loss)</option>
                                        <option>Theft</option>
                                        <option>Floods</option>
                                        
                                    </select>                                
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="inputAddress">Registration Number</label>
                                    <input name="text" type="Vehicle_value" class="form-control" id="inputAddress" placeholder="KBQ XXX" value="<?= ((isset($email)) ? $email : '') ?>">
                                </div>
                            </div>

                            <div class="row book-btn">
                                <div class="col-md-12"><br>
                                    <button class="btn btn-primary" data-target="#modal-close-outside" uk-toggle="target: #modal-close-outside">SUBMIT CLAIM</button>
                                </div>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>

    <!-- ===================================== Claim Remarks ===================================== -->

    <!-- This is the modal with the outside close button -->
    <div id="modal-close-outside" uk-modal>
        <div class="uk-modal-dialog uk-modal-body">
            <button class="uk-modal-close-outside" type="button" uk-close></button>
            <p class="uk-modal-title">
                <div class="alert alert-success" role="alert">
                    Sucessfull submited
                </div>
</p>
            <p>Thank you for providing us with detail of your claim. One of our agents will contact you 
                shortly to guide you through the process. To help us process your claim faster,
                please download and complete the claim form and prepare the following documentation:
                    <ol>
                        <li>Claim form (<a href="#">Click here to download</a>)</li>
                        <li>Police Abstract</li>
                        <li>PSV DL</li>
                        <li>Copy of the Log Book (Insured name)</li>
                        <li>ID/Passport</li>
                    </ol>
            </p>
        </div>
    </div>

    <!-- loading scripts -->
    <?php
    require_once 'inc/scripts.php';
    ?>
</body>

</html>