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
            <h1>ACCIDENT CLAIM</h1>
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

    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <a href="#">
                        <div class="card-report">
                            <h2> Report claim </h2>
                            <hr>
                            <div class="row">
                                <div class="col-6">
                                    <p>
                                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Consequuntur
                                        eveniet neque voluptatum autem consectetur
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
                    <a href="#">
                        <div class="card-report">
                            <h2>Upload document </h2>
                            <hr>
                            <div class="row">
                                <div class="col-6">
                                    <p>
                                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Consequuntur
                                        eveniet neque voluptatum autem consectetur
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
    <?php include 'views/footer.php'; ?>
    <!-- #footer -->


    <!-- ===================================== MOTOR ACCIDENT CLAIM FORM FOR ===================================== -->

    <div id="modal-full1" class="uk-modal-full" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
            <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
                <div class="uk-background-cover" style="background-image: url('img/claim2.jpg'); background-size: cover;" uk-height-viewport></div>
                <div class="uk-padding-large">


                    <form id="form-mp" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container form">
                        <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="full_name">Full Name</label>
                                    <input name="full_name" type="text" class="form-control" id="full_name" placeholder="Full Name" value="" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="phone">Mobile Number</label>
                                    <input name="phone" type="tel" class="form-control" id="phone" placeholder="Mobile Number" data-parsley-pattern="^(?:254|\+254|0)?(7(?:(?:[129][0-9])|(?:0[0-8])|(4[0-1]))[0-9]{6})$" data-parsley-trigger="keyup" value="" required>
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
                            <h3 for="">VEHICLE DETAILS</h3>
                        </div>

                        <div class="container">

                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="registration_number">Vehicle Registarion Number </label>
                                    <input name="registration_number" type="text" class="form-control" id="registration_number" placeholder="e.g KBY 213" value="" required>
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
                            <input type="hidden" id="product_id" name="product_id" value="6">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                            <input type="hidden" id="accident" name="motor_claim_type" value="accident">

                        </div>
                        <div class="row book-btn">
                            <div class="col-md-12">
                                <!-- <button type="submit" name="request" class="btn btn-primary" data-target="#modal-close-outside" uk-toggle="target: #modal-close-outside">INITIATE
                                    CLAIM
                                </button> -->
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
                <div class="uk-background-cover" style="background-image: url('img/claim3.jpg'); background-size: cover;" uk-height-viewport></div>
                <div class="uk-padding-large">


                    <form id="form-mp" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container form">
                        <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="full_name">Full Name</label>
                                    <input name="full_name" type="text" class="form-control" id="full_name" placeholder="Full Name" value="" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="phone">Mobile Number</label>
                                    <input name="phone" type="tel" class="form-control" id="phone" placeholder="Mobile Number" data-parsley-pattern="^(?:254|\+254|0)?(7(?:(?:[129][0-9])|(?:0[0-8])|(4[0-1]))[0-9]{6})$" data-parsley-trigger="keyup" value="" required>
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
                                <div class="form-group col-md-12">
                                    <label for="registration_number">Vehicle Registarion Number </label>
                                    <input name="registration_number" type="text" class="form-control" id="registration_number" placeholder="e.g KBY 213" value="" required>
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
                            <input type="hidden" id="product_id" name="product_id" value="6">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                            <input type="hidden" id="windscreen" name="motor_claim_type" value="windscreen">

                        </div>
                        <div class="row book-btn">
                            <div class="col-md-12">
                                <!-- <button type="submit" name="request" class="btn btn-primary" data-target="#modal-close-outside" uk-toggle="target: #modal-close-outside">INITIATE
                                    CLAIM
                                </button> -->
                                <button type="submit" name="request" class="btn btn-primary">INITIATE
                                    CLAIM
                                </button>
                            </div>
                        </div>
                </div>
                <input type="hidden" class="form_pdf" name="form_pdf" value="windscreen">
                </form>

            </div>
        </div>
    </div>

    <!-- ===================================== Theft CLAIM FORM FOR ===================================== -->

    <div id="modal-full3" class="uk-modal-full" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
            <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
                <div class="uk-background-cover" style="background-image: url('img/claim4.jpg'); background-size: cover;" uk-height-viewport></div>
                <div class="uk-padding-large">


                    <form id="form-mp" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container form">
                        <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="full_name">Full Name</label>
                                    <input name="full_name" type="text" class="form-control" id="full_name" placeholder="Full Name" value="" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="phone">Mobile Number</label>
                                    <input name="phone" type="tel" class="form-control" id="phone" placeholder="Mobile Number" data-parsley-pattern="^(?:254|\+254|0)?(7(?:(?:[129][0-9])|(?:0[0-8])|(4[0-1]))[0-9]{6})$" data-parsley-trigger="keyup" value="" required>
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
                                <div class="form-group col-md-12">
                                    <label for="registration_number">Vehicle Registarion Number </label>
                                    <input name="registration_number" type="text" class="form-control" id="registration_number" placeholder="e.g KBY 213" value="" required>
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
                            <input type="hidden" id="product_id" name="product_id" value="6">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                            <input type="hidden" id="theft" name="motor_claim_type" value="theft">
                        </div>
                        <div class="row book-btn">
                            <div class="col-md-12">
                                <!-- <button type="submit" name="request" class="btn btn-primary" data-target="#modal-close-outside" uk-toggle="target: #modal-close-outside">INITIATE
                                    CLAIM
                                </button> -->
                                <button type="submit" name="request" class="btn btn-primary">INITIATE
                                    CLAIM
                                </button>
                            </div>
                        </div>
                </div>
                <input type="hidden" class="form_pdf" name="form_pdf" value="theft">
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
    <?php require_once('inc/scripts.php'); ?>
    <script src="js/parsley.min.js"></script>
    <script>
        $(document).ready(function() {
            $('.form').parsley();
            $('.form').on('submit', function(e) {
                e.preventDefault();
                var form = $(this);
                var pdf = $(this).find('input[type=hidden]:last').val();

                if (pdf == 'windscreen') {
                    var claim_form = 'pdf/claim/Windscreen CLM_FRM.pdf';
                } else if (pdf == 'accident') {
                    var claim_form = 'pdf/claim/motor_claim_form.pdf';
                } else if (pdf == 'theft') {
                    var claim_form = 'pdf/claim/motor_claim_form.pdf';
                } else {
                    var claim_form = '';
                }

                $.ajax({
                    type: "POST",
                    url: "ajax/claims.php?request=motor_claim",
                    data: new FormData(this),
                    dataType: 'json',
                    contentType: false,
                    cache: false,
                    processData: false,
                    beforeSend: function() {
                        form.find('button[name=request]').attr('disabled', true).html('Processing...');
                        //$('button[name=request]').attr('disabled', true);
                    },
                    success: function(response) {
                        if (response.status == 1) {
                            form[0].reset();
                            $(".uk-close-large").click()
                            swal.fire({
                                title: 'Submitted Successfully.',
                                type: 'success',
                                html: '<p class="text-left">Thank you for providing us with details of your claim. One of our agents will contact you shortly to guide you through the process. <br><br>  To help us process your claim faster, please download and complete the claim form and prepare the following documentation:  <ol class="text-left"><li>Claim form (<a href="' +
                                    claim_form +
                                    '">Click here to download</a>)</li><li>Police Abstract</li><li>Copy of Driving License</li><li>Copy of the Log Book </li><li>Detailed statement and sketch of the circumstances of the accident</li></ol></p>',
                                showCloseButton: true,
                                showCancelButton: false,
                                allowOutsideClick: false,
                                focusConfirm: false,
                                confirmButtonText: '<i class="fa fa-thumbs-up"></i> Ok!',
                                confirmButtonAriaLabel: 'Thumbs up, great!',
                            });
                        } else if (response.status == 0) {
                            Swal.fire({
                                type: 'error',
                                title: response.message,
                                //text: 'Something went wrong!',
                            })
                        } else {
                            Swal.fire({
                                type: 'error',
                                title: 'An error occurred!',
                                //text: 'Something went wrong!',
                            })
                        }
                        form.find('button[name=request]').attr('disabled', true).html('INITIATE CLAIM');
                        $('button[name=request]').attr('disabled', false);
                    }
                });
            });
        });
    </script>

</body>

</html>