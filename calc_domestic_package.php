<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>APA INSURANCE</title>
    <link rel="stylesheet" href="css/calculator.css" media="screen">
    <link rel="stylesheet" href="css/parsley.css" media="screen">

    <?php include 'views/head_links.php'; ?>

</head>

<body>
    <!-- ==============HEADER=============== -->

    <?php include 'views/nav.php'; ?>



    <!-- =====================================DOMESTIC PACKAGE CALCULATOR ===================================== -->
    <div class="container-fluid">

        <div class="row ">
            <div class="col-md-6 box-container">
                <form method="POST" action="<?php $_SERVER['PHP_SELF'] ?>" id="form">
                    <div class="container forn-container error-margin" id="form-container">
                        <h2 class="text-center">Premium Information</h2>
                        <hr>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="full_name">Name</label>
                                <input name="full_name" id="full_name" type="text" class="form-control" placeholder="Full Name" value="" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="phone">Phone Number</label>
                                <input name="phone" id="phone" type="tel" class="form-control" placeholder="07XX XXX 537" value="" data-parsley-pattern="^(?:254|\+254|0)?(7(?:(?:[129][0-9])|(?:0[0-8])|(4[0-1]))[0-9]{6})$" data-parsley-trigger="keyup" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="email">Email Address</label>
                                <input name="email" id="email" type="email" class="form-control" placeholder="example@gmail.com" value="" required>
                            </div>
                            <div class=" form-group col-md-6">
                                <label for="location">Location</label>
                                <input name="location" id="location" type="text" class="form-control" placeholder="Nairobi" value="" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="propery">Property</label>
                                <select id="property" name="property" class="form-control selectFilter" data-target="section" required>
                                    <option value="-1" selected disabled>Choose...</option>
                                    <option data-ref="owner" name="owner" value="owner">Owner</option>
                                    <option data-ref="tenant" name="tenant" value="tenant">Tenant</option>
                                </select>
                            </div>
                        </div>

                        <!-- SECTION BUILDING -->
                        <div class="row row-section owner">
                            <div class="form-group col-md-6 ">
                                <div class="row check-cn">
                                    <div class="col-2 check-bx">
                                        <input class="form-check-input" type="checkbox" id="build_check" onclick="myFunction_build()">
                                    </div>
                                    <div class="col-10">
                                        <label class="form-check-label" for="gridCheck1" data-target="#modal-center" uk-toggle>
                                            Building Cover ( NOTE: We only insure brick material ... <i class="fas fa-info-circle"></i>
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-md-6" id="text">
                                <input name="building" id="building" type="text" class="form-control number-amount" placeholder="Building value" value="" disabled>
                            </div>
                        </div>

                        <!-- SECTION BUILDING SCRIPT-->
                        <script>
                            function myFunction_build() {
                                if (build_check.checked == true) {
                                    document.getElementById("building").disabled = false;
                                    document.getElementById("building").value = '';

                                } else {
                                    document.getElementById("building").disabled = true;
                                    document.getElementById("building").value = '';


                                }
                            }
                        </script>

                        <!-- SECTION CONTENT -->
                        <div class="row row-section owner tenant">
                            <div class="form-group col-md-6 ">
                                <div class="row check-cn">
                                    <div class="col-2 check-bx">
                                        <input class="form-check-input" type="checkbox" id="content_check" onclick="myFunction_content()">
                                    </div>
                                    <div class=" col-10">
                                        <label class="form-check-label" for="gridCheck1" data-target="#modal-center1" uk-toggle>
                                            Contents Cover ( NOTE: We only insure brick material ... <i class="fas fa-info-circle"></i>
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-md-6">
                                <input name="content" id="content" type="text" class="form-control number-amount" placeholder="Contents Total Value" value="" disabled>
                            </div>
                        </div>

                        <!-- SECTION CONTENT SCRIPT-->
                        <script>
                            function myFunction_content() {
                                if (content_check.checked == true) {
                                    document.getElementById("content").disabled = false;
                                    document.getElementById("content").value = '';
                                } else {
                                    document.getElementById("content").disabled = true;
                                    document.getElementById("content").value = '';
                                }
                            }
                        </script>

                        <!-- SECTION ALLRISK -->
                        <div class="row row-section owner tenant">
                            <div class="form-group col-md-6 ">
                                <div class="row check-cn">
                                    <div class="col-2 check-bx">
                                        <input class="form-check-input" type="checkbox" id="risk_check" onclick="myFunction_risk()">
                                    </div>
                                    <div class="col-10">
                                        <label class="form-check-label" for="gridCheck1" data-target="#modal-center2" uk-toggle>
                                            All Risk Cover ( NOTE: You cannot take this package alone... <i class="fas fa-info-circle"></i>
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-md-6">
                                <input name="allrisk" id="allrisk" type="text" class="form-control number-amount" placeholder="All Risk Total value" disabled>

                            </div>
                        </div>

                        <!-- SECTION ALLRISK SCRIPT-->

                        <script>
                            function myFunction_risk() {
                                if (risk_check.checked == true) {
                                    document.getElementById("allrisk").disabled = false;
                                    document.getElementById("allrisk").value = '';
                                } else {
                                    document.getElementById("allrisk").disabled = true;
                                    document.getElementById("allrisk").value = '';
                                }
                            }
                        </script>

                        <!-- SECTION DOMESTIC EMPLOYEE -->
                        <div class="row row-section owner tenant">
                            <div class="form-group col-md-6 ">
                                <div class="row check-cn">
                                    <div class="col-2 check-bx">
                                        <input class="form-check-input" type="checkbox" id="domestic_check" onclick="myFunction_domestic()">
                                    </div>
                                    <div class="col-10">
                                        <label class="form-check-label" for="gridCheck1" data-target="#modal-center3" uk-toggle>
                                            Domestic Employee ( NOTE: You can't take this package alone... <i class="fas fa-info-circle"></i>
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-md-6">
                                <input name="domestic" id="domestic" type="text" class="form-control number-amount" placeholder="Total Annual Salary" disabled>
                            </div>
                        </div>

                        <!-- SECTION DOMESTIC EMPLOYEE SCRIPT-->
                        <script>
                            function myFunction_domestic() {
                                if (domestic_check.checked == true) {
                                    document.getElementById("domestic").disabled = false;
                                    document.getElementById("domestic").value = '';
                                } else {
                                    document.getElementById("domestic").disabled = true;
                                    document.getElementById("domestic").value = '';
                                }
                            }
                        </script>

                        <!-- LIABILITY SECTION-->
                        <hr>
                        <div class="row row-section owner tenant">
                            <div class="form-group col-md-6 ">
                                <div class="row check-cn">
                                    <div class="col-2 check-bx">
                                        <input class="form-check-input" type="checkbox" id="liabilityc" onclick="myFunction_liability()">
                                    </div>
                                    <div class="col-10">
                                        <label class="form-check-label" for="gridCheck1" data-target="#modal-center4" uk-toggle>
                                            Liability Cover ( You will get a free cover for upto 500,000.
                                            Above that we charge a rate of 0.05%) <i class="fas fa-info-circle"></i>
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-md-6">
                                <label for="inputAddress">Declare Amount</label>
                                <input name="liability" id="liability" type="text" class="form-control number-amount" placeholder="500,000" disabled>
                            </div>
                        </div>

                        <script>
                            function myFunction_liability() {
                                if (liabilityc.checked == true) {
                                    document.getElementById("liability").disabled = false;
                                    document.getElementById("liability").value = '';
                                } else {
                                    document.getElementById("liability").disabled = true;
                                    document.getElementById("liability").value = '';
                                }
                            }
                        </script>

                        <br>

                        <div class="row row-section owner tenant">
                            <div class="form-group col-md-6 btn-cal">
                                <button class="btn btn-primary" id="calculate">CALCULATE</button>
                            </div>
                        </div>

                    </div>
                </form>
            </div>

            <!-- Value Being displayed -->
            <div class="col-md-3 box-container1 left-side">
                <h2>TOTAL AMOUNT <br>(Kshs)</h2>
                <div class="box-amount total">
                    <p></p>
                </div>
                <br>
                <hr>
                <div class="row">
                </div>
                <h3>DISCLAIMER</h3>
                <div class="rate">
                    <p>BUILDING : We only ensure First class construction. For more information you can contact
                        us<br> Tel - O20 286 2000 , Email -info@apainsurance.org</p>
                </div>
                <br>
                <hr>

                <!-- <div class="row text-center pos-btn">
                    <div class="col-6 btn-assist">
                        <a href="http://apatest.dev">
                            <button id="save_quote" class="btn btn-quote">
                                Save Quote
                            </button>
                        </a>
                    </div>
                    <div class="col-6 btn-assist">
                        <button class="btn btn-quote">
                            Request Assistance
                        </button>
                    </div>
                </div> -->

                <div class="row text-center">
                    <div class="col-12 btn-red">
                        <button name="buy_now" id="buy_now" class="btn">
                            BUY NOW
                        </button>
                    </div>
                </div>
                <br>

            </div>
        </div>

    </div>
    <!-- =====================================FOOTER===================================== -->
    <?php include 'views/footer.php'; ?>



    <!-- ===================================== BUILDING COVER INFORMATION ===================================== -->
    <div id="modal-center" class="uk-flex-top" uk-modal>
        <div class="uk-modal-dialog uk-modal-body uk-margin-auto-vertical">

            <button class="uk-modal-close-default" type="button" uk-close></button>
            <div class="modal-cont">
                <h2>BUILDING COVER</h2>
                <hr>
                <p>This section covers a private dwelling house including domestic outbuildings, walls, gates
                    and fences, all on the same premise or flat.
                </p>
            </div>

        </div>
    </div>

    <!-- ===================================== CONTENTS COVER INFORMATION ===================================== -->
    <div id="modal-center1" class="uk-flex-top" uk-modal>
        <div class="uk-modal-dialog uk-modal-body uk-margin-auto-vertical">

            <button class="uk-modal-close-default" type="button" uk-close></button>
            <div class="modal-cont">
                <h2>CONTENTS COVER</h2>
                <hr>
                <p>The section caters for furniture, household goods, and personal effects of every description,
                    the property of the insured or any member of his family normally residing with him, fixtures &
                    fittings, the insured’s own or for which he is legally responsible, not being the landlord’s fixtures and fittings
                </p>
            </div>

        </div>
    </div>

    <!-- ===================================== ALL RISK COVER INFORMATION ===================================== -->
    <div id="modal-center2" class="uk-flex-top" uk-modal>
        <div class="uk-modal-dialog uk-modal-body uk-margin-auto-vertical">

            <button class="uk-modal-close-default" type="button" uk-close></button>
            <div class="modal-cont">
                <h2>ALL RISK COVER</h2>
                <hr>
                <p>This section provides cover in respect to specified portable and valuable items, which are carried
                    outside the house. Items under this section would include jewellery, watches, laptops, mobile phones
                </p>
            </div>

        </div>
    </div>

    <!-- ===================================== DOMESTIC EMPLOYEE COVER INFORMATION ===================================== -->
    <div id="modal-center3" class="uk-flex-top" uk-modal>
        <div class="uk-modal-dialog uk-modal-body uk-margin-auto-vertical">

            <button class="uk-modal-close-default" type="button" uk-close></button>
            <div class="modal-cont">
                <h2>DOMESTIC EMPLOYEE COVER</h2>
                <hr>
                <p>This covers domestic servants such as house helps, watchmen, gardeners and drivers in respect of injury,
                    death or disease arising out of and in the course of employment. The cover is mandatory for all employers
                    as per the Work Injury Benefit Act (WIBA).
                </p>
            </div>

        </div>
    </div>

    <!-- =====================================LIABILITY COVER INFORMATION ===================================== -->
    <div id="modal-center4" class="uk-flex-top" uk-modal>
        <div class="uk-modal-dialog uk-modal-body uk-margin-auto-vertical">

            <button class="uk-modal-close-default" type="button" uk-close></button>
            <div class="modal-cont">
                <h2>LIABILITY COVER</h2>
                <hr>
                <p>This section covers liabilities as a result of death or injury to third parties and damage to third party
                    property whilst at the private dwelling house due to the negligence of the owner or occupier.

                </p>
            </div>

        </div>
    </div>



    <!-- Optional JavaScript -->
    <?php include 'inc/scripts.php'; ?>
    <script src="js/selectFilter.min.js"></script>
    <script src="js/parsley.min.js"></script>
    <script src="js/calc_domestic_package.js"></script>

</body>

</html>