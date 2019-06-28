<?php
require_once 'inc/db.php';
require_once 'inc/sessions.php';
require_once 'inc/functions.php';

confirm_login_careers();
?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>APA INSURANCE</title>
    <!-- jax A -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

    <script src="js/submit_personal_info.js"></script> <!-- load our javascript file -->
    <?php include 'views/head_links.php'; ?>
    <link rel="stylesheet" href="css/career.css" />

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <!-- My js copy -->
    <script type="text/javascript" src="js/workexperience.js"></script>
    <script type="text/javascript" src="js/change.js"></script>



</head>

<body>


    <!-- ==============HEADER=============== -->
    <?php include 'views/career_portal_nav.php'; ?>
    <!-- #header -->

    <!-- ===================================== JOB DESCRIPTION ===================================== -->
    <div id="msform">

        <ul id="progressbar" class="nav-list">
            <li class="act act" id="active1">PERSONAL <br>INFORMATION</li>
            <li class="act" id="active2">EMPLOYMENT<br> HISTORY</li>
            <li class="act" id="active3">EDUCATION<br> BACKGROUND</li>
            <li class="act" id="active4">FILE <br>ATTACHMENT</li>
            <li class="act" id="active5">REVIEW <br>AND SUBMIT</li>
            <!-- <li ><br>SUMMARY</li> -->
        </ul>


        <!-- PERSONAL INFORMATION FORM -->

        <fieldset id="first">
            <div class="container">
                <br>
                <div class="row">
                    <div class="col-10 job-box">
                        <div class="job-description text-center">
                            <h2 id="personal">PERSONAL INFORMATION</h2>
                            <p>Please enter all relevant personal information in the fields below</p>
                            <form action="submit_personal_info.php" method="POST">
                                <br>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label id="label-1" for="exampleInputEmail1"><span
                                                    class="icon_star">&#10040;</span>First Name</label>
                                            <input type="text" class="form-control" name="first_name"
                                                placeholder="Name"></div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1"><span
                                                    class="icon_star">&#10040;</span>Surname</label>
                                            <input type="text" name="surname" class="form-control my-input"
                                                placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1"><span class="icon_star">&#10040;</span>Other
                                                Name</label>
                                            <input type="text" name="other_names" class="form-control my-input"
                                                placeholder="">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label id="label-1" for="exampleInputEmail1"><span
                                                    class="icon_star">&#10040;</span>National ID</label>
                                            <input type="text" class="form-control my-input" name="id_no"
                                                placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1"><span class="icon_star">&#10040;</span>
                                                Gender</label>
                                            <select class="form-control my-input" name="gender">
                                                <option selected="selected" disabled>--Please choose --</option>
                                                <option value="MALE">MALE</option>
                                                <option value="FEMALE">FEMALE</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1"><span class="icon_star">&#10040;</span>Date
                                                of Birth</label>
                                            <input type="date" name="dob" class="form-control my-input" placeholder="">
                                        </div>
                                    </div>
                                </div>


                                </br>



                                <hr>

                                <h3>PLACE OF RESIDENCE</h3>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label id="label-1" for="exampleInputEmail1"><span
                                                    class="icon_star">&#10040;</span>COUNTRY</label>
                                            <input type="text" name="country" class="form-control my-input"
                                                aria-describedby="basic-addon" placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1"><span
                                                    class="icon_star">&#10040;</span>STATE/PROVINCE/COUNTY</label>
                                            <input type="text" name="state" class="form-control my-input"
                                                placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1"><span
                                                    class="icon_star">&#10040;</span>REGION/CITY</label>
                                            <input type="text" name="city" class="form-control my-input" placeholder="">
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <h3>CONTACT DETAILS</h3>
                                <div class="form-group">
                                    <label for="exampleInputPassword1"><span class="icon_star">&#10040;</span>Phone
                                        Number</label>
                                    <input type="tel" name="phone" class="form-control my-input" placeholder="">
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputEmail1"><span class="icon_star">&#10040;</span>Email
                                        address</label>
                                    <input type="email" name="email" class="form-control my-input"
                                        id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="">
                                </div>
                                <!-- <div class="form-group">
                                    <label for="exampleInputEmail1">EXPECTED SALARY</label>
                                    <input type="text" name="salary" class="form-control my-input" placeholder="">
                                </div> -->
                                <br>
                                <div class="row btn-form">
                                    <div class="col-md-3">
                                        <div class="text-center new-bt bt-back">
                                            <a href="#" class="btn btn-secondary">BACK</a>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="text-center  new-bt">
                                            <!-- <a href="career_employment.html" class="btn btn-primary">save & continue</a> 
                                             <input name="next" id="submitFormData" onclick="SubmitFormData();" class="btn btn-primary next" type="submit" value="save & continue"> 
                                         <input type="button" id="submitFormData" onclick="SubmitFormData();" value="Submit" />  
 
                                         <button type="submit" id="submitFormData" onclick="SubmitFormData();" class="btn btn-success">Submit <span class="fa fa-arrow-right"></span></button>
                                      <button type="submit" class="btn btn-success">Submit <span class="fa fa-arrow-right"></span></button>-->
                                            <input id="next_btn1" onclick="next_step1()" class="btn btn-primary next"
                                                type="button" value="save & continue">

                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class=" text-center new-bt bt-back">
                                            <a href="#" class="btn btn-danger g-log1">QUIT</a>
                                        </div>
                                    </div>
                                </div>
                                <br>
                            </form>
                            <div id="results">


                            </div>
                        </div>
                    </div>
                </div>
        </fieldset>


        <!-- =====================================FOOTER===================================== -->
        <?php include 'views/footer.php'; ?>
        <!-- #footer -->
        <!-- Optional JavaScript -->

        <!-- UIkit JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit-icons.min.js"></script>
        <script src="js/uikit.min.js"></script>
        <script src="js/uikit-icons.min.js"></script>



        <!-- jQuery first, then Popper.js, then Bootstrap JS -->

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
        </script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
        </script>
        <script src="js/summary.js" type="text/javascript"></script>
</body>

</html>