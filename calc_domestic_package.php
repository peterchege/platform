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
                <form id="form">
                    <div class="container forn-container" id="form-container">
                        <h2 class="text-center">Premium Information</h2>
                        <hr>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="company_name">Name</label>
                                <input name="company_name" id="company_name" type="text" class="form-control" placeholder="Full Name" value="" required>
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
                                <input name="capacity" id="capacity" type="text" min="1" class="form-control" placeholder="Nairobi" value="">
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="inputAddress">Property</label>
                                <select id="property" name="property" class="form-control selectFilter" data-target="section">
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
                                <input name="building_amount" id="building_amount" type="number" class="form-control" placeholder="Building value" value="" disabled>
                            </div>
                        </div>

                        <!-- SECTION BUILDING SCRIPT-->
                        <script>
                            function myFunction_build() {
                                if (build_check.checked == true) {
                                    document.getElementById("building_amount").disabled = false;
                                    document.getElementById("building_amount").value = '';

                                } else {
                                    document.getElementById("building_amount").disabled = true;
                                    document.getElementById("building_amount").value = '';


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
                                        <label class="form-check-label" for="gridCheck1" data-target="#modal-center" uk-toggle>
                                            Contents Cover ( NOTE: We only insure brick material ... <i class="fas fa-info-circle"></i>
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-md-6">
                                <input name="content_amount" id="content_amount" type="number" class="form-control" placeholder="Contents Total Value" value="" disabled>
                            </div>
                        </div>

                        <!-- SECTION CONTENT SCRIPT-->
                        <script>
                            function myFunction_content() {
                                if (content_check.checked == true) {
                                    document.getElementById("content_amount").disabled = false;
                                    document.getElementById("content_amount").value = '';
                                } else {
                                    document.getElementById("content_amount").disabled = true;
                                    document.getElementById("content_amount").value = '';
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
                                        <label class="form-check-label" for="gridCheck1" data-target="#modal-center" uk-toggle>
                                            All Risk Cover ( NOTE: You cannot take this package alone... <i class="fas fa-info-circle"></i>
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-md-6">
                                <input name="risk_amount" id="risk_amount" type="number" class="form-control" placeholder="All Risk Total value" disabled>

                            </div>
                        </div>

                        <!-- SECTION ALLRISK SCRIPT-->

                        <script>
                            function myFunction_risk() {
                                if (risk_check.checked == true) {
                                    document.getElementById("risk_amount").disabled = false;
                                    document.getElementById("risk_amount").value = '';
                                } else {
                                    document.getElementById("risk_amount").disabled = true;
                                    document.getElementById("risk_amount").value = '';
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
                                        <label class="form-check-label" for="gridCheck1" data-target="#modal-center" uk-toggle>
                                            Domestic Employee ( NOTE: You can't take this package alone... <i class="fas fa-info-circle"></i>
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-md-6">
                                <input name="domestic_amount" id="domestic_amount" type="number" class="form-control" placeholder="Total Annual Salary" disabled>
                            </div>
                        </div>

                        <!-- SECTION DOMESTIC EMPLOYEE SCRIPT-->
                        <script>
                            function myFunction_domestic() {
                                if (domestic_check.checked == true) {
                                    document.getElementById("domestic_amount").disabled = false;
                                    document.getElementById("domestic_amount").value = '';
                                } else {
                                    document.getElementById("domestic_amount").disabled = true;
                                    document.getElementById("domestic_amount").value = '';
                                }
                            }
                        </script>

                        <!-- LIABILITY SECTION-->
                        <hr>
                        <div class="row row-section owner tenant">
                            <div class="form-group col-md-6 ">
                                <div class="row check-cn">
                                    <div class="col-2 check-bx">
                                        <input class="form-check-input" type="checkbox" id="liability" onclick="myFunction_liability()">
                                    </div>
                                    <div class="col-10">
                                        <label class="form-check-label" for="gridCheck1" data-target="#modal-center" uk-toggle>
                                            Liability Cover ( You will get a free cover for upto 500,000.
                                            Above that we charge a rate of 0.05%) <i class="fas fa-info-circle"></i>
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-md-6">
                                <label for="inputAddress">Declare Amount</label>
                                <input name="liability_amount" id="liability_amount" type="number" class="form-control" placeholder="500,000" disabled>
                            </div>
                        </div>

                        <script>
                            function myFunction_liability() {
                                if (liability.checked == true) {
                                    document.getElementById("liability_amount").disabled = false;
                                    document.getElementById("liability_amount").value = '';
                                } else {
                                    document.getElementById("liability_amount").disabled = true;
                                    document.getElementById("liability_amount").value = '';
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

                <div class="row text-center pos-btn">
                    <div class="col-6 btn-assist">
                        <a href="customer_login.php">
                            <button class="btn btn-quote">
                                Save Quote
                            </button>
                        </a>
                    </div>
                    <div class="col-6 btn-assist">
                        <button class="btn btn-quote">
                            Request Assistance
                        </button>
                    </div>

                </div>

                <div class="row text-center">
                    <div class="col-12 btn-red">
                        <button class="btn">
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
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                    exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
                    dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                    Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt
                    mollit anim id est laborum.
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