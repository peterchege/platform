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




    <!-- =====================================DOMESTIC PACKAGE CALCULATOR ===================================== -->

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 back-img">

            </div>

            <div class="col-md-6">
                <div class="customer-login">
                    <h2> WELCOME TO OUR CUSTOMER PORTAL</h2>
                    <div class="under-line img12">
                        <img src="images/line.png" alt="">
                    </div>
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
                                        <a href="customer_register.php">Don't have an Account? Create account</a> </div>
                                </div>
                                <div class="col-md-5 col-sm-5 text-right">
                                    <div class="form-group">
                                        <a class="" href="forgot_password.php">Forgot password?</a>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <p>Sign in with :</p>
                            <div class="row btn-cust">
                                <div class="col-md-6 ">
                                    <a href="#" class="btn btn-gmail"><i class="fab fa-google-plus-g"></i> Gmail</a>
                                </div>
                                <div class="col-md-6 ">
                                    <a href="#" class="btn btn-fb"><i class="fab fa-facebook-f"></i> Facebook</a>
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
    <!-- Optional JavaScript -->
    <?php include 'inc/scripts.php'; ?>
    <script src="js/selectFilter.min.js"></script>

</body>

</html>