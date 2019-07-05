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
    <link rel="stylesheet" href="css/product.css" media="screen">

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

    <div class="banner-home">
        <div class="content-camp">
            <h2>
                REQUEST A QUOTE ONLINE TODAY AND<br> RECIEVE A 5% DISCOUNT ON YOUR PREMIUMS
            </h2>
        </div>

        <!-- select a quote banner -->

        <div class="box-quote">
            <div class="row">
                <h3 class="text-center">Select a product to request a Free Quote</h3>
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

        <!-- quick services -->

        <div class="quick-link text-right">
            <div class="col-12">
                <button class="btn btn-primary">
                    GET A QUOTE
                </button>
            </div>

            <div class="col-12">
                <a href= "claim.php">
                    <button class="btn btn-primary">
                        MAKE A CLAIM
                    </button>
                </a>    
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

            <div class="col-12">
                <!-- <p class="text-no">0709 912 777</p> -->
                <button class="btn btn-primary">
                    0709 912 777
                </button>
            </div>
        </div>

    </div>
    <div class="cover-line">
        <img src="images/line.png" alt="">
    </div>




    <!-- #intro -->




    <!-- ===================================== PRODUCTS ===================================== -->

    <div class="container-fluid23">
        <div class="product text-center">

            <h1>WHAT WE OFFER</h1>
            <!-- <hr class="line what"> -->
            <div class="under-line img2">
                <img src="images/line.png" alt="">
            </div>

            <!-- New design for what we offer -->

            <div class="container">

                <div class="row row-product1">
                    <div class="col-md-4 prod">
                        <div class="box-container-img prod-1">
                            <div class="overlay">
                            </div>
                        </div>
                        <div class="head-container">
                            <h2>Travel Insurance</h2>
                        </div>
                        <br>
                        <p class="text-justify">Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis magnam,
                            sapiente sit mollitia quaerat suscipit vitae.
                        </p>
                        <!-- button click -->
                        <div class="row prod-btn">
                            <div class="col-6">
                                <a href class="btn btn-primary">Get Cover</a>
                            </div>

                            <div class="col-6 text-left prod-lf">
                                <a href class="btn btn-primary prod-grey">Read More</a>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-4 prod">
                        <div class="box-container-img prod-2">
                            <div class="overlay">
                            </div>
                        </div>
                        <div class="head-container">
                            <h2>Motor Private insurance</h2>
                        </div>
                        <br>
                        <p class="text-justify">Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis magnam,
                            sapiente sit mollitia quaerat suscipit vitae.
                        </p>
                        <!-- button click -->
                        <div class="row prod-btn">
                            <div class="col-6">
                                <a href class="btn btn-primary">Get Cover</a>
                            </div>

                            <div class="col-6 text-left prod-lf">
                                <a href class="btn btn-primary prod-grey">Read More</a>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-4 prod">
                        <div class="box-container-img prod-3">
                            <div class="overlay">
                            </div>
                        </div>
                        <div class="head-container">
                            <h2> Family Health Cover</h2>
                        </div>
                        <br>
                        <p class="text-justify">Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis magnam,
                            sapiente sit mollitia quaerat suscipit vitae.
                        </p>
                        <!-- button click -->
                        <div class="row prod-btn">
                            <div class="col-6">
                                <a href class="btn btn-primary">Get Cover</a>
                            </div>

                            <div class="col-6 text-left prod-lf">
                                <a href class="btn btn-primary prod-grey">Read More</a>
                            </div>

                        </div>
                    </div>
                </div>
                
                <!-- NEW ROW OF PRODUCTS -->
                <div class="row row-product1">
                    <div class="col-md-4 prod">
                        <div class="box-container-img prod-4">
                            <div class="overlay">
                            </div>
                        </div>
                        <div class="head-container">
                            <h2>Marine Insurance</h2>
                        </div>
                        <br>
                        <p class="text-justify">Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis magnam,
                            sapiente sit mollitia quaerat suscipit vitae.
                        </p>
                        <!-- button click -->
                        <div class="row prod-btn">
                            <div class="col-6">
                                <a href class="btn btn-primary">Get Cover</a>
                            </div>

                            <div class="col-6 text-left prod-lf">
                                <a href class="btn btn-primary prod-grey">Read More</a>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-4 prod">
                        <div class="box-container-img prod-5">
                            <div class="overlay">
                            </div>
                        </div>
                        <div class="head-container">
                            <h2>Motor Commercial Cover</h2>
                        </div>
                        <br>
                        <p class="text-justify">Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis magnam,
                            sapiente sit mollitia quaerat suscipit vitae.
                        </p>
                        <!-- button click -->
                        <div class="row prod-btn">
                            <div class="col-6">
                                <a href class="btn btn-primary">Get Cover</a>
                            </div>

                            <div class="col-6 text-left prod-lf">
                                <a href class="btn btn-primary prod-grey">Read More</a>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-4 prod">
                        <div class="box-container-img prod-6">
                            <div class="overlay">
                            </div>
                        </div>
                        <div class="head-container">
                            <h2> Livestock Insurance</h2>
                        </div>
                        <br>
                        <p class="text-justify">Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis magnam,
                            sapiente sit mollitia quaerat suscipit vitae.
                        </p>
                        <!-- button click -->
                        <div class="row prod-btn">
                            <div class="col-6">
                                <a href class="btn btn-primary">Get Cover</a>
                            </div>

                            <div class="col-6 text-left prod-lf">
                                <a href class="btn btn-primary prod-grey">Read More</a>
                            </div>

                        </div>
                    </div>
                </div>


            </div>



            <!-- <p class="container content-offer wow fadeInUp">The following are some of the products we offer:
            </p> -->
            <!-- <div class="container-fluid">
                <div class="row row-product">

                    <div class="col-03  product-box prd-2 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="color-overlay"></div>
                        <div class="wrapper">
                            <div class="content">
                                <h3>Travel Insurance</h3>
                                <p>Explore wild possibilities and adventures unbothered!
                                    Whether you are headed for a business trip or a trip of a lifetime.</p>
                            </div>
                            <div class="row selection-btn">
                                <div class="col-6">
                                    <div class="btn-primary  btn-mine" data-toggle="modal" data-target="#exampleModal">
                                        <a href="https://portal.apainsurance.org/GISPORTAL/travel/sts/about-trip/1">
                                            <p>Get Cover</p>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="btn-mine red-b">
                                        <a href="product_detail_travel.php">
                                            <p>Read more</p>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-03  product-box prd-5 wow fadeInUp" data-wow-delay="0.2s">
                        <div class="color-overlay"></div>
                        <div class="wrapper">

                            <div class="content">
                                <h3>Motor private Cover</h3>
                                <p>Living a healthy stress free life is every persons dream. A healthy family is a happy
                                    family.</p>
                            </div>

                            <div class="row selection-btn">
                                <div class="col-6">
                                    <div class="btn-primary  btn-mine" data-toggle="modal" data-target="#exampleModal">
                                        <a href="https://portal.apainsurance.org/GISPORTAL/motor/quote/4">
                                            <p class="text-center">Get Cover</p>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="btn-mine red-b">
                                        <a href="product_motor_private.php">
                                            <p class="text-center">Read more</p>
                                        </a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="col-03  product-box prd-1 wow fadeInUp" data-wow-delay="0.2s">
                        <div class="color-overlay"></div>
                        <div class="wrapper">

                            <div class="content">
                                <h3>Family Health Care</h3>
                                <p>Living a healthy stress free life is every persons dream. A healthy family is a happy
                                    family.</p>
                            </div>

                            <div class="row selection-btn">
                                <div class="col-6">
                                    <div class="btn-primary  btn-mine" data-toggle="modal" data-target="#exampleModal">
                                        <a href="#">
                                            <p>Get Cover</p>
                                        </a>

                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="btn-mine red-b">
                                        <a href="product_detail_jamii.php">
                                            <p>Read more</p>
                                        </a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="col-03  product-box prd-6a wow fadeInUp" data-wow-delay="0.3s">
                        <div class="color-overlay"></div>
                        <div class="wrapper">
                            <div class="content">
                                <h3>Personal Accident</h3>
                                <p>Explore wild possibilities and adventures unbothered!
                                    Whether you are headed for a business trip or a trip of a lifetime.</p>
                            </div>
                            <div class="row selection-btn">
                                <div class="col-6">
                                    <div class="btn-primary  btn-mine" data-toggle="modal" data-target="#exampleModal">
                                        <p class="text-center">Get Cover</p>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="btn-mine red-b">
                                        <a href="product_detail_travel.php">
                                            <p class="text-center">Read more</p>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="row row-product">

                    <div class="col-03 product-box prd-3 wow fadeInUp " data-wow-delay="0.4s">
                        <div class="color-overlay"></div>
                        <div class="wrapper">
                            <div class="content">
                                <h3>Marine Insurance</h3>
                                <p>Sail your goods across different regions with no worry.
                                    This cover is crafted for both individuals and corporates
                            </div>
                            <div class="row selection-btn">
                                <div class="col-6">
                                    <div class="btn-primary  btn-mine" data-toggle="modal" data-target="#exampleModal">
                                        <a href="https://portal.apainsurance.org/GISPORTAL/auth">
                                            <p>Get Cover</p>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="btn-mine red-b">
                                        <a href="product_detail_marine.php">
                                            <p>Read more</p>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-03  product-box prd-5a wow fadeInUp" data-wow-delay="0.2s">
                        <div class="color-overlay"></div>
                        <div class="wrapper">

                            <div class="content">
                                <h3>Motor Commercial Cover</h3>
                                <p>Living a healthy stress free life is every persons dream. A healthy family is a happy
                                    family.</p>
                            </div>

                            <div class="row selection-btn">
                                <div class="col-6">
                                    <div class="btn-primary  btn-mine" data-toggle="modal" data-target="#exampleModal">
                                        <a href="https://portal.apainsurance.org/GISPORTAL/motor/quote/4">
                                            <p class="text-center">Get Cover</p>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="btn-mine red-b">
                                        <a href="product_detail_motor.php">
                                            <p class="text-center">Read more</p>
                                        </a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="col-03  product-box prd-4 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="color-overlay"></div>
                        <div class="wrapper">
                            <div class="content">
                                <h3>Crop Insurance</h3>
                                <p>Your crops and livestock are your source of income and guaranteeing their safety
                                    should
                                    bring you ultimate happiness.</p>
                            </div>
                            <div class="row selection-btn">
                                <div class="col-6">
                                    <div class="btn-primary  btn-mine" data-toggle="modal" data-target="#exampleModal">
                                        <p>Get Cover</p>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="btn-mine red-b">
                                        <a href="product_detail_agriculture.php">
                                            <p>Read more</p>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-03  product-box prd-4a wow fadeInUp" data-wow-delay="0.5s">
                        <div class="color-overlay"></div>
                        <div class="wrapper">
                            <div class="content">
                                <h3> Livestock Insurance</h3>
                                <p>Your crops and livestock are your source of income and guaranteeing their safety
                                    should
                                    bring you ultimate happiness.</p>
                            </div>
                            <div class="row selection-btn">
                                <div class="col-6">
                                    <div class="btn-primary  btn-mine" data-toggle="modal" data-target="#exampleModal">
                                        <p class="text-center">Get Cover</p>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="btn-mine red-b">
                                        <a href="product_detail_agriculture.php">
                                            <p class="text-center">Read more</p>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div> -->

            <div class="load-more">
                <a href="products.php" class="btn btn-primary">LOAD MORE</a>
            </div>

        </div>
    </div>

    <!-- =====================================OTHER PRODUCTS ===================================== -->

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 wow fadeInUp " data-wow-delay="0.1s">
                <section id="intro1">
                    <div class="intro-container1">
                        <div id="introCarousel1" class="carousel  slide carousel-fade" data-ride="carousel">

                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                                <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
                            </ol>

                            <div class="carousel-inner" role="listbox">

                                <div class="carousel-item active">
                                    <div class="carousel-background uk-animation-kenburns uk-animation-reverse uk-transform-origin-center-left ">
                                        <img src="images/shimba/img4.jpg" alt=""></div>
                                    <div class="carousel-container">
                                        <div class="carousel-content">
                                            <h3>Shimba Hills</h3>
                                            <h4>18 PAX<br>BOARDROOM</h4>
                                            <p>Our world class boardrooms provide the perfect meeting place for executive meetings
                                            </p>
                                            <!-- <a href="#about" class="btn-get-started scrollto">BOOK NOW</a> -->
                                        </div>
                                    </div>
                                </div>

                                <div class="carousel-item">
                                    <div class="carousel-background uk-animation-kenburns uk-animation-reverse uk-transform-origin-center-left">
                                        <img src="images/chyullu/img6.jpg" alt=""></div>
                                    <div class="carousel-container">
                                        <div class="carousel-content">
                                            <h3>Chyullu Hills</h3>
                                            <h4>40 PAX<br>AUDITORIUM</h4>
                                            <p> Our auditorium can hold up to 40 people & is equipped with state of the art equipment.
                                            </p>
                                            <!-- <a href="#about" class="btn-get-started scrollto">BOOK NOW</a> -->
                                        </div>
                                    </div>
                                </div>

                                <div class="carousel-item">
                                    <div class="carousel-background uk-animation-kenburns uk-animation-reverse uk-transform-origin-center-left">
                                        <img src="images/cherengani/img4.jpg" alt=""></div>
                                    <div class="carousel-container">
                                        <div class="carousel-content">
                                            <h3>Cherangani</h3>
                                            <h4>TRAINING ROOM</h4>
                                            <p> Our training room can hold 30 guests on <br>U-shape set up and 44 guests in a classroom setup, the room is
                                                ideal for corporate training, promotional training and interactive training.
                                            </p>
                                            <!-- <a href="#about" class="btn-get-started scrollto">BOOK NOW</a> -->
                                        </div>
                                    </div>
                                </div>

                                <div class="carousel-item">
                                    <div class="carousel-background uk-animation-kenburns uk-animation-reverse uk-transform-origin-center-left">
                                        <img src="images/Entertainment/img3.jpg" alt=""></div>
                                    <div class="carousel-container">
                                        <div class="carousel-content">
                                            <h3>Entertainment</h3>
                                            <p> The cafeteria has a sitting capacity of 80 guests with dining tables, 100 guests in a classroom set-up & 150
                                                guests in a cocktail set-up.
                                            </p>
                                            <!-- <a href="#about" class="btn-get-started scrollto">BOOK NOW</a> -->
                                        </div>
                                    </div>
                                </div>



                            </div>

                            <a class="carousel-control-prev" href="#introCarousel1" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon ion-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>

                            <a class="carousel-control-next" href="#introCarousel1" role="button" data-slide="next">
                                <span class="carousel-control-next-icon ion-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>

                        </div>
                    </div>
                </section>
            </div>

            <div class="col-md-6 wow fadeInUp " data-wow-delay="0.2s">
                <div class="apollo-facility">
                    <div class="text-center">
                        <h1>APOLLO CONFERENCE FACILITIES</h1>
                        <div class="under-line img3">
                            <img src="images/line.png" alt="">
                        </div>
                        <p class="">On top of Insurance and Investment services, we also have rental spaces at our state
                            of the art
                            facility, The Apollo Centre.

                            We provide room for conferences and private meeting spaces within our spacious and
                            comfortable boardrooms.
                            We also have an ultra-modern auditorium, an entertainment area for office functions and a
                            training room
                            for
                            corporate training.

                            We provide all the space you need for all your functions. Each room opens up into a large
                            balcony
                            providing
                            a delightful view of Nairobi. There is also ample parking space that is convenient and
                            secure.
                        </p><br>

                        <div class="button apollo-centre">
                            <a href="#modal-full1" class="btn-primary btn1" uk-toggle>BOOK NOW</a>
                            <!-- <button class="btn-primary btn1" data-target="#modal-full1" uk-toggle>Read more</button> -->
                            <a href="apollo_centre.php" class="btn-dark  btn1">LEARN MORE</a>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>


    <!-- =====================================ACESS SERVICE===================================== -->
    <div class="container-fluid12">
        <div class="product acess text-center">

            <h1>ACCESS SERVICES</h1>
            <div class="under-line img4">
                <img src="images/line.png" alt="">
            </div>
            <p class="container content-offer">
                We value your time. You can now purchase insurance, service your policies and report a claim online.
                This gives
                you more time to do the things that you love most.
            </p>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-4 wow fadeInUp " data-wow-delay="0.1s">
                        <img class="img-fluid img-log" src="images/login.png" alt="login-vector">
                        <div class="content-acess">
                            <h3>REQUEST ASSISTANCE</h3>
                            <P>
                                We will acknowledge/respond to your queries received from various platforms within the
                                timelines.
                                promise
                                to respond to all your requests in a professional and timely manner.
                            </P>
                            <div class="load-more">
                                <a href="#" class="btn btn-primary">GET HELP</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 img-acess  wow fadeInUp " data-wow-delay="0.1s">
                        <img class="img-fluid" src="images/claim.png" alt="login-vector">
                        <div class="content-acess">
                            <h3>REPORT A CLAIM</h3>
                            <P>
                                Claims can sometimes be a headache, but not with us. In the case of an unfortunate
                                event, we will hold
                                your hand and walk with you through the claims process
                            </P>
                            <div class="load-more">
                                <a href="#" class="btn btn-primary">MAKE CLAIM</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 img-acess  wow fadeInUp " data-wow-delay="0.1s">
                        <img class="img-fluid" src="images/portal.png" alt="login-vector">
                        <div class="content-acess">
                            <h3>LOGIN TO APA</h3>
                            <P>
                                view your policy details and statements, renew your policy and have it delivered to you,
                                all these at the comfort of your device
                            </P><BR>
                            <div class="load-more">
                                <a href="#" class="btn btn-primary">OPEN PORTAL</a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

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
                                <label><input class="uk-radio" type="radio" name="radio1" checked> Motor Private</label><br>
                                <label><input class="uk-radio" type="radio" name="radio2"> Personal Accident</label><br>
                                <label><input class="uk-radio" type="radio" name="radio2"> Student Personal Accident</label><br>
                                <label><input class="uk-radio" type="radio" name="radio3"> Domestic Package</label><br>
                                <label><input class="uk-radio" type="radio" name="radio4"> Pet </label><br>
                                <label><input class="uk-radio" type="radio" name="radio4"> Golfers </label>
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
                                    <input name="capacity" id="capacity" type="number" min="1" class="form-control" placeholder="Nairobi" value="">
                                </div>
                            </div>

                        </div>

                        <hr>
                        <div class="form-group col-md-12">
                            <h3 for="inputAddress">PREMIUM DETAILS</h3>
                        </div>

                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="inputAddress">Vehicle Make</label>
                                    <input name="" type="text" class="form-control" id="inputAddress" placeholder="Toyota" value="<?= ((isset($company_name)) ? $company_name : '') ?>">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputAddress2">Vehicle Model</label>
                                    <input name="text" type="text" class="form-control" id="inputAddress2" placeholder="Crown" value="<?= ((isset($phone)) ? $phone : '') ?>">
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="inputAddress">Vehicle Value (Kshs)</label>
                                    <input name="number" type="Vehicle_value" class="form-control" id="inputAddress" placeholder="1,400,000" value="<?= ((isset($email)) ? $email : '') ?>">
                                </div>
                                <div class=" form-group col-md-6">
                                    <label for="inputAddress2">Year of Manufacture</label>
                                    <input name="capacity" type="number" class="form-control" id="inputAddress2" placeholder="2019" value="<?= ((isset($capacity)) ? $capacity : '') ?>">
                                </div>
                            </div>

                            <div class="row book-btn">
                                <div class="col-md-12"><br>
                                    <button class="btn btn-primary">REQUEST QUOTATION</button>
                                </div>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>


    <!-- ===================================== APOLLO CENTRE BOOKING FORM ===================================== -->

    <div id="modal-full1" class="uk-modal-full" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
            <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
                <div class="uk-background-cover" style="background-image: url('images/shimba/img5.jpg'); background-size: cover;" uk-height-viewport></div>
                <div class="uk-padding-large">


                    <form class="form-container" action="" method="POST">
                        <div class="form-group col-md-12">
                            <h3 for="inputAddress">Room Name</h3>
                            <select name="room_name" id="room_name" class="custom-select custom-select-lg mb-3" value="">
                                <option disabled selected>Select preferred room</option>
                                <option value="1">Shimba Hills (Boardroom 18pax)</option>
                                <option value="2">Taita Hills (10-12pax)</option>
                                <option value="3">Ngong Hills (Boardroom 8pax)</option>
                                <option value="4">Chyullu Hills (Auditorium 40pax)</option>
                                <option value="5">Cherengani Hills (Training Room)</option>
                                <option value="6">Entertainment Area</option>
                            </select>
                        </div>

                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="inputEmail4">Start Date</label>
                                    <input id="start_date" name="start_date" type="date" class="form-control" placeholder="Start date" value="">
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="inputPassword4">End Date</label> <input name="end_date" id="end_date" type="date" class="form-control" placeholder="End date" value="">
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="inputEmail4">Start Time</label>
                                    <input id="start_time" name="start_time" type="time" min="06:00:00" class="form-control" placeholder="Start time" value="">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4">End Time</label>
                                    <input id="end_time" name="end_time" type="time" max="18:00:00" class="form-control" id="inputPassword4" placeholder="End time" value="">
                                </div>
                            </div>
                        </div>

                        <h3 for="inputAddress" class="comp-detail">COMPANY DETAIL</h3>
                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="inputAddress">Name</label>
                                    <input name="company_name" id="company_name" type="text" class="form-control" placeholder="Full Name" value="">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputAddress2">Phone Number</label>
                                    <input name="phone" id="phone" type="tel" class="form-control" placeholder="Phone Number" value="">
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="inputAddress">Email Address</label>
                                    <input name="email" id="email" type="email" class="form-control" placeholder="Email" value="">
                                </div>
                                <div class=" form-group col-md-6">
                                    <label for="inputAddress2">Capacity</label>
                                    <input name="capacity" id="capacity" type="number" min="1" class="form-control" placeholder="pax" value="">
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="inputAddress">More Information</label>
                                    <textarea name="more_information" id="more_information" class="form-control"></textarea>
                                </div>
                            </div>

                            <div class="row book-btn">
                                <div class="col-md-12">
                                    <p id="display"></p>
                                    <button name="submit" type="submit" class="btn btn-primary" id="submit">BOOK NOW</button>
                                </div>
                            </div>
                        </div>


                    </form>

                </div>
            </div>
        </div>
    </div>


    <!-- loading scripts -->
    <?php
    require_once 'inc/scripts.php';
    ?>
</body>

</html>