<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Jamii plus calculator - APA INSURANCE</title>
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
                                <input name="phone" id="phone" type="tel" class="form-control" placeholder="07XX XXX 537" value="" data-parsley-pattern="^(?:254|\+254|0)?(7(?:(?:[0-9][0-9])|(?:0[0-8])|(4[0-1]))[0-9]{6})$" data-parsley-trigger="keyup" required>
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

                        <!-- INPATIENT SECTION -->
                        <h2 class="text-center">INPATIENT BENEFIT</h2>
                        <hr>

                        <div class="row row-section ">
                            <div class="col-md-6 ">
                                <div class="row">
                                    <!-- COVER LIMIT -->
                                    <div class="form-group col-12">
                                        <label for="propery">Choose your cover Limit</label>
                                        <select id="property" name="property" class="form-control selectFilter" data-target="section" required>
                                            <option value="-1" selected disabled>Choose...</option>
                                            <option data-ref="" name="" value=""> DAZZLE - Kshs 10,0000,000 </option>
                                            <option data-ref="" name="" value=""> BRILLIANT - Kshs 5,000,000 </option>
                                            <option data-ref="" name="" value=""> TOSHA - Kshs 2,000,000 </option>
                                            <option data-ref="" name="" value=""> POA - Kshs 1,000,000 </option>
                                            <option data-ref="" name="" value=""> CLASSIC - Kshs 500,000 </option>
                                        </select>
                                    </div>
                                    <!-- PRINCIPLE MEMBER AGE -->
                                    <div class="form-group col-12">
                                        <label for="propery">Principle (you) member Age</label>
                                        <select id="property" name="property" class="form-control selectFilter" data-target="section" required>
                                            <option value="-1" selected disabled>Choose...</option>
                                            <option data-ref="" name="" value=""> 21 - 40 years </option>
                                            <option data-ref="" name="" value=""> 41 - 54 years </option>
                                            <option data-ref="" name="" value=""> 55 - 65 years </option>
                                            <option data-ref="" name="" value=""> 66 - 70 years </option>
                                            <option data-ref="" name="" value=""> 71 - 75 years </option>
                                            <option data-ref="" name="" value=""> 76 - 80 years </option>

                                        </select>
                                    </div>
                                    <!-- SPOUSE MEMBER AGE -->
                                    <div class="form-group col-12">
                                        <label for="propery">Spouse member Age</label>
                                        <select id="property" name="property" class="form-control selectFilter" data-target="section" required>
                                            <option value="-1" selected disabled>Choose...</option>
                                            <option data-ref="" name="" value=""> 21 - 40 years </option>
                                            <option data-ref="" name="" value=""> 41 - 54 years </option>
                                            <option data-ref="" name="" value=""> 55 - 65 years </option>
                                            <option data-ref="" name="" value=""> 66 - 70 years </option>
                                            <option data-ref="" name="" value=""> 71 - 75 years </option>
                                            <option data-ref="" name="" value=""> 76 - 80 years </option>

                                        </select>
                                    </div>
                                    <!-- CHILD MEMBER AGE -->
                                    <div class="form-group col-12">
                                        <label for="propery">Child member Age</label>
                                        <select id="property" name="property" class="form-control selectFilter" data-target="section" required>
                                            <option value="-1" selected disabled>Choose...</option>
                                            <option data-ref="" name="" value=""> 0 - 4 years </option>
                                            <option data-ref="" name="" value=""> 5 - 10 years </option>
                                            <option data-ref="" name="" value=""> 11 - 15 years </option>
                                            <option data-ref="" name="" value=""> 16 - 20 years </option>

                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group col-md-6" id="text">
                                <input name="building" id="building" type="text" class="form-control number-amount" placeholder="Building value" value="" disabled>
                            </div>
                        </div>



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
                    <h3>" The Premium is not inclusive of any applicable taxes "</h3>
                </div>
                <br>
                <div class="rate text-center ">
                    <p> For more information you can contact us on<br> Tel - 0202862777</br></p>
                </div>
                <br>
                <hr>

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



    <!-- Optional JavaScript -->
    <?php include 'inc/scripts.php'; ?>
    <script src="js/selectFilter.min.js"></script>
    <script src="js/parsley.min.js"></script>
    <!-- <script src="js/calc_domestic_package.js"></script> -->

</body>

</html>