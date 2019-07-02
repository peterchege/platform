<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>APA INSURANCE</title>
    <link rel="stylesheet" href="css/companies.css" media="screen">
    <link rel="stylesheet" href="css/product.css" media="screen">
    <link rel="stylesheet" href="css/apollo_centre.css" media="screen">

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
    <div class="banner-motor">

    </div>
    <div class="cover-line">
        <img src="images/line.png" alt="">
    </div>


    <!-- #intro -->

    <!-- ===================================== CHILD MENU BAR ===================================== -->

    <div class="company-nav">
        <ul class="nav justify-content-center">
            <li class="nav-item active">
                <a class="nav-link dropdown-toggle" href="product_motor_private.php">PRIVATE MOTOR COVER</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="product_motor_commercial.php">COMMERCIAL MOTOR COVER</a>
            </li>

        </ul>
    </div>

    <!-- SUB NAV -->

    <div class="sub-nav">
        <ul class="nav justify-content-center">
            <li class="nav-item active">
                <a class="nav-link" href="product_motor_private.php">COMPREHENSIVE </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="product_motor_private_partyonly.php">3RD PARTY ONLY </a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="#">3RD PARTY & THEFT</a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="#">NAMED DRIVER</a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="#">BIMA BAMBA</a>
            </li>

        </ul>
    </div>


    <!-- ===================================== ABOUT US ===================================== -->


    <div class="container-fluid12">
        <div class="container apollo">
            <h1 class="wow fadeInUp" data-wow-delay="0.1s">COMPREHENSIVE</h1>
            <div class="under-line img7 wow fadeInUp" data-wow-delay="0.1s">
                <img src=" images/line.png" alt="">
            </div>
            <p class="wow fadeInUp" data-wow-delay="0.1s">
                Ride your worries away with APA’s Motor Insurance cover.
            </p>
            <p class="text-left wow fadeInUp" data-wow-delay="0.1s">
                We have different packages designed for different owners. In the event of an accident and loss through theft or fire, the comprehensive package comes in handy to fix the financial costs incurred.
            </p>
            <p class=" text-left wow fadeInUp" data-wow-delay="0.1s">
                With the Named Driver policy option, you get to choose one trusted partner to be included in your cover and enjoy affordable rates.
            </p>
            <br>

            <div class="row btn-comprehensive wow fadeInUp" data-wow-delay="0.1s">
                <div class=" col-4 text-center">
                    <button class="btn btn-primary">
                        <a href="https://portal.apainsurance.org/GISPORTAL/motor/quote/4">
                            Get cover
                        </a>
                    </button>
                </div>

                <div class=" col-4 text-center">
                    <button class="btn btn-danger" data-target="#modal-full1" uk-toggle="target: #modal-close-outside">
                        Downloads
                    </button>
                </div>

                <div class=" col-4 text-center">
                    <button class="btn btn-slate" data-target="#modal-full" uk-toggle>
                        Request Assistance
                    </button>
                </div>
            </div>

        </div>

        <br>



        <!-- =====================================FOOTER===================================== -->
        <?php include 'views/footer.php'; ?>
        <!-- #footer -->

        <!-- ===================================== LEAD FORM FOR COMPREHENSIVE ===================================== -->

        <div id="modal-full" class="uk-modal-full" uk-modal>
            <div class="uk-modal-dialog">
                <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
                <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
                    <div class="uk-background-cover" style="background-image: url('images/motor.jpg'); background-size: cover;" uk-height-viewport></div>
                    <div class="uk-padding-large">


                        <form class="form-container">
                            <h3 for="inputAddress" class="comp-detail">PERSONAL DETAIL</h3>
                            <div class="container">
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label for="inputAddress">Full Name</label>
                                        <input name="company_name" type="text" class="form-control" id="inputAddress" placeholder="Full Name" value="<?= ((isset($company_name)) ? $company_name : '') ?>">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputAddress2">Mobile Number</label>
                                        <input name="phone" type="tel" class="form-control" id="inputAddress2" placeholder="Mobile Number" value="<?= ((isset($phone)) ? $phone : '') ?>">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label for="inputAddress">Email Address</label>
                                        <input name="email" type="email" class="form-control" id="inputAddress" placeholder="Email" value="<?= ((isset($email)) ? $email : '') ?>">
                                    </div>
                                    <div class=" form-group col-md-6">
                                        <label for="inputAddress2">Location</label>
                                        <input name="capacity" type="text" class="form-control" id="inputAddress2" placeholder="Nairobi" value="<?= ((isset($capacity)) ? $capacity : '') ?>">
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
                                        <label for="inputAddress">Vehicle Make</label>
                                        <input name="company_name" type="text" class="form-control" id="inputAddress" placeholder="Toyota" value="<?= ((isset($company_name)) ? $company_name : '') ?>">
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

                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label for="inputAddress">More Information</label>
                                        <textarea name="more_information" class="form-control"></textarea>
                                    </div>
                                </div>

                                <div class="row book-btn">
                                    <div class="col-md-12">
                                        <button class="btn btn-primary">REQUEST ASSISTANCE</button>
                                    </div>
                                </div>
                            </div>




                        </form>

                    </div>
                </div>
            </div>
        </div>

        <!-- ===================================== DOWNLOAD FORM FOR COMPREHENSIVE ===================================== -->

        <div id="modal-close-outside" uk-modal>
            <div class="uk-modal-dialog uk-modal-body">
                <button class="uk-modal-close-outside" type="button" uk-close></button>
                <h2 class="uk-modal-title">DOCUMENTS:</h2>

                <a class="uk-button uk-button-default" href="pdf/Apollo Unit Trust Funds Brochure.pdf">Brochure </a><br><br>
                <a class="uk-button uk-button-default" href="#"> Application/ proposal form</a><br><br>
                <a class="uk-button uk-button-default" href="#">Claim form</a><br><br>
                <a class="uk-button uk-button-default" href="#">Brochure</a><br><br>

            </div>
        </div>




        <?php
        require_once 'inc/scripts.php';
        ?>

</body>

</html>