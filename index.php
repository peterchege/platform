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

    <title>APA INSURANCE : Insuring Happiness</title>

    <!-- META DATA DESCRIPTION FOR GOOGLE SEARCH RESULT -->
    <meta name="description" content="Welcome to APA Insurance, one of the largest insurers in East Africa.
    You can now purchase insurance, service your policies and report a claim online. 
    This gives you more time to do the things that you love most ">
    <meta name="keywords" content="insurance cover, apa insurance kenya, apa insurance limited, 
    buy insurance cover, buy cover online, cover quotation, insurance online quotation, apa online services">
    <meta name="author" content="">

    <!-- FACEBOOK MEATADATA -->
    <meta property="og:url" content="https://www.apainsurance.org/" />
    <meta property="og:type" content="Homepage" />
    <meta property="og:title" content="APA Insurance, APA Insurance Kenya, APA Insurance Limited" />
    <meta property="og:description" content="Welcome to APA Insurance, one of the largest insurers in East Africa.
    You can now purchase insurance, service your policies and report a claim online. 
    This gives you more time to do the things that you love most" />

    <!-- STYLESHEET -->
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
                <h3 class="text-center">Select a product to get a quote and buy online</h3>
            </div>

            <div class="container">
                <div class="row icon-size">

                    <a href="https://portal.apainsurance.org/GISPORTAL/marine/quote/2">
                        <div class="c0l-md-4  font-awsome text-center">
                            <i class="fas fa-ship"></i>
                            <p>Marine Single Transit </p>
                        </div>
                    </a>

                    <a href="maintenance.php">
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
                        Make a Claim
                    </button>
                </a>
            </div>

            <div class="col-12">
                <a href="portals.php">
                    <button class="btn btn-primary">
                        Online Services
                    </button>
                </a>
            </div>

            <div class="col-12">
                <a href="callback.php">
                    <button class="btn btn-primary">
                        Request a Callback
                    </button>
                </a>
            </div>

            <div class="col-12">
                <a href="contact_us.php">
                    <button class="btn btn-primary">
                        Contact Us
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
                    <div class="col-md-6 col-lg-4 prod  wow fadeInUp" data-wow-delay="0.1s">
                        <div class="box-container-img prod-2">
                            <div class="overlay">
                            </div>
                        </div>
                        <div class="head-container">
                            <h2>Motor Private Insurance</h2>
                        </div>
                        <br><br>
                        <p class="text-justify">Motor insurance protects you against loss in the event
                            that your motor vehicle insured is involved in an accident, burnt, stolen...
                        </p>
                        <!-- button click -->
                        <div class="row prod-btn">
                            <div class="col-6">
                                <a href="#modal-full_motor" class="btn btn-primary" uk-toggle>Get Cover</a>
                            </div>

                            <div class="col-6 text-left prod-lf">
                                <a href="product_detail_motor.php" class="btn btn-primary prod-grey">Read More</a>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 prod  wow fadeInUp" data-wow-delay="0.1s">
                        <div class="box-container-img prod-7 box-reshape">
                            <div class="overlay">
                            </div>
                        </div>
                        <div class="head-container">
                            <h2> Family Health Cover <br> (Jamii Plus)</h2>
                        </div>
                        <br>
                        <p class="text-justify">Living a healthy stress-free life is every person's dream. A healthy
                            family is a happy family. This is why we have medical insurance...
                        </p>
                        <!-- button click -->
                        <div class="row prod-btn">
                            <div class="col-6">
                                <a href="#modal-full_jamii" class="btn btn-primary" uk-toggle>Get Cover</a>
                            </div>

                            <div class="col-6 text-left prod-lf">
                                <a href="product_detail_jamii.php" class="btn btn-primary prod-grey">Read More</a>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 prod wow fadeInUp" data-wow-delay="0.1s">
                        <div class="box-container-img life-3 box-reshape">
                            <div class="overlay">
                            </div>
                        </div>
                        <div class="head-container">
                            <h2 class="text-center">Education Plan <br> (APA Elimu)</h2>
                        </div>
                        <br>
                        <p class="text-justify">We work hard now to ensure the futures of our
                            little ones remain bright. A great education is the best foundation
                            for a good life, ensure that your child gets...

                        </p>
                        <!-- button click -->
                        <div class="row prod-btn">
                            <div class="col-6 text-center">
                                <a href="#modal-full_elimu" uk-toggle class="btn btn-primary">Get Cover</a>
                            </div>

                            <div class="col-6 text-left prod-lf">
                                <a href="product_detail_life_elimu.php" class="btn btn-primary prod-grey">Read More</a>
                            </div>

                        </div>
                    </div>

                    <!-- </div> -->


                    <!-- NEW ROW OF PRODUCTS -->
                    <!-- <div class="row row-product1"> -->

                    <div class="col-md-6 col-lg-4 prod  wow fadeInUp" data-wow-delay="0.1s">
                        <div class="box-container-img prod-1">
                            <div class="overlay">
                            </div>
                        </div>
                        <div class="head-container">
                            <h2>Travel Insurance</h2>
                        </div>
                        <br>
                        <p class="text-justify">Whether you are headed for a business trip or a trip of a lifetime, our
                            Globetrotter
                            policy will ensure you will have nothing to worry about...
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

                    <div class="col-md-6 col-lg-4 prod  wow fadeInUp" data-wow-delay="0.1s">
                        <div class="box-container-img prod-5">
                            <div class="overlay">
                            </div>
                        </div>
                        <div class="head-container">
                            <h2>Motor Commercial Cover</h2>
                        </div>
                        <br>
                        <p class="text-justify">APA Motor Commercial Insurance covers you and your motor vehicle against
                            loss, theft, physical damage, bodily damage and liabilities that ...
                        </p>
                        <!-- button click -->
                        <div class="row prod-btn">
                            <div class="col-6">
                                <a href="#modal-full_mc" class="btn btn-primary" uk-toggle>Get Cover</a>
                            </div>

                            <div class="col-6 text-left prod-lf">
                                <a href="product_detail_motor_commercial.php" class="btn btn-primary prod-grey">Read
                                    More</a>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4 prod  wow fadeInUp" data-wow-delay="0.1s">
                        <div class="box-container-img prod-6">
                            <div class="overlay">
                            </div>
                        </div>
                        <div class="head-container">
                            <h2>Livestock Insurance</h2>
                        </div>
                        <br>
                        <p class="text-justify">Your livestock is your source of income and guaranteeing their safety
                            should bring you ultimate happiness...
                            <br><br>
                        </p>
                        <!-- button click -->
                        <div class="row prod-btn">
                            <div class="col-6">
                                <a href="#modal-full_livestock" class="btn btn-primary" uk-toggle>Get Cover</a>
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
                    <div class="col-md-6 col-lg-4 wow fadeInUp " data-wow-delay="0.1s">
                        <img class="img-fluid img-log" src="images/login.png" alt="login-vector">
                        <div class="content-acess">
                            <h3>REQUEST ASSISTANCE</h3>
                            <P>
                                We will acknowledge/respond to your queries received from various platforms within the
                                timelines of our Customer Service Charter. We promise to respond to all your requests in a professional & timely
                                manner.
                            </P>
                            <div class="load-more">
                                <a href="contact_us.php" class="btn btn-primary">GET HELP</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4  img-acess  wow fadeInUp " data-wow-delay="0.1s">
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
                    <div class="col-md-6 col-lg-4  img-acess  wow fadeInUp " data-wow-delay="0.1s">
                        <img class="img-fluid" src="images/portal.png" alt="login-vector">
                        <div class="content-acess">
                            <h3> ONLINE SERVICES</h3>
                            <P>
                                We have made some of our services available online so that it is easier and quicker for
                                you.
                            </P><BR>
                            <div class="load-more">
                                <a href="portals.php" class="btn btn-primary">OPEN PORTAL</a>
                            </div>
                        </div>
                    </div>

                    <div class="offset-md-6">

                    </div>
                </div>

            </div>

        </div>
    </div>
    </div>
    <!-- =====================================FOOTER===================================== -->
    <?php include 'views/footer.php'; ?>
    <!-- #footer -->


    <?php include 'views/get_cover.php'; ?>


    <!-- loading scripts -->
    <?php
    require_once 'inc/scripts.php';
    ?>
    <script src="js/parsley.min.js"></script>
    <script src="js/lead.js"></script>
</body>

</html>