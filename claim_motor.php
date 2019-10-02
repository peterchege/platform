<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>APA INSURANCE</title>
    <link rel="stylesheet" href="css/about.css" media="screen">
    <link rel="stylesheet" href="css/claim.css" media="screen">
    <link rel="stylesheet" href="css/parsley.css" media="screen">
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
    <!-- <div class="banner-about">

    </div> -->
    <div class="cover-line">
        <img src="images/line.png" alt="">
    </div>


    <!-- #intro -->


    <!-- ===================================== ABOUT US ===================================== -->


    <div class="container">
        <BR><BR>
        <div class="apollo">
            <h1>MOTOR CLAIM PROCESS</h1>
            <div class="under-line img1">
                <img src="images/line.png" alt="">
            </div>

            <p class="container content-offer wow fadeInUp" data-wow-delay="0.1s">Claims can sometimes be a
                headache, but not with us. In the case of an unfortunate event, we will hold your hand and
                walk with you through the claims process.
                In case of a claim, all you have to do is provide details
                about the incident and we’ll take it from there. We will
                advise you on the required documentation depending on
                the nature of the claim.
            </p>
        </div>
    </div>


    <!-- =================================== TYPES OF MOTOR CLAIM ===================================== -->

    <div class="container-fluid12">
        <div class="product22 product-new">

            <h1 class="text-left fomt">Choose the type of claim you wish to initiate : </h1>
            <br>

            <div class="container-fluid">
                <div class="row row-product">

                    <div class="col-03  product-box we img-accident wow fadeInUp" data-wow-delay="0.2s">
                        <a href="#modal-full1" uk-toggle>
                            <div class="color-overlay"></div>
                            <div class="wrapper">

                                <div class="content">
                                    <h3>Accident</h3>
<<<<<<< HEAD
                                    <p>Living a healthy stress free life is every persons dream. A healthy family is a
                                        happy
                                        family.</p>
=======
                                    <p>Covers third party bodily injury and property damage arising out
                                        of a vehicle accident. .</p>
>>>>>>> 7f0826a068c7cebc4cfca31ec4fb28eb9fea9d8e
                                </div>
                            </div>
                        </a>
                    </div>


                    <div class="col-03  product-box we img-windscreen wow fadeInUp" data-wow-delay="0.3s">
                        <a href="#modal-full2" uk-toggle>
                            <div class="color-overlay"></div>
                            <div class="wrapper">
                                <div class="content">
                                    <h3>WindScreen</h3>
                                    <p>Cover extends to cover windscreen damage.</p>
                                </div>
                            </div>
                        </a>
                    </div>


                    <div class="col-03 product-box we img-theft wow fadeInUp " data-wow-delay="0.4s">
                        <a href="#modal-full3" uk-toggle>
                            <div class="color-overlay"></div>
                            <div class="wrapper">
                                <div class="content">
                                    <h3>Theft</h3>
                                    <p> This claim Cover theft of vehicle</p>
                                </div>
                            </div>
                        </a>
                    </div>


                </div>
            </div>
            <br>
        </div>

    </div>

    <!-- =================================== OUR CUSTOMER SERVICE CHARTER ===================================== -->

    <div class="container text-center">
        <h1>
            CLAIM PROCESS
        </h1>
        <div class="under-line img7">
            <img src="images/line.png" alt="">
        </div>
        <br>

        <div class="container">

            <div class="row">
                <div class="col-md-4">
                    <div class="charter2">
                        <h2>Step 1 : Report (Call the police) </h2>
                        <hr>
                        <p>
                            Insured/driver to report the accident to the nearest police station at once and while
                            they at it, not to admit liability but to inform APA or their intermediary immediately.
                        </p>

                    </div>
                </div>

                <div class="col-md-4">
                    <div class="charter2">
                        <h2>Step 2 : Document what you can</h2>
                        <hr>
                        <p>
                            Take details of the other vehicle, the driver and their insurance company. Also,
                            if possible, take photographs of the accident scene.
                        </p>

                    </div>
                </div>

                <div class="col-md-4">
                    <div class="charter2">
                        <h2>Step 3 : Safety first</h2>
                        <hr>
                        <p>
                            If there are victims with injuries, get them help ASAP! Otherwise move to a police station.
                        </p>

                    </div>
                </div>

            </div>

            <br>

        </div>

    </div>


    <!-- =====================================FOOTER===================================== -->
    <?php include 'views/footer.php'; ?>
    <!-- #footer -->


    <!-- ===================================== MOTOR ACCIDENT CLAIM FORM FOR ===================================== -->

    <div id="modal-full1" class="uk-modal-full" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
            <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
                <div class="uk-background-cover"
                    style="background-image: url('img/claim2.jpg'); background-size: cover;" uk-height-viewport></div>
                <div class="uk-padding-large">


                    <form id="form-mp" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container">
                        <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="full_name">Full Name</label>
                                    <input name="full_name" type="text" class="form-control" id="full_name"
                                        placeholder="Full Name" value="" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="phone">Mobile Number</label>
                                    <input name="phone" type="tel" class="form-control" id="phone"
                                        placeholder="Mobile Number" value="" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="email">Email Address</label>
                                    <input name="email" type="email" class="form-control" id="email" placeholder="Email"
                                        value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                                </div>
                                <div class=" form-group col-md-6">
                                    <label for="location">Location</label>
                                    <input name="location" type="text" class="form-control" id="location"
                                        placeholder="Nairobi" value="" required>
                                </div>
                            </div>

                        </div>
                        <hr>
                        <div class="form-group col-md-12">
                            <h3 for="inputAddress">VEHICLE DETAILS</h3>
                        </div>

                        <div class="container">

                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="value">Vehicle Registarion Number </label>
                                    <input name="value" type="text" class="form-control" id="value"
                                        placeholder="e.g KBY 213" value="" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="make">Describe the Claim Event</label>
                                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="4"></textarea>
                                </div>
                            </div>

                        </div>

                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="6">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                        </div>
                        <div class="row book-btn">
                            <div class="col-md-12">
                                <button type="submit" name="request" class="btn btn-primary"
                                    data-target="#modal-close-outside" uk-toggle="target: #modal-close-outside">INITIATE
                                    CLAIM
                                </button>
                            </div>
                        </div>
                </div>
                </form>

            </div>
        </div>
    </div>

    <!-- ===================================== ACCIDENT CLAIM REMARKS ===================================== -->

    <!-- This is the modal with the outside close button -->
    <div id="modal-close-outside" uk-modal>
        <div class="uk-modal-dialog uk-modal-body">
            <button class="uk-modal-close-outside" type="button" uk-close></button>
            <p class="uk-modal-title">
                <div class="alert alert-success" role="alert">
                    Sucessfull submited
                </div>
            </p>
            <p>Thank you for providing us with details of your claim. One of our agents will contact you
                shortly to guide you through the process.
                <br><br>
                To help us process your claim faster,
                please download and complete the claim form and prepare the following documentation:
                <ol>
                    <li>Claim form (<a href="pdf/claim/motor_claim_form.pdf">Click here to download</a>)</li>
                    <li>Police Abstract</li>
                    <li>Copy of Driving License</li>
                    <li>Copy of the Log Book </li>
                    <li>Detailed statement and sketch of the circumstances of the accident</li>
                </ol>
            </p>
        </div>
    </div>


    <!-- ===================================== WINDSCREEN CLAIM FORM FOR ===================================== -->

    <div id="modal-full2" class="uk-modal-full" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
            <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
                <div class="uk-background-cover"
                    style="background-image: url('img/claim3.jpg'); background-size: cover;" uk-height-viewport></div>
                <div class="uk-padding-large">


                    <form id="form-mp" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container">
                        <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="full_name">Full Name</label>
                                    <input name="full_name" type="text" class="form-control" id="full_name"
                                        placeholder="Full Name" value="" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="phone">Mobile Number</label>
                                    <input name="phone" type="tel" class="form-control" id="phone"
                                        placeholder="Mobile Number" value="" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="email">Email Address</label>
                                    <input name="email" type="email" class="form-control" id="email" placeholder="Email"
                                        value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                                </div>
                                <div class=" form-group col-md-6">
                                    <label for="location">Location</label>
                                    <input name="location" type="text" class="form-control" id="location"
                                        placeholder="Nairobi" value="" required>
                                </div>
                            </div>

                        </div>
                        <hr>
                        <div class="form-group col-md-12">
                            <h3 for="inputAddress">VEHICLE DETAILS</h3>
                        </div>

                        <div class="container">

                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="value">Vehicle Registarion Number </label>
                                    <input name="value" type="text" class="form-control" id="value"
                                        placeholder="e.g KBY 213" value="" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="make">Describe the Claim Event</label>
                                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="4"></textarea>
                                </div>
                            </div>

                        </div>

                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="6">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                        </div>
                        <div class="row book-btn">
                            <div class="col-md-12">
                                <button type="submit" name="request" class="btn btn-primary"
                                    data-target="#modal-close-outside" uk-toggle="target: #modal-close-outside">INITIATE
                                    CLAIM
                                </button>
                            </div>
                        </div>
                </div>
                </form>

            </div>
        </div>
    </div>

    <!-- ===================================== WINDSCREEN CLAIM FORM FOR ===================================== -->

    <div id="modal-full3" class="uk-modal-full" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
            <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
                <div class="uk-background-cover"
                    style="background-image: url('img/claim4.jpg'); background-si4ze: cover;" uk-height-viewport></div>
                <div class="uk-padding-large">


                    <form id="form-mp" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container">
                        <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="full_name">Full Name</label>
                                    <input name="full_name" type="text" class="form-control" id="full_name"
                                        placeholder="Full Name" value="" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="phone">Mobile Number</label>
                                    <input name="phone" type="tel" class="form-control" id="phone"
                                        placeholder="Mobile Number" value="" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="email">Email Address</label>
                                    <input name="email" type="email" class="form-control" id="email" placeholder="Email"
                                        value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                                </div>
                                <div class=" form-group col-md-6">
                                    <label for="location">Location</label>
                                    <input name="location" type="text" class="form-control" id="location"
                                        placeholder="Nairobi" value="" required>
                                </div>
                            </div>

                        </div>
                        <hr>
                        <div class="form-group col-md-12">
                            <h3 for="inputAddress">VEHICLE DETAILS</h3>
                        </div>

                        <div class="container">

                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="value">Vehicle Registarion Number </label>
                                    <input name="value" type="text" class="form-control" id="value"
                                        placeholder="e.g KBY 213" value="" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="make">Describe the Claim Event</label>
                                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="4"></textarea>
                                </div>
                            </div>

                        </div>

                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="6">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                        </div>
                        <div class="row book-btn">
                            <div class="col-md-12">
                                <button type="submit" name="request" class="btn btn-primary"
                                    data-target="#modal-close-outside" uk-toggle="target: #modal-close-outside">INITIATE
                                    CLAIM
                                </button>
                            </div>
                        </div>
                </div>
                </form>

            </div>
        </div>
    </div>


    <!-- ===================================== ACCIDENT CLAIM REMARKS ===================================== -->

    <!-- This is the modal with the outside close button -->
    <div id="modal-close-outside" uk-modal>
        <div class="uk-modal-dialog uk-modal-body">
            <button class="uk-modal-close-outside" type="button" uk-close></button>
            <p class="uk-modal-title">
                <div class="alert alert-success" role="alert">
                    Sucessfull submited
                </div>
            </p>
            <p>Thank you for providing us with details of your claim. One of our agents will contact you
                shortly to guide you through the process.
                <br><br>
                To help us process your claim faster,
                please download and complete the claim form and prepare the following documentation:
                <ol>
                    <li>Claim form (<a href="pdf/claim/motor_claim_form.pdf">Click here to download</a>)</li>
                    <li>Police Abstract</li>
                    <li>Copy of Driving License</li>
                    <li>Copy of the Log Book </li>
                    <li>Detailed statement and sketch of the circumstances of the accident</li>
                </ol>
            </p>
        </div>
    </div>




    <!-- Optional JavaScript -->

    <!-- UIkit JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit-icons.min.js"></script>
    <script src="js/uikit.min.js"></script>
    <script src="js/uikit-icons.min.js"></script>



    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>


    <!-- JavaScript Libraries -->
    <script src="lib/jquery/jquery.min.js"></script>
    <script src="lib/jquery/jquery-migrate.min.js"></script>
    <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/superfish/hoverIntent.js"></script>
    <script src="lib/superfish/superfish.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/isotope/isotope.pkgd.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>
    <script src="lib/touchSwipe/jquery.touchSwipe.min.js"></script>

    <!-- Template Main Javascript File -->
    <script src="js/main.js"></script>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
    </script>

</body>

</html>