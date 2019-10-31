<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>APA INSURANCE</title>
    <link rel="stylesheet" href="css/product.css">
    <link rel="stylesheet" href="css/career.css">
    <link rel="stylesheet" href="css/apollo_centre.css" media="screen">
    <link rel="stylesheet" href="css/parsley.css" media="screen">
    <?php include 'views/head_links.php'; ?>

</head>

<body>


    <!-- ==============HEADER=============== -->
    <?php include 'views/nav.php'; ?>
    <!-- #header -->


    <!-- ===================================== JOB DESCRIPTION ===================================== -->
    <div class="container-fluid212">
        <div class="header-image header-image1 asset-2b">
        </div>
    </div>

    <div class="container product-container">
        <div class="row">
            <div class="col-11 job-box1 wow fadeInUp" data-wow-delay="0.07s">

                <div class="overview-nav">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab"
                                aria-controls="home" aria-selected="true">OVERVIEW</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab"
                                aria-controls="profile" aria-selected="false">CHARGES</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#start" role="tab"
                                aria-controls="profile" aria-selected="false">HOW DO I START</a>
                        </li>

                    </ul>
                    <div class="tab-content" id="myTabContent">

                        <!-- OVERVIEW -->
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

                            <div class="job-description text-center">

                                <h2> Apollo Balanced Fund </h2>
                                <P class="text-justify">This is a short to medium term investment product that aims to
                                    give a reasonable rate of interest while preserving capital
                                    and offering liquidity..
                                </P>


                                <hr>
                                <div class="job-content">
                                    <div class="text-justify">
                                        <h2>Why the Apollo Balanced Fund? (Features) </h2>
                                        <p2>The Fund aims to balance a medium risk investment strategy by spreading its
                                            investments among ordinary shares, preferred stock, high yielding
                                            bonds, Bank deposits and offshore investments.
                                        </p2><br><br>
                                        <p2>When compared to Apollo Equity Fund the Balanced Fund will typically perform
                                            better when the stock market is declining and worse when it is gaining.
                                        </p2><br><br>
                                        <p2>This hybrid fund is suitable for investors with a moderate risk profile
                                            seeking a reasonable level of income and capital growth. Based on personal
                                            objectives clients who do not want the hassle of investing in a variety of
                                            products that need to be re-balanced at regular intervals are advised
                                            to invest for at least 3 years in order to derive ‘the best of both worlds’
                                            as the fund’s portfolio is invested in a combination of equities and debt.
                                        </p2><br><br>
                                        <p2>The minimum lump sum investment is Sh. 10,000 with additional top ups of sh.
                                            5,000. Regular voluntary top ups can be made by cheque, direct cash deposit,
                                            direct debit order or standing order.
                                        </p2>

                                        <br><br><br><br>

                                        <div class="row">
                                            <div class="col-4">
                                                <div class="load-more text-center" data-target="#modal-full" uk-toggle>
                                                    <a href="#" class="btn btn-primary">Get Cover</a>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="load-more text-center " data-target="#modal-full1"
                                                    uk-toggle="target: #modal-close-outside">
                                                    <a href="#" class="btn btn-danger"> Download Forms </a>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="load-more text-center " data-target="#modal-full" uk-toggle>
                                                    <a href="#" class="btn btn-dark">I Need Assistance</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>

                        <!-- ===================================== LEAD FORM FOR ABF INVESTMENTS===================================== -->

                        <div id="modal-full" class="uk-modal-full" uk-modal>
                            <div class="uk-modal-dialog">
                                <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
                                <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
                                    <div class="uk-background-cover"
                                        style="background-image: url('img/saving3.jpg'); background-size: cover;"
                                        uk-height-viewport></div>
                                    <div class="uk-padding-large">


                                        <form id="form" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST"
                                            class="form-container">
                                            <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                                            <div class="container">
                                                <div class="row">
                                                    <div class="form-group col-md-12">
                                                        <label for="full_name">Full Name</label>
                                                        <input name="full_name" type="text" class="form-control"
                                                            id="full_name" placeholder="Full Name" value="" required>
                                                    </div>
                                                    <div class="form-group col-md-12">
                                                        <label for="phone">Mobile Number</label>
                                                        <input name="phone" type="tel" class="form-control" id="phone"
                                                            placeholder="Mobile Number" value="" required>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="form-group col-md-12">
                                                        <label for="email">Email Address</label>
                                                        <input name="email" type="email" class="form-control" id="email"
                                                            placeholder="Email" value="" required
                                                            data-parsley-type="email" data-parsley-trigger="keyup">
                                                    </div>
                                                    <div class=" form-group col-md-12">
                                                        <label for="location">Location</label>
                                                        <input name="location" type="text" class="form-control"
                                                            id="location" placeholder="Nairobi" value="" required>
                                                    </div>
                                                </div>

                                            </div>
                                            <!-- <hr>
                                            <div class="form-group col-md-12">
                                                <h3 for="inputAddress">VEHICLE DETAILS</h3>
                                            </div>

                                            <div class="container">
                                                <div class="row">
                                                    <div class="form-group col-md-6">
                                                        <label for="make">Vehicle Make</label>
                                                        <input name="make" type="text" class="form-control" id="make"
                                                            placeholder="Toyota" value="" required>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="model">Vehicle Model</label>
                                                        <input name="model" type="text" class="form-control" id="model"
                                                            placeholder="Crown" value="" required>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="form-group col-md-6">
                                                        <label for="value">Vehicle Value (Kshs)</label>
                                                        <input name="value" type="text" class="form-control" id="value"
                                                            placeholder="1,400,000" value="" required>
                                                    </div>
                                                    <div class=" form-group col-md-6">
                                                        <label for="yom">Year of Manufacture</label>
                                                        <input name="yom" type="number" class="form-control" id="yom"
                                                            placeholder="2019" value="" required
                                                            data-parsley-pattern="^\d{4}$" data-parsley-trigger="keyup">
                                                    </div>
                                                </div> -->
                                            <div style="display: none">
                                                <input type="hidden" id="product_id" name="product_id" value="6">
                                                <input type="hidden" id="product_category_id" name="product_category_id"
                                                    value="14">
                                                <input type="hidden" id="type" name="type" value="Contact Us">
                                            </div>
                                            <div class="row book-btn">
                                                <div class="col-md-12">
                                                    <button type="submit" name="request" class="btn btn-primary">SUBMIT
                                                        <i class="fas fa-paper-plane"></i>
                                                    </button>
                                                </div>
                                            </div>
                                    </div>
                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- FEATURES -->
                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">

                        <div class="job-description text-center">
                            <div class="job-content">
                                <div class="text-justify">
                                    <!-- <h2 class="text-center">Our main products features include:</h2><br> -->

                                    <p> CHARGES</p>
                                    <p2>A 4 % one off charge known as an “initial/upfront fee” as well as a
                                        management fee of up to 2% annually..</p2><br><br>
                                    <p2>upfront fees do not apply for switches between Apollo Equity Fund and Apollo
                                        Balanced Fund</p2><br><br><br>
                                    <p2><i>The price of shares, and the income therefrom is the collective
                                            investment scheme pays dividends, may go down as
                                            well as up: and investors are reminded that in certain specified
                                            circumstances their right to redeem their
                                            shares may be suspended .</i></p2>
                                    <br><br>

                                </div>

                            </div>
                        </div>

                    </div>

                    <!-- BENEFITS -->

                    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">

                        <div class="job-description text-center">
                        </div>
                    </div>

                    <!-- HOW DO I START -->

                    <div class="tab-pane fade" id="start" role="tabpanel" aria-labelledby="contact-tab">

                        <div class="job-description text-left">
                            <br>
                            <p>If you are interested in learning how much this insurance product would cost
                                you, or if you are interested in purchasing this insurance product, please click
                                <b>Get Cover</b>.
                            </p>
                            <p>
                                If you would like further assistance explanation or assistance about this insurance
                                product, please click I <b>Need Assistance.</b>
                            </p>
                            <p>
                                <b> Download forms</b> will give you access to any relevant documents for this
                                insurance product,
                                such as the claim form, proposal form etc.
                            </p><br> <br>
                            <div class="row">
                                <div class="col-4">
                                    <div class="load-more text-center" data-target="#modal-full" uk-toggle>
                                        <a href="#" class="btn btn-primary">Get Cover</a>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="load-more text-center ">
                                        <a href="#" class="btn btn-danger"> Download Forms </a>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="load-more text-center" data-target="#modal-full" uk-toggle>
                                        <a href="#" class="btn btn-dark">I Need Assistance</a>
                                    </div>
                                </div>
                            </div>
                            <br><br> <br>
                        </div>


                    </div>
                </div>
            </div>
            <BR>
        </div>
    </div>
    </div>

    <!-- ===================================== LEAD FORM FOR INVESTMENT ===================================== -->

    <div id="modal-full" class="uk-modal-full" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
            <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
                <div class="uk-background-cover"
                    style="background-image: url('img/saving3.jpg'); background-size: cover;" uk-height-viewport>
                </div>
                <div class="uk-padding-large">


                    <form id="form" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container">
                        <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="full_name">Full Name</label>
                                    <input name="full_name" type="text" class="form-control" id="john doe"
                                        placeholder="john doe" value="" required>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="phone">Mobile Number</label>
                                    <input name="phone" type="tel" class="form-control" id="phone"
                                        placeholder="07xx 343 xx7" value="" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="email">Email Address</label>
                                    <input name="email" type="email" class="form-control" id="email"
                                        placeholder="john@example.com" value="" required data-parsley-type="email"
                                        data-parsley-trigger="keyup">
                                </div>
                                <div class=" form-group col-md-12">
                                    <label for="location">Location</label>
                                    <input name="location" type="text" class="form-control" id="location"
                                        placeholder="Nairobi" value="" required>
                                </div>
                            </div>

                        </div>

                        <div class="row book-btn">
                            <div class="col-md-12">
                                <button type="submit" name="request" class="btn btn-primary">SUBMIT <i
                                        class="fas fa-paper-plane"></i>
                                </button>
                            </div>
                        </div>
                </div>
                </form>

            </div>
        </div>
    </div>
    </div>

    <!-- =====================================FOOTER===================================== -->
    <?php include 'views/footer.php'; ?>
    <!-- #footer -->


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

    <!-- ===================================== LEAD FORM FOR COMPREHENSIVE ===================================== -->

    <div id="modal-full" class="uk-modal-full" uk-modal>
        <div class="uk-modal-dialog">
            <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
            <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
                <div class="uk-background-cover"
                    style="background-image: url('images/motor.jpg'); background-size: cover;" uk-height-viewport></div>
                <div class="uk-padding-large">


                    <form class="form-container">
                        <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="inputAddress">Full Name</label>
                                    <input name="company_name" type="text" class="form-control" id="inputAddress"
                                        placeholder="Full Name"
                                        value="<?= ((isset($company_name)) ? $company_name : '') ?>">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputAddress2">Mobile Number</label>
                                    <input name="phone" type="tel" class="form-control" id="inputAddress2"
                                        placeholder="Mobile Number" value="<?= ((isset($phone)) ? $phone : '') ?>">
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="inputAddress">Email Address</label>
                                    <input name="email" type="email" class="form-control" id="inputAddress"
                                        placeholder="Email" value="<?= ((isset($email)) ? $email : '') ?>">
                                </div>
                                <div class=" form-group col-md-6">
                                    <label for="inputAddress2">Location</label>
                                    <input name="capacity" type="text" class="form-control" id="inputAddress2"
                                        placeholder="Nairobi" value="<?= ((isset($capacity)) ? $capacity : '') ?>">
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
                                    <input name="company_name" type="text" class="form-control" id="inputAddress"
                                        placeholder="Toyota"
                                        value="<?= ((isset($company_name)) ? $company_name : '') ?>">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputAddress2">Vehicle Model</label>
                                    <input name="text" type="text" class="form-control" id="inputAddress2"
                                        placeholder="Crown" value="<?= ((isset($phone)) ? $phone : '') ?>">
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="inputAddress">Vehicle Value (Kshs)</label>
                                    <input name="number" type="Vehicle_value" class="form-control" id="inputAddress"
                                        placeholder="1,400,000" value="<?= ((isset($email)) ? $email : '') ?>">
                                </div>
                                <div class=" form-group col-md-6">
                                    <label for="inputAddress2">Year of Manufacture</label>
                                    <input name="capacity" type="number" class="form-control" id="inputAddress2"
                                        placeholder="2019" value="<?= ((isset($capacity)) ? $capacity : '') ?>">
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


    <?php
    require_once 'inc/scripts.php';
    ?>
    <script src="js/parsley.min.js"></script>
    <script src="js/lead.js"></script>
</body>

</html>