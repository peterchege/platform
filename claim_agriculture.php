<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Agriculture Claim - APA INSURANCE</title>
    <link rel="stylesheet" href="css/about.css" media="screen">
    <link rel="stylesheet" href="css/claim.css" media="screen">
    <link rel="stylesheet" href="css/product.css" media="screen">
    <link rel="stylesheet" href="css/parsley.css" media="screen">
    <link rel="stylesheet" href="css/apollo_centre.css" media="screen">
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
            <h1>AGRICULTURE CLAIM</h1>
            <div class="under-line img6">
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


    <!-- =================================== TYPES AGRICULTURE CLAIM ===================================== -->

    <div class="container-fluid12">
        <div class="product22 product-new">

            <h1 class="text-left fomt">Choose the type of claim you wish to initiate : </h1>
            <br> <br>

            <div class="container">

                <div class="row row-product">

                    <div class="col-md-4 wow fadeInUp " data-wow-delay="0.5s">
                        <div class="product-box we claim-livestock">
                            <a href="claim_report_agri_livestock.php">
                                <div class="color-overlay"></div>
                                <div class="wrapper">
                                    <div class="content">
                                        <h3>Livestock Claim</h3>
                                        <br>
                                        <p>Upon death, this claim will ensure that cash is available immediately to pay
                                            for the costs of a funeral and related expenses.</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>


                    <div class="col-md-4  wow fadeInUp" data-wow-delay="0.6s">
                        <div class="product-box we claim-crop">
                            <a href="claim_report_agri_crop.php">
                                <div class=" color-overlay"></div>
                                <div class="wrapper">

                                    <div class="content">
                                        <h3>Crop Claim </h3>
                                        <br>
                                        <p>Upon death, this claim will ensure that cash is available immediately to pay
                                            for the costs of a funeral and related expenses.</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="offset-4">

                    </div>

                </div>
            </div>
            <br>
        </div>

    </div>

    <!-- =================================== OUR  CLAIM PROCESS ===================================== -->

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
                        <h2>Step 1 : Report</h2>
                        <hr>
                        <p>
                            You can report immediately or within 60 days using the following platform:<br>
                            1. The Website<br>
                            2. Email to claim@apalife.co.ke<br>
                            3. Letter<br>
                            4. Call<br>
                            5. Walk in to the nearest Branch or Office
                        </p>

                    </div>
                </div>

                <div class="col-md-4">
                    <div class="charter2">
                        <h2>Step 2 : Document preparation</h2>
                        <hr>
                        <p>
                            The following are the information that you will be required : <br> <br>
                            1. Scheme Name <br>
                            2. Name of member<br>
                            3. Name of person reporting<br>
                            4. Cellphone Number of person reporting
                        </p>

                    </div>
                </div>

                <div class="col-md-4">
                    <div class="charter2">
                        <h2>Step 3 : Response</h2>
                        <hr>
                        <p>
                            One of our agent will call you once your claim is initiated.
                        </p>

                    </div>
                </div>

            </div>

            <br>

        </div>

    </div>


    <!-- ===================================== FOOTER ===================================== -->
    <?php include 'views/footer.php'; ?>
    <!-- #footer -->


    <!-- ===================================== CROP CLAIM FORM  ===================================== -->

    <div id="modal-full5" class="uk-modal-full" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
            <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
                <div class="uk-background-cover" style="background-image: url('img/crop_dead.jpg'); background-size: cover;" uk-height-viewport>
                </div>
                <div class="uk-padding-large">
                    <form id="form-mp" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container life-personal-property-claim-form">
                        <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="full_name">Full Name</label>
                                    <input name="full_name" type="text" class="form-control" id="full_name" placeholder="Full Name" value="" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="phone">Mobile Number</label>
                                    <input name="phone" type="tel" class="form-control" id="phone" placeholder="Mobile Number" value="" data-parsley-pattern="^(?:254|\+254|0)?(7(?:(?:[123456789][0-9])|(?:0[0-8])|(4[0-1]))[0-9]{6})$" data-parsley-trigger="keyup" required>
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
                            <h3 for="inputAddress">ATTACH THE FOLLOWING DOCUMENT</h3>
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="claim_form_crop">Attach document : Claim Form completed <a href="PROPERTY LOSS CLAIM FORM.pdf" target="_blank">(click here
                                            to download a claim form)</a></label>
                                    <input name="claim_form_crop" type="file" class="form-control-file" id="claim_form_crop" required>
                                </div>
                            </div>
                        </div>
                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="6">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                        </div>
                        <div class="row book-btn">
                            <div class="col-md-12">
                                <button type="submit" name="request" class="btn btn-primary">INITIATE
                                    CLAIM
                                </button>
                            </div>
                        </div>
                </div>
                </form>
            </div>
        </div>
    </div>
    <?php
    require_once('inc/scripts.php');
    ?>
    <script src="js/parsley.min.js"></script>
    <script src="js/claims.js"></script>
</body>

</html>