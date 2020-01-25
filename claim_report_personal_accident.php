<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>APA INSURANCE</title>
    <link rel="stylesheet" href="css/about.css" media="screen">
    <link rel="stylesheet" href="css/claim.css" media="screen">
    <link rel="stylesheet" href="css/draft.css" media="screen">
    <link rel="stylesheet" href="css/parsley.css" media="screen">
    <link rel="stylesheet" href="css/apollo_centre.css" media="screen">
    <link rel="stylesheet" href="css/parsley.css" media="screen">


    <?php include 'views/head_links.php';?>

</head>

<body>

    <!--==========================
    Header
    ============================-->
    <?php include 'views/nav.php';?>
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
            <h1>PERSONAL ACCIDENT</h1>
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

    <section>
        <div class="container">
            <div class="row wow fadeInUp" data-wow-delay="0.3s">
                <div class="col-md-6">
                    <a href="#modal-full1" uk-toggle>
                        <div class="card-report">
                            <h2> Report claim &nbsp;<i class="fas fa-chevron-right"></i> </h2>
                            <hr>
                            <div class="row">
                                <div class="col-6">
                                    <p>
                                        In the unfortunate event you have been involved in an accident and do not have
                                        a claim form or any supporting documentation, you can report the incident to us.
                                        This will help us reach out to you and guide you through the process.
                                </div>
                                <div class="col-6">
                                    <div class="report-avatar">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>

                </div>
                <div class="col-md-6">
                    <a href="#modal-full2" uk-toggle>
                        <div class="card-report">
                            <h2>Upload document <i class="fas fa-upload"></i></h2>
                            <hr>
                            <div class="row">
                                <div class="col-6">
                                    <p>
                                        If you already have a completed claim form and have managed to gather all
                                        supporting documentation. Please click here to submit the documentation.
                                </div>
                                <div class="col-6">
                                    <div class="report-avatar2">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>

                </div>
            </div>
        </div>
    </section>



    <!-- =====================================FOOTER===================================== -->
    <?php include 'views/footer.php';?>
    <!-- #footer -->


    <!-- ===================================== REPORT PERSONAL ACCIDENT CLAIM ===================================== -->

    <div id="modal-full1" class="uk-modal-full" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
            <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
                <div class="uk-background-cover uk-visible@m" style="background-image: url('img/personal_accident.jpg'); background-size: cover; background-position: left;" uk-height-viewport></div>
                <div class="uk-padding-large">


                    <form id="form-mp" action="<?=$_SERVER['PHP_SELF'];?>" method="POST" class="form-container form">
                        <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="full_name">Full Name</label>
                                    <input name="full_name" type="text" class="form-control" id="full_name" placeholder="Full Name" value="" required>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="phone">Mobile Number</label>
                                    <input name="phone" type="tel" class="form-control" id="phone" placeholder="Mobile Number" data-parsley-pattern="^(?:254|\+254|0)?(7(?:(?:[123456789][0-9])|(?:0[0-8])|(4[0-1]))[0-9]{6})$" data-parsley-trigger="keyup" value="" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="email">Email Address</label>
                                    <input name="email" type="email" class="form-control" id="email" placeholder="Email" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                                </div>
                                <div class=" form-group col-md-12">
                                    <label for="location">Location</label>
                                    <input name="location" type="text" class="form-control" id="location" placeholder="Nairobi" value="" required>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="date_of_loss">Date Of Loss </label>
                                    <input name="date_of_loss" type="date" class="form-control" id="date_of_loss" value="" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="claim_event">Describe the Claim Event</label>
                                    <textarea name="claim_event" class="form-control" id="claim_event" rows="4" required></textarea>
                                </div>
                            </div>

                        </div>

                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="12">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                            <input type="hidden" id="claim_type" name="claim_type" value="personal accident">
                            <input type="hidden" id="bemail" name="bemail" value="claims.nonmotor@apainsurance.org">
                            <input type="hidden" id="bname" name="bname" value="Non Motor Claim">
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

    <!-- ===================================== UPLOAD PERSONAL ACCIDENT CLAIM  ===================================== -->

    <div id="modal-full2" class="uk-modal-full" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
            <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
                <div class="uk-background-cover uk-visible@m" style="background-image: url('img/personal_accident.jpg'); background-size: cover;" uk-height-viewport></div>
                <div class="uk-padding-large">


                    <form id="form-mp" action="<?=$_SERVER['PHP_SELF'];?>" method="POST" class="form-container life-personal-property-claim-form">
                        <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                        <div class="container-fluid">
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
                                <div class="form-group col-md-4">
                                    <label for="email">Email Address</label>
                                    <input name="email" type="email" class="form-control" id="email" placeholder="Email" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                                </div>
                                <div class=" form-group col-md-4">
                                    <label for="location">Location</label>
                                    <input name="location" type="text" class="form-control" id="location" placeholder="Nairobi" value="" required>
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="date_of_loss">Date Of Loss </label>
                                    <input name="date_of_loss" type="date" class="form-control" id="date_of_loss" value="" required>
                                </div>
                            </div>

                        </div>
                        <hr>
                        <div class="form-group col-md-12">
                            <h3 for="inputAddress">ATTACH THE FOLLOWING DOCUMENT</h3>
                        </div>

                        <div class="container-fluid">

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="personal_accident_claim_form">Attach document : completed claim form <a href="pdf/claim/GPA CLAIM FORM.pdf" target="_blank">(click here to
                                            download
                                            a
                                            claim
                                            form)</a> </label>
                                    <input name="documents[]" type="file" class="form-control-file" id="personal_accident_claim_form" required>
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="detailed_statement">Attach document : Statements </label>
                                    <input name="documents[]" type="file" class="form-control-file" id="detailed_statement" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="payslips">Attach document : Payslip </label>
                                    <input name="documents[]" type="file" class="form-control-file" id="payslips" required>
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="national_id">Attach document : National ID Card </label>
                                    <input name="documents[]" type="file" class="form-control-file" id="national_id" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="sick_sheet">Attach document : Sick Sheet<br> </label>
                                    <input name="documents[]" type="file" class="form-control-file" id="sick_sheet" required>
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="medical_bill">Attach document : Medical Bill  </label>
                                    <input name="documents[]" type="file" class="form-control-file" id="medical_bill" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="discharge_summary">Attach document : Discharge Summary </label>
                                    <input name="documents[]" type="file" class="form-control-file" id="discharge_summary" required>
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="police_abstract">Attach document : Police Abstract </label>
                                    <input name="documents[]" type="file" class="form-control-file" id="police_abstract" required>
                                </div>
                            </div>

                        </div>

                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="12">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                            <input type="hidden" id="claim_type" name="claim_type" value="personal accident">
                            <input type="hidden" id="bemail" name="bemail" value="claims.nonmotor@apainsurance.org">
                            <input type="hidden" id="bname" name="bname" value="Non Motor Claim">
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

    <!-- ===================================== PERSONAL ACCIDENT CLAIM REMARKS ===================================== -->

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
                shortly to guide you through the next process.
                <br><br>
                For inquires or assistance you can contact us with the following mobile number: (+254) 70991277, O20 286
                2000.
                Or send and email to claims@apainsurance.org
            </p>
        </div>
    </div>

    <?php require_once 'inc/scripts.php';?>
    <script src="js/parsley.min.js"></script>
    <script src="js/claims.js">

    </script>

</body>

</html>