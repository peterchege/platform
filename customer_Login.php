<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>APA INSURANCE</title>
    <link rel="stylesheet" href="css/customer.css" media="screen">

    <?php include 'views/head_links.php'; ?>



</head>

<body>
    <!-- ==============HEADER=============== -->

    <?php include 'views/nav.php'; ?>



    <!-- =====================================DOMESTIC PACKAGE CALCULATOR ===================================== -->

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 back-img">

            </div>

            <div class="col-md-6">
                <div class="customer-login">
                    <h2> WELCOME TO OUR CUSTOMER PORTAL</h2>
                    <form class="customer-form">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                        </div>

                        <div class="customer-btn">
                            <div class="row">
                                <button type="submit" class="btn btn-primary">LOGIN</button>
                            </div>

                            <div class="row">
                                <div class="col-md-7 col-sm-7">
                                    <div class="form-group">
                                        <a href="career_register.php">Don't have an Account? Create account</a> </div>
                                </div>
                                <div class="col-md-5 col-sm-5 text-right">
                                    <div class="form-group">
                                        <a class="" href="forgot_password.php">Forgot password?</a>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <!-- <p class="text-center">Sign in with :</p>
                            <div class=" text-center new-bt">
                                <a href="<?= ((isset($loginURL)) ? $loginURL : ''); ?>" class="btn btn-danger g-log">
                                    <i class="fab fa-google-plus-g"></i> Sign in with Google</a>
                            </div>
                            <div class=" text-center new-bt">
                                <a href="<?php
                                            //echo $linkedin->getAuthUrl();
                                            ?>" class="btn btn-primary t-log">
                                    <i class="fab fa-linkedin-in"></i> Sign in with Linkedin</a>
                            </div> -->

                        </div>
                    </form>
                </div>

            </div>

        </div>

    </div>
    <!-- =====================================FOOTER===================================== -->
    <?php include 'views/footer.php'; ?>
    <!-- Optional JavaScript -->
    <?php include 'inc/scripts.php'; ?>
    <script src="js/selectFilter.min.js"></script>

</body>

</html>