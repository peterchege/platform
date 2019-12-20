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

                        <h2 class="text-center1">INPATIENT BENEFIT</h2>
                        <hr>

                        <div class="row row-section ">
                            <div class="col-md-6 ">
                                <div class="row">
                                    <!-- COVER LIMIT -->
                                    <div class="form-group col-12">
                                        <label for="propery">Choose your cover Limit For your family :</label>
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
                                        <label for="propery">Principal (you) member Age :</label>
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
                                        <label for="propery">Spouse member Age :</label>
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
                                        <label for="propery">Child 1 member Age :</label>
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
                                <!-- <input name="building" id="building" type="text" class="form-control number-amount" placeholder="Building value" value="" disabled> -->
                                <table class="uk-table uk-table-striped calc">
                                    <thead>
                                        <tr class="calc_head">
                                            <th>MEMBERS</th>
                                            <th>ANNUAL OF COMPUTED</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Principal :</td>
                                            <td class="calc_value principal">Kshs 51,744</td>
                                        </tr>
                                        <tr>
                                            <td>Spouse : </td>
                                            <td class="calc_value spouse">Kshs 41,395</td>
                                        </tr>
                                        <tr>
                                            <td>Child 1 : </td>
                                            <td class="calc_value child1">Kshs 30,276</td>
                                        </tr>
                                        <tr>
                                            <td>Child 2 : </td>
                                            <td class="calc_value child2">Kshs 30,276</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <hr>

                        <!-- OUTPATIENT SECTION -->
                        <h2>OUTPATIENT BENEFIT</h2>
                        <div class="row row-section ">
                            <div class="col-md-6 ">
                                <div class="row">
                                    <!-- COVER LIMIT -->
                                    <!-- <div class="form-group col-12">
                                        <label for="propery">Choose your cover Limit :</label>
                                        <select id="property" name="property" class="form-control selectFilter" data-target="section" required>
                                            <option value="-1" selected disabled>Choose...</option>
                                            <option data-ref="" name="" value=""> Kshs 50,000.00 </option>
                                            <option data-ref="" name="" value=""> Kshs 75,000.00 </option>
                                            <option data-ref="" name="" value=""> Kshs 150,000.00 </option>

                                        </select>
                                    </div> -->
                                    <!-- PRINCIPLE MEMBER AGE -->
                                    <div class="form-group col-12">
                                        <label for="propery">Principal (you) Cover limit :</label>
                                        <select id="property" name="property" class="form-control selectFilter" data-target="section" required>
                                            <option value="-1" selected disabled>Choose...</option>
                                            <option data-ref="" name="" value=""> Kshs 50,000.00 </option>
                                            <option data-ref="" name="" value=""> Kshs 75,000.00 </option>
                                            <option data-ref="" name="" value=""> Kshs 150,000.00 </option>

                                        </select>
                                    </div>
                                    <!-- SPOUSE MEMBER AGE -->
                                    <div class="form-group col-12">
                                        <label for="propery">Spouse cover limit :</label>
                                        <select id="property" name="property" class="form-control selectFilter" data-target="section" required>
                                            <option value="-1" selected disabled>Choose...</option>
                                            <option data-ref="" name="" value=""> Kshs 50,000.00 </option>
                                            <option data-ref="" name="" value=""> Kshs 75,000.00 </option>
                                            <option data-ref="" name="" value=""> Kshs 150,000.00 </option>

                                        </select>
                                    </div>
                                    <!-- CHILD MEMBER AGE -->
                                    <div class="form-group col-12">
                                        <label for="propery">Child 1 member cover limit :</label>
                                        <select id="property" name="property" class="form-control selectFilter" data-target="section" required>
                                            <option value="-1" selected disabled>Choose...</option>
                                            <option data-ref="" name="" value=""> Kshs 50,000.00 </option>
                                            <option data-ref="" name="" value=""> Kshs 75,000.00 </option>
                                            <option data-ref="" name="" value=""> Kshs 150,000.00 </option>

                                        </select>
                                    </div>


                                </div>
                            </div>

                            <div class="form-group col-md-6" id="text">
                                <!-- <input name="building" id="building" type="text" class="form-control number-amount" placeholder="Building value" value="" disabled> -->
                                <table class="uk-table uk-table-striped calc">
                                    <thead>
                                        <tr class="calc_head">
                                            <th>MEMBERS</th>
                                            <th>ANNUAL OF COMPUTED</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Principal :</td>
                                            <td class="calc_value">Kshs 51,744</td>
                                        </tr>
                                        <tr>
                                            <td>Spouse : </td>
                                            <td class="calc_value">Kshs 41,395</td>
                                        </tr>
                                        <tr>
                                            <td>Child 1 : </td>
                                            <td class="calc_value">Kshs 30,276</td>
                                        </tr>
                                        <tr>
                                            <td>Child 2 : </td>
                                            <td class="calc_value">Kshs 30,276</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <hr>
                        <!-- DENTAL SECTION -->
                        <h2>DENTAL COVER</h2>
                        <div class="row row-section ">
                            <div class="col-md-6 ">
                                <div class="row">
                                    <!-- PRINCIPLE MEMBER AGE -->
                                    <div class="form-group col-12">
                                        <label for="propery">Principal (you) Cover limit :</label>
                                        <select id="property" name="property" class="form-control selectFilter" data-target="section" required>
                                            <option value="-1" selected disabled>Choose...</option>
                                            <option data-ref="" name="" value=""> Kshs 10,000.00 </option>
                                            <option data-ref="" name="" value=""> Kshs 20,000.00 </option>
                                            <option data-ref="" name="" value=""> Kshs 30,000.00 </option>

                                        </select>
                                    </div>
                                    <!-- SPOUSE MEMBER AGE -->
                                    <div class="form-group col-12">
                                        <label for="propery">Spouse cover limit :</label>
                                        <select id="property" name="property" class="form-control selectFilter" data-target="section" required>
                                            <option value="-1" selected disabled>Choose...</option>
                                            <option data-ref="" name="" value=""> Kshs 10,000.00 </option>
                                            <option data-ref="" name="" value=""> Kshs 20,000.00 </option>
                                            <option data-ref="" name="" value=""> Kshs 30,000.00 </option>

                                        </select>
                                    </div>
                                    <!-- CHILD MEMBER AGE -->
                                    <div class="form-group col-12">
                                        <label for="propery">Child 1 member cover limit :</label>
                                        <select id="property" name="property" class="form-control selectFilter" data-target="section" required>
                                            <option value="-1" selected disabled>Choose...</option>
                                            <option data-ref="" name="" value=""> Kshs 10,000.00 </option>
                                            <option data-ref="" name="" value=""> Kshs 20,000.00 </option>
                                            <option data-ref="" name="" value=""> Kshs 30,000.00 </option>

                                        </select>
                                    </div>


                                </div>
                            </div>

                            <div class="form-group col-md-6" id="text">
                                <!-- <input name="building" id="building" type="text" class="form-control number-amount" placeholder="Building value" value="" disabled> -->
                                <table class="uk-table uk-table-striped calc">
                                    <thead>
                                        <tr class="calc_head">
                                            <th>MEMBERS</th>
                                            <th>ANNUAL OF COMPUTED</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Principal :</td>
                                            <td class="calc_value">Kshs 51,744</td>
                                        </tr>
                                        <tr>
                                            <td>Spouse : </td>
                                            <td class="calc_value">Kshs 41,395</td>
                                        </tr>
                                        <tr>
                                            <td>Child 1 : </td>
                                            <td class="calc_value">Kshs 30,276</td>
                                        </tr>
                                        <tr>
                                            <td>Child 2 : </td>
                                            <td class="calc_value">Kshs 30,276</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <hr>

                        <!-- OPTIONAL SECTION -->
                        <h2>OPTIONAL COVER</h2>
                        <div class="row row-section ">
                            <div class="col-md-6 ">
                                <div class="row">
                                    <!-- MATERNITY COVER LIMIT -->
                                    <div class="form-group col-12">
                                        <label for="propery">Choose your Maternity cover Limit :</label>
                                        <select id="property" name="property" class="form-control selectFilter" data-target="section" required>
                                            <option value="-1" selected disabled>Choose...</option>
                                            <option data-ref="" name="" value=""> Kshs 50,000.00 </option>
                                            <option data-ref="" name="" value=""> Kshs 100,000.00 </option>
                                            <option data-ref="" name="" value=""> Kshs 150,000.00 </option>

                                        </select>
                                    </div>
                                    <!-- DENTAL COVER LIMIT -->
                                    <div class="form-group col-12">
                                        <label for="propery">Choose your Dental cover Limit :</label>
                                        <select id="property" name="property" class="form-control selectFilter" data-target="section" required>
                                            <option value="-1" selected disabled>Choose...</option>
                                            <option data-ref="" name="" value=""> Kshs 10,000.00 </option>
                                            <option data-ref="" name="" value=""> Kshs 20,000.00 </option>
                                            <option data-ref="" name="" value=""> Kshs 30,000.00 </option>

                                        </select>
                                    </div>
                                    <!-- OPTICAL COVER LIMIT -->
                                    <div class="form-group col-12">
                                        <label for="propery">Choose your Optical cover Limit :</label>
                                        <select id="property" name="property" class="form-control selectFilter" data-target="section" required>
                                            <option value="-1" selected disabled>Choose...</option>
                                            <option data-ref="" name="" value=""> Kshs 10,000.00 </option>
                                            <option data-ref="" name="" value=""> Kshs 20,000.00 </option>
                                            <option data-ref="" name="" value=""> Kshs 30,000.00 </option>

                                        </select>
                                    </div>

                                </div>
                            </div>

                            <div class="form-group col-md-6" id="text">
                                <table class="uk-table uk-table-striped calc">
                                    <thead>
                                        <tr class="calc_head">
                                            <th>MEMBERS</th>
                                            <th>ANNUAL OF COMPUTED</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Maternity : </td>
                                            <td class="calc_value">Kshs 41,395</td>
                                        </tr>
                                        <tr>
                                            <td>Dental : </td>
                                            <td class="calc_value">Kshs 41,395</td>
                                        </tr>
                                        <tr>
                                            <td>Optical : </td>
                                            <td class="calc_value">Kshs 41,395</td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <br><br>

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
                    <p>100,000</p>
                </div>
                <br>
                <hr>
                <div class="row">
                    <div class="col-10 result">
                        <h3>Charges:</h3>
                        <ul>
                            <li>
                                <h2>Total Inpatient Benefit :<span class="result_value"> Kshs 40,000</span></h2>
                            </li>
                            <li>
                                <h2>Total Outpatient Benefit :<span class="result_value"> Kshs 37,168</span></h2>
                            </li>
                            <li>
                                <h2>Total Maternity cover :<span class="result_value"> Kshs 20,000</span></h2>
                            </li>
                            <li>
                                <h2>Total Dental Cover :<span class="result_value"> Kshs 6,000</span></h2>
                            </li>
                            <li>
                                <h2>Total Optical Cover :<span class="result_value"> Kshs 3,440</span></h2>
                            </li>

                        </ul>
                    </div>
                </div>
                <br>
                <!-- <div class="rate text-center ">
                    <p> For more information you can contact us on<br> Tel - 0202862777</br></p>
                </div> -->
                <br>
                <hr>

                <div class="row text-center">
                    <div class="col-12 btn-quote">
                        <button name="buy_now" id="buy_now" class="btn">
                            Generate PDF QUOTE
                        </button>
                    </div>
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