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
                <h3 class="text-center">Select a product to buy now</h3>
            </div>

            <div class="container">
                <div class="row ">

                    <div class="c0l-md-4 font-awsome text-center">
                        <a href="https://portal.apainsurance.org/GISPORTAL/motor/quote/4">
                            <i class="fas fa-car"></i>
                            <p>Motor Private</p>
                        </a>
                    </div>


                    <div class="c0l-md-4 font-awsome text-center">
                        <a href="http://192.168.100.20/APA-STS/travel/sts/about-trip/1">
                            <i class="fas fa-plane-departure"></i>
                            <p>Travel Insurance</p>
                        </a>
                    </div>

                    <div class="c0l-md-4 font-awsome text-center">
                        <a href="http://apacs.test/calculator">
                            <i class="fas fa-home"></i>
                            <p>Domestic Package</p>
                        </a>
                    </div>

                    <div class="c0l-md-4 font-awsome text-center">
                        <a href="#">
                            <i class="fas fa-user-injured"></i>
                            <p>Personal Accident</p>
                        </a>
                    </div>
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
                <a href="customer_login.php">
                    <button class="btn btn-primary">
                        SELF SERVICE LOGIN
                    </button>
                </a>
            </div>

            <div class="col-12">
                <button class="btn btn-primary">
                    CONTACT US
                </button>
            </div>

            <!-- <div class="col-12">
                <button class="btn btn-primary">
                    0709 912 777
                </button>
            </div> -->
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

            <div class="container-fluid">

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
                                <a href="https://portal.apainsurance.org/GISPORTAL/motor/quote/4" class="btn btn-primary">Get Cover</a>
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
                                <a href="Customer_login.php" class="btn btn-primary">OPEN PORTAL</a>
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
                        <h3 for="inputAddress" class="comp-detail">PERSONALS DETAILS</h3>
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

    <!-- ===================================== PERSONAL PRODUCT MODAL ===================================== -->

    <!-- This is the modal with the outside close button -->
    <div id="modal-close-outside" uk-modal>
        <div class="uk-modal-dialog uk-modal-body">
            <button class="uk-modal-close-outside " type="button" uk-close></button>
            <h2 class="uk-modal-title modal-head">Select the cover you wish to generate a quote for:</h2>

            <div class="row select-prod">
                <div class="col-4">
                    <a href="https://portal.apainsurance.org/GISPORTAL/motor/quote/4">
                        <div class="product-quote">
                            <i class="fas fa-car"></i>
                            <p>Motor Private</p>
                        </div>
                    </a>
                </div>

                <div class="col-4">
                    <div class="product-quote">
                        <i class="fas fa-user-injured"></i>
                        <p>Personal Accident</p>
                    </div>
                </div>

                <div class="col-4">
                    <a href="calc_domestic_package.php">
                        <div class="product-quote">
                            <i class="fas fa-home"></i>
                            <p>Domestic Package</p>
                        </div>
                    </a>
                </div>
            </div>

            <div class="row select-prod">
                <div class="col-4">
                    <a href="https://portal.apainsurance.org/GISPORTAL/motor/quote/4">
                        <div class="product-quote">
                            <i class="fas fa-dog"></i>
                            <p>Pet Cover</p>
                        </div>
                    </a>
                </div>

                <div class="col-4">
                    <div class="product-quote">
                        <i class="fas fa-golf-ball"></i>
                        <p>Golfers</p>
                    </div>
                </div>

                <div class="col-4">
                    <div class="product-quote">
                        <i class="fas fa-car"></i>
                        <p>Motor Commercial</p>
                    </div>
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