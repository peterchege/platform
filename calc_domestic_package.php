<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>APA INSURANCE</title>
    <link rel="stylesheet" href="css/calculator.css" media="screen">

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

                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="inputAddress">Section</label>
                                <select id="section" name="section" class="form-control section selectFilter ">
                                    <!-- Owner -->
                                    <option value="-1" selected disabled>Choose...</option>
                                    <option data-ref="building" data-belong="owner" value="Building">Building</option>
                                    <option data-ref="content" data-belong="owner" value="Content">Content</option>
                                    <option data-ref="all_risks" data-belong="owner" value="All Risk">All Risk</option>
                                    <option data-ref="domestic_employee" data-belong="owner" value="Domestic Employee">Domestic Employee</option>
                                    <!-- tenant -->
                                    <option data-ref="content" data-belong="tenant" value="Content">Content</option>
                                    <option data-ref="all_risk" data-belong="tenant" value="All Risk">All Risk</option>
                                    <option data-ref="domestic_employee" data-belong="tenant" value="Domestic Employee">Domestic Employee</option>
                                </select>
                            </div>

                            <div class="form-group col-md-6">
                                <label for="buiding_value">Value</label>
                                <input name="building_value" id="buiding_value" type="text" class="form-control" placeholder="Enter Value">
                            </div>
                        </div>

                        <!-- SECTION BUILDING -->
                        <div class="row">
                            <div class="form-group col-md-6 ">
                                <div class="row check-cn">
                                    <div class="col-2 check-bx">
                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                    </div>
                                    <div class="col-10">
                                        <label class="form-check-label" for="gridCheck1">
                                            Building Cover ( NOTE: We only ensure First class construction)
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-md-6">
                                <label for="inputAddress">Declare Amount</label>
                                <input name="amount" id="amount" type="number" class="form-control" placeholder="500,000" value="">

                            </div>
                        </div>

                        <!-- SECTION CONTENT -->
                        <div class="row">
                            <div class="form-group col-md-6 ">
                                <div class="row check-cn">
                                    <div class="col-2 check-bx">
                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                    </div>
                                    <div class="col-10">
                                        <label class="form-check-label" for="gridCheck1">
                                            Content Cover
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-md-6">
                                <label for="inputAddress">Declare Amount</label>
                                <input name="amount" id="amount" type="number" class="form-control" placeholder="500,000" value="">

                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-6 ">
                                <div class="row check-cn">
                                    <div class="col-2 check-bx">
                                        <input class="form-check-input" type="checkbox" id="gridCheck1">
                                    </div>
                                    <div class="col-10">
                                        <label class="form-check-label" for="gridCheck1">
                                            Liability Cover ( You will get a free cover for upto 500,000.
                                            Above that we charge a rate of 0.05%)
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-md-6">
                                <label for="inputAddress">Declare Amount</label>
                                <input name="amount" id="amount" type="number" class="form-control" placeholder="500,000" value="">

                            </div>
                        </div>
                        <br>

                        <div class="row">
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
                    <p>BUILDING : We only ensure First class construction. For more information you can contact us<br> Tel - O20 286 2000 , Email -info@apainsurance.org</p>
                </div>
                <br>
                <hr>

                <div class="row text-center">
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


            </div>
        </div>

    </div>
    <!-- =====================================FOOTER===================================== -->
    <?php include 'views/footer.php'; ?>
    <!-- Optional JavaScript -->
    <?php include 'inc/scripts.php'; ?>
    <script src="js/selectFilter.min.js"></script>
    <script src="js/calc_domestic_package.js"></script>

</body>

</html>