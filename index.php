<?php
require_once 'inc/db.php';
require_once 'inc/sessions.php';
require_once 'inc/functions.php';
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
    <link rel="stylesheet" href="css/parsley.css" media="screen">

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
                ENJOY THE CONVENIENCE OF <BR> BUYING ONLINE OR REQUESTING A QUOTE TODAY 
            </h2>
        </div>

        <!-- select a quote banner -->

        <div class="box-quote">
            <div class="row">
                <h3 class="text-center">Select a product to get a quote </h3>
            </div>

            <div class="container">
                <div class="row icon-size">

                    <a href="https://portal.apainsurance.org/GISPORTAL/marine/quote/2">
                        <div class="c0l-md-4  font-awsome text-center">
                            <i class="fas fa-ship"></i>
                            <p>Marine Single Transit </p>
                        </div>
                    </a>

                    <a href="https://portal.apainsurance.org/GISPORTAL/travel/sts/about-trip/1">
                        <div class="c0l-md-4  font-awsome text-center">
                            <i class="fas fa-plane-departure"></i>
                            <p>Travel Insurance</p>
                        </div>
                    </a>

                    <a href="calc_domestic_package.php">
                        <div class="c0l-md-4 font-awsome text-center">
                            <i class="fas fa-home"></i>
                            <p>Domestic Package</p>
                        </div>
                    </a>

                </div>
                <br>
            </div>

        </div>

        <!-- quick services -->

        <div class="quick-link text-right">
            <div class="col-12">
                <a href="claim.php">
                    <button class="btn btn-primary">
                        MAKE A CLAIM
                    </button>
                </a>
            </div>

            <div class="col-12">
                <a href="portals.php">
                    <button class="btn btn-primary">
                        ONLINE SERVICES
                    </button>
                </a>
            </div>

            <div class="col-12">
                <a href="contact_us.php">
                    <button class="btn btn-primary">
                        CONTACT US
                    </button>
                </a>
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
                <div class="row row-product1 small-opt">
                    <div class="col-md-4 prod  wow fadeInUp" data-wow-delay="0.1s">
                        <div class="box-container-img prod-2">
                            <div class="overlay">
                            </div>
                        </div>
                        <div class="head-container">
                            <h2>Motor Private Insurance</h2>
                        </div>
                        <br><br>
                        <p class="text-justify">Motor insurance cover protects the insured against
                            financial loss in the event that the motor vehicle insured is involved
                            in an accident, burnt, stolen ...
                        </p>
                        <!-- button click -->
                        <div class="row prod-btn">
                            <div class="col-6">
                                <a href="#modal-full1" class="btn btn-primary" uk-toggle>Get Cover</a>
                            </div>

                            <div class="col-6 text-left prod-lf">
                                <a href="product_detail_motor.php" class="btn btn-primary prod-grey">Read More</a>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-4 prod  wow fadeInUp" data-wow-delay="0.1s">
                        <div class="box-container-img prod-7">
                            <div class="overlay">
                            </div>
                        </div>
                        <div class="head-container">
                            <h2> Family Health Cover <br> (Jamii Plus)</h2>
                        </div>
                        <br>
                        <p class="text-justify">Living a healthy stress free life is every person's dream. A
                            healthy family is a happy family. This is why we have medical insurance..
                        </p>
                        <!-- button click -->
                        <div class="row prod-btn">
                            <div class="col-6">
                                <a href="#modal-full2" class="btn btn-primary" uk-toggle>Get Cover</a>
                            </div>

                            <div class="col-6 text-left prod-lf">
                                <a href="product_detail_jamii.php" class="btn btn-primary prod-grey">Read More</a>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-4 prod  wow fadeInUp" data-wow-delay="0.1s">
                        <div class="box-container-img prod-4">
                            <div class="overlay">
                            </div>
                        </div>
                        <div class="head-container">
                            <h2>Home Insurance <br> (Domestic Package) </h2>
                        </div>
                        <br>
                        <p class="text-justify">This is a combined policy for homeowners. It covers the building itself,
                            contents whilst in the house and outside the house...
                        </p>
                        <!-- button click -->
                        <div class="row prod-btn">
                            <div class="col-6">
                                <a href="#modal-full6" class="btn btn-primary" uk-toggle>Get Cover</a>
                            </div>

                            <div class="col-6 text-left prod-lf">
                                <a href="product_detail_domestic.php" class="btn btn-primary prod-grey">Read More</a>
                            </div>

                        </div>
                    </div>

                </div>

                <!-- NEW ROW OF PRODUCTS -->
                <div class="row row-product1">

                    <div class="col-md-4 prod  wow fadeInUp" data-wow-delay="0.1s">
                        <div class="box-container-img prod-1">
                            <div class="overlay">
                            </div>
                        </div>
                        <div class="head-container">
                            <h2>Travel Insurance</h2>
                        </div>
                        <br>
                        <p class="text-justify">Whether you are headed for a business trip or a trip of a lifetime, our Globetrotter
                            policy will ensure you will have nothing to worry about...
                        </p>
                        <!-- button click -->
                        <div class="row prod-btn">
                            <div class="col-6">
                                <a href="#modal-full3" class="btn btn-primary" uk-toggle>Get Cover</a>
                            </div>

                            <div class="col-6 text-left prod-lf">
                                <a href="product_detail_travel.php" class="btn btn-primary prod-grey">Read More</a>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-4 prod  wow fadeInUp" data-wow-delay="0.1s">
                        <div class="box-container-img prod-5">
                            <div class="overlay">
                            </div>
                        </div>
                        <div class="head-container">
                            <h2>Motor Commercial Cover</h2>
                        </div>
                        <br>
                        <p class="text-justify">Motor insurance cover protects the insured against
                            financial loss in the event that the motor vehicle insured is involved in an accident...
                        </p>
                        <!-- button click -->
                        <div class="row prod-btn">
                            <div class="col-6">
                                <a href="#modal-full4" class="btn btn-primary" uk-toggle>Get Cover</a>
                            </div>

                            <div class="col-6 text-left prod-lf">
                                <a href="product_detail_motor_commercial.php" class="btn btn-primary prod-grey">Read More</a>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-4 prod  wow fadeInUp" data-wow-delay="0.1s">
                        <div class="box-container-img prod-6">
                            <div class="overlay">
                            </div>
                        </div>
                        <div class="head-container">
                            <h2> Livestock Insurance</h2>
                        </div>
                        <br>
                        <p class="text-justify">Your livestock are your source of income and guaranteeing
                            their safety should bring you ultimate happiness...
                        </p>
                        <!-- button click -->
                        <div class="row prod-btn">
                            <div class="col-6">
                                <a href="#modal-full5" class="btn btn-primary" uk-toggle>Get Cover</a>
                            </div>

                            <div class="col-6 text-left prod-lf">
                                <a href="product_detail_livestock.php" class="btn btn-primary prod-grey">Read More</a>
                            </div>

                        </div>
                    </div>
                </div>

            </div>

            <div class="load-more">
                <a href="products.php" class="btn btn-primary">LOAD MORE</a>
            </div>

        </div>
    </div>



    <!-- =====================================ACESS SERVICE===================================== -->
    <div class="container-fluid12">
        <div class=" acess text-center">

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
                                timelines. We promise to respond to all your requests in a professional and timely manner.
                            </P>
                            <div class="load-more">
                                <a href="contact_us.php" class="btn btn-primary">GET HELP</a>
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
                                your hand and walk with you through the claims process.
                            </P>
                            <div class="load-more">
                                <a href="claim.php" class="btn btn-primary">MAKE CLAIM</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 img-acess  wow fadeInUp " data-wow-delay="0.1s">
                        <img class="img-fluid" src="images/portal.png" alt="login-vector">
                        <div class="content-acess">
                            <h3> ONLINE SERVICES</h3>
                            <P>
                                We have made some of our services available online, so that it is easier and quicker for you.
                            </P><BR>
                            <div class="load-more">
                                <a href="portals.php" class="btn btn-primary">OPEN PORTAL</a>
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

    <!-- ===================================== LEAD FORM  ===================================== -->

    <!-- ===================================== MOTOR PRIVATE LEAD FORM FOR ===================================== -->

    <div id="modal-full1" class="uk-modal-full" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
            <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
                <div class="uk-background-cover" style="background-image: url('images/motor.jpg'); background-size: cover;" uk-height-viewport></div>
                <div class="uk-padding-large">


                    <form id="form-mp" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container">
                        <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="full_name">Full Name</label>
                                    <input name="full_name" type="text" class="form-control" id="full_name" placeholder="john doe" value="" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="phone">Mobile Number</label>
                                    <input name="phone" data-parsley-pattern="^(?:254|\+254|0)?(7(?:(?:[129][0-9])|(?:0[0-8])|(4[0-1]))[0-9]{6})$" data-parsley-trigger="keyup" type="tel" class="form-control" id="phone" placeholder=" 07xx 532 xxx" value="" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="email">Email Address</label>
                                    <input name="email" type="email" class="form-control" id="email" placeholder="john@example.com" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                                </div>
                                <div class=" form-group col-md-6">
                                    <label for="location">Location</label>
                                    <input name="location" type="text" class="form-control" id="location" placeholder="Nairobi" value="" required>
                                </div>
                            </div>

                        </div>
                        <hr>
                        <div class="form-group col-md-12">
                            <h3 for="inputAddress">VEHICLE DETAILS</h3>
                        </div>

                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="make">Vehicle Make</label>
                                    <input name="make" type="text" class="form-control" id="make" placeholder="Toyota" value="" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="model">Vehicle Model</label>
                                    <input name="model" type="text" class="form-control" id="model" placeholder="Crown" value="" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="value">Vehicle Value (Kshs)</label>
                                    <input name="value" type="text" class="form-control" id="value" placeholder=" 1,200,000" value="" required>
                                </div>
                                <div class=" form-group col-md-6">
                                    <label for="inputAddress2">Year of Manufacture</label>
                                    <input name="yom" type="number" class="form-control" id="yom" placeholder="2019" value="" required data-parsley-pattern="^\d{4}$" data-parsley-trigger="keyup">
                                </div>
                            </div>
                            <div style="display: none">
                                <input type="hidden" id="product_id" name="product_id" value="6">
                                <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                            </div>
                            <div class="row book-btn">
                                <div class="col-md-12">
                                    <button type="submit" name="request" class="btn btn-primary">SUBMIT <i class="fas fa-paper-plane"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>

    <!-- ===================================== JAMII PLUS LEAD FORM FOR  ===================================== -->

    <div id="modal-full2" class="uk-modal-full" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
            <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
                <div class="uk-background-cover" style="background-image: url('images/affection.jpg'); background-size: cover;" uk-height-viewport></div>
                <div class="uk-padding-large">


                    <form class="form-container" id="form-jp" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST">
                        <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="full_name">Full Name</label>
                                    <input name="full_name" type="text" class="form-control" id="john doe" placeholder="john doe" value="" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="phone">Mobile Number</label>
                                    <input name="phone" data-parsley-pattern="^(?:254|\+254|0)?(7(?:(?:[129][0-9])|(?:0[0-8])|(4[0-1]))[0-9]{6})$" data-parsley-trigger="keyup" type="tel" class="form-control" id="phone" placeholder="07xx 343 xx7" value="" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="email">Email Address</label>
                                    <input name="email" type="email" class="form-control" id="email" placeholder="john@example.com" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                                </div>
                                <div class=" form-group col-md-6">
                                    <label for="location">Location</label>
                                    <input name="location" type="text" class="form-control" id="location" placeholder="Nairobi" value="" required>
                                </div>
                            </div>

                        </div>
                        <hr>
                        <!-- <div class="form-group col-md-12">
                            <h3 for="inputAddress">COVER DETAILS</h3>
                        </div> -->

                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="make"> Inpatient Benefit (Kshs)</label>
                                    <select id="cover" name="cover" class="form-control selectFilter" data-target="section" required>
                                        <option value="-1" selected disabled>Choose...</option>
                                        <option data-ref="owner" name="all_covers" value="All Covers">Kshs 10,000,000 </option>
                                        <option data-ref="owner" name="building" value="Building">Kshs 5,000,000 </option>
                                        <option data-ref="tenant" name="contents" value="Contents">Kshs 2,000,000 </option>
                                        <option data-ref="tenant" name="all_risk" value="All Risk">Kshs 1,000,000 </option>
                                        <option data-ref="tenant" name="domestic_employees" value="Domestic Employees">Kshs 500,000 </option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="make"> Your Age category</label>
                                    <select id="age" name="age" class="form-control" required>
                                        <option value="-1" selected disabled>Select your age range...</option>
                                        <option value="18 - 23"> 20 - 24 yrs</option>
                                        <option value="24 - 25"> 25 - 29 yrs</option>
                                        <option value="30 - 34"> 30 - 34 yrs</option>
                                        <option value="35 - 39"> 35 - 39 yrs</option>
                                        <option value="40 - 44"> 40 - 44 yrs</option>
                                        <option value="45 - 49"> 45 - 49 yrs</option>
                                        <option value="50 - 54"> 50 - 54 yrs</option>
                                        <option value="55 - 59"> 55 - 59 yrs</option>
                                        <option value="60 - 64"> 60 - 64 yrs</option>
                                        <option value="65 - 69"> 65 - 69 yrs</option>
                                        <option value="70 - 75"> 70 - 75 yrs</option>
                                        <option value="76 - 80"> 76 - 80 yrs</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="make">Number of Children (Age < 20)</label> <input name="make" type="number" class="form-control" id="make" placeholder="3" value="">
                                </div>
                            </div>


                            <div style="display: none">
                                <input type="hidden" id="product_id" name="product_id" value="14">
                                <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                            </div>
                            <div class="row book-btn">
                                <div class="col-md-12">
                                    <button type="submit" name="request" class="btn btn-primary">SUBMIT <i class="fas fa-paper-plane"></i></button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- ===================================== TRAVEL LEAD FORM FOR  ===================================== -->

    <div id="modal-full3" class="uk-modal-full" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
            <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
                <div class="uk-background-cover" style="background-image: url('images/travell.jpg'); background-size: cover; " uk-height-viewport></div>
                <div class="uk-padding-large">


                    <form id="form-tl" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container">
                        <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="full_name">Full Name</label>
                                    <input name="full_name" type="text" class="form-control" id="full_name" placeholder="john doe" value="" required>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="phone">Mobile Number</label>
                                    <input name="phone" data-parsley-pattern="^(?:254|\+254|0)?(7(?:(?:[129][0-9])|(?:0[0-8])|(4[0-1]))[0-9]{6})$" data-parsley-trigger="keyup" type="tel" class="form-control" id="phone" placeholder="07xx 514 xxx" value="" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="email">Email Address</label>
                                    <input name="email" type="email" class="form-control" id="email" placeholder="john@example.com" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                                </div>
                                <!-- <div class=" form-group col-md-6">
                                    <label for="location">Location</label>
                                    <input name="location" type="text" class="form-control" id="location" placeholder="Nairobi" value="" required>
                                </div>
                            </div> -->

                            </div>
                            <hr>
                            <div class="form-group col-md-12">
                                <h3 for="inputAddress">TRAVELLING DETAILS</h3>
                            </div>

                            <div class="container">
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label for="depature_date">Departure Date</label>
                                        <input name="depature_date" type="date" class="form-control" id="depature_date" value="" required>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="return_date">Return Date</label>
                                        <input name="return_date" type="date" class="form-control" id="return_date" placeholder="" value="" required>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label for="destination">Destination</label>
                                        <input name="destination" type="text" class="form-control" id="destination" value="" required>
                                    </div>

                                </div>

                            </div>
                            <div style="display: none">
                                <input type="hidden" id="product_id" name="product_id" value="9">
                                <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                            </div>
                            <div class="row book-btn">
                                <div class="col-md-12">
                                    <button type="submit" name="request" class="btn btn-primary">SUBMIT <i class="fas fa-paper-plane"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>

    <!-- ===================================== COMPREHENSIVE LEAD FORM  ===================================== -->

    <div id="modal-full4" class="uk-modal-full" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
            <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
                <div class="uk-background-cover" style="background-image: url('img/motor1.jpg'); background-size: cover;" uk-height-viewport></div>
                <div class="uk-padding-large">
                    <form id="form-cl" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container">
                        <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="full_name">Full Name</label>
                                    <input name="full_name" type="text" class="form-control" id="full_name" placeholder="john doe" value="" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="phone">Mobile Number</label>
                                    <input name="phone" data-parsley-pattern="^(?:254|\+254|0)?(7(?:(?:[129][0-9])|(?:0[0-8])|(4[0-1]))[0-9]{6})$" data-parsley-trigger="keyup" type="tel" class="form-control" id="phone" placeholder="07xx 453 xxx" value="" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="email">Email Address</label>
                                    <input name="email" type="email" class="form-control" id="email" placeholder="john@example.com" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                                </div>
                                <div class=" form-group col-md-6">
                                    <label for="location">Location</label>
                                    <input name="location" type="text" class="form-control" id="location" placeholder="Nairobi" value="" required>
                                </div>
                            </div>

                        </div>
                        <hr>
                        <div class="form-group col-md-12">
                            <h3 for="inputAddress">VEHICLE DETAILS</h3>
                        </div>

                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="make">Vehicle Make</label>
                                    <input name="make" type="text" class="form-control" id="make" placeholder="Toyota" value="" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="model">Vehicle Model</label>
                                    <input name="model" type="text" class="form-control" id="model" placeholder="Crown" value="" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="value">Vehicle Value (Kshs)</label>
                                    <input name="value" type="text" class="form-control" id="value" placeholder="1,400,000" value="" required>
                                </div>
                                <div class=" form-group col-md-6">
                                    <label for="inputAddress2">Year of Manufacture</label>
                                    <input name="yom" type="number" class="form-control" id="yom" placeholder="2019" value="" required data-parsley-pattern="^\d{4}$" data-parsley-trigger="keyup">
                                </div>
                            </div>
                            <div style="display: none">
                                <input type="hidden" id="product_id" name="product_id" value="26">
                                <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                            </div>
                            <div class="row book-btn">
                                <div class="col-md-12">
                                    <button type="submit" name="request" class="btn btn-primary">SUBMIT <i class="fas fa-paper-plane"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>


                </div>
            </div>
        </div>
    </div>

    <!-- ===================================== LIVESTOCK LEAD FORM  ===================================== -->

    <div id="modal-full5" class="uk-modal-full" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
            <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
                <div class="uk-background-cover" style="background-image: url('img/sheep.jpg'); background-size: cover;" uk-height-viewport></div>
                <div class="uk-padding-large">


                    <form id="form-ll" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container"><br><br>
                        <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="full_name">Full Name</label>
                                    <input name="full_name" type="text" class="form-control" id="" placeholder="John doe" value="" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="phone">Mobile Number</label>
                                    <input name="phone" data-parsley-pattern="^(?:254|\+254|0)?(7(?:(?:[129][0-9])|(?:0[0-8])|(4[0-1]))[0-9]{6})$" data-parsley-trigger="keyup" type="tel" class="form-control" id="phone" placeholder="07xx 254 xxx" value="" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="email">Email Address</label>
                                    <input name="email" type="email" class="form-control" id="email" placeholder="john@example.com" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="email">Location</label>
                                    <input name="location" type="text" class="form-control" id="email" placeholder="nairobi" value="" required>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <h3 for="inputAddress" class="comp-detail">ANIMAL DETAILS</h3>
                                <div class=" form-group col-md-12">
                                    <label for="number">No of Animals</label>
                                    <input name="number" type="text" class="form-control value" id="number" placeholder="10" value="" required>
                                </div>
                                <div class=" form-group col-md-12">
                                    <label for="type">Type of Livestock</label>
                                    <select id="type" name="type" class="form-control" required>
                                        <option value="-1" selected disabled>Choose...</option>
                                        <option value="Single Animal Cover">Single Animal Cover</option>
                                        <option value="Poultry insurance">Poultry insurance</option>
                                        <!-- <option value="Dogs and Pet Insurance">Dogs and Pet Insurance</option> -->
                                        <option value="Bloodstock/Horse Insurance">Bloodstock/Horse Insurance</option>
                                    </select>
                                </div>
                                <div class=" form-group col-md-12">
                                    <label for="value">Value of animals</label>
                                    <input name="value" type="text" class="form-control" id="value" placeholder="700,000" value="" required>
                                </div>
                            </div>

                        </div>
                        <div class="container">
                            <div style="display: none">
                                <input type="hidden" id="product_id" name="product_id" value="43">
                                <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                            </div>
                            <div class="row book-btn">
                                <div class="col-md-12">
                                    <button type="submit" name="request" class="btn btn-primary">SUBMIT <i class="fas fa-paper-plane"></i></button>
                                </div>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>

    <!-- ===================================== DOMESTIC PACKAGE LEAD FORM  ===================================== -->

    <div id="modal-full6" class="uk-modal-full" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
            <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
                <div class="uk-background-cover" style="background-image: url('img/domestic.jpg'); background-size: cover;" uk-height-viewport></div>
                <div class="uk-padding-large">


                    <form class="form-container" id="form-dp" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST">
                        <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="full_name">Full Name</label>
                                    <input name="full_name" type="text" class="form-control" id="full_name" placeholder="John doe" value="" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="phone">Mobile Number</label>
                                    <input name="phone" data-parsley-pattern="^(?:254|\+254|0)?(7(?:(?:[129][0-9])|(?:0[0-8])|(4[0-1]))[0-9]{6})$" data-parsley-trigger="keyup" type="tel" class="form-control" id="phone" placeholder="07xx 234 xxx" value="" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="email">Email Address</label>
                                    <input name="email" type="email" class="form-control" id="email" placeholder="john@example.com" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                                </div>
                                <div class=" form-group col-md-6">
                                    <label for="location">Location</label>
                                    <input name="location" type="text" class="form-control" id="location" placeholder="Nairobi" value="" required>
                                </div>
                            </div>

                        </div>
                        <hr>
                        <div class="form-group col-md-12">
                            <h3 for="inputAddress">COVER DETAILS</h3>
                        </div>

                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="property">Property status</label>
                                    <select id="property" name="property" class="form-control selectFilter" data-target="section" required>
                                        <option value="-1" selected disabled>Choose...</option>
                                        <option data-ref="owner" name="owner" value="owner">Owner</option>
                                        <option data-ref="tenant" name="tenant" value="tenant">Occupant (Tenant)</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="inputAddress2">Covers</label>
                                    <select id="cover" name="cover" class="form-control selectFilter" data-target="section" required>
                                        <option value="-1" selected disabled>Choose...</option>
                                        <option data-ref="owner" name="all_covers" value="All Covers"> All Covers </option>
                                        <option data-ref="owner" name="building" value="Building"> Building </option>
                                        <option data-ref="tenant" name="contents" value="Contents"> Contents </option>
                                        <option data-ref="tenant" name="all_risk" value="All Risk"> All Risk </option>
                                        <option data-ref="tenant" name="domestic_employees" value="Domestic Employees"> Domestic Employees </option>
                                    </select>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="value"> Value (Kshs)</label>
                                    <input name="value" type="text" class="form-control" id="value" placeholder="1,400,000" value="">
                                </div>

                            </div>
                            <div style="display: none">
                                <input type="hidden" id="product_id" name="product_id" value="10">
                                <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                            </div>
                            <div class="row book-btn">
                                <div class="col-md-12">
                                    <button type="submit" name="request" class="btn btn-primary">SUBMIT <i class="fas fa-paper-plane"></i>
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
    <script src="js/parsley.min.js"></script>
    <script src="js/lead.js"></script>
</body>

</html>