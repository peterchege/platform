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
                <h3 class="text-center">Select a product to get a quote </h3>
            </div>

            <div class="container">
                <div class="row ">

                    <a href="https://portal.apainsurance.org/GISPORTAL/marine/quote/2">
                        <div class="c0l-md-4 font-awsome text-center">
                            <i class="fas fa-ship"></i>
                            <p>Marine Single Transit </p>
                        </div>
                    </a>

                    <a href="https://portal.apainsurance.org/GISPORTAL/travel/sts/about-trip/1">
                        <div class="c0l-md-4 font-awsome text-center">
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

                    <!-- <a href="https://portal.apainsurance.org/GISPORTAL/auth">
                        <div class="c0l-md-4 font-awsome text-center">
                            <i class="fas fa-ship"></i>
                            <p>Marine Open Cover</p>
                        </div>
                    </a> -->

                </div>
                <br>
            </div>

        </div>

        <!-- quick services -->

        <div class="quick-link text-right">
            <!-- <div class="col-12">
                <button class="btn btn-primary">
                    GET A QUOTE
                </button>
            </div> -->

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
                        SELF SERVICE LOGIN
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

                <div class="row row-product1">
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
                        <div class="box-container-img prod-3">
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
                                <a href class="btn btn-primary">Get Cover</a>
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
                                <a href="calc_domestic_package.php" class="btn btn-primary">Get Cover</a>
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
                                <a href="https://portal.apainsurance.org/GISPORTAL/travel/sts/about-trip/1" class="btn btn-primary">Get Cover</a>
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
                                <a href class="btn btn-primary">Get Cover</a>
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
                                <a href class="btn btn-primary">Get Cover</a>
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

    <!-- ===================================== MOTOR PRIVATE LEAD FORM FOR ===================================== -->

    <div id="modal-full1" class="uk-modal-full" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
            <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
                <div class="uk-background-cover" style="background-image: url('images/motor.jpg'); background-size: cover;" uk-height-viewport></div>
                <div class="uk-padding-large">


                    <form id="form" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container">
                        <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="full_name">Full Name</label>
                                    <input name="full_name" type="text" class="form-control" id="full_name" placeholder="Full Name" value="" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="phone">Mobile Number</label>
                                    <input name="phone" type="tel" class="form-control" id="phone" placeholder="Mobile Number" value="" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="email">Email Address</label>
                                    <input name="email" type="email" class="form-control" id="email" placeholder="Email" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
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
                                <input type="hidden" id="product_id" name="product_id" value="6">
                                <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                            </div>
                            <div class="row book-btn">
                                <div class="col-md-12">
                                    <button type="submit" name="request" class="btn btn-primary">REQUEST
                                        ASSISTANCE
                                    </button>
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