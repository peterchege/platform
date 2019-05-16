<?php

require_once 'inc/db.php';
require_once 'inc/functions.php';
require_once 'inc/sessions.php';

//linkedin signup/login
require_once 'linkedin2/init.php';

//google login
require_once 'googleapi/config.php';
$loginURL = $gClient->createAuthUrl();
//echo $loginURL;

//twitter login
require 'twitter_oauth/api/twitteroauth/autoload.php';
use Abraham\TwitterOAuth\TwitterOAuth;

define('CONSUMER_KEY', "4fUTSkXFz4CkmOZ4mIyTMlKiJ");
define('CONSUMER_SECRET', "MJW5rIjRoecpVDd1Tavv5LEhJBVpnKdSxaOIc5kvI9po4f1BQv");
define('OAUTH_CALLBACK', 'http://localhost/apa/projects/website/twitter_oauth/api/callback.php');

if (!isset($_SESSION['access_token'])) {
    $connection = new TwitterOAuth(CONSUMER_KEY, CONSUMER_SECRET);
    $request_token = $connection->oauth('oauth/request_token', array('oauth_callback' => OAUTH_CALLBACK));

    $_SESSION['oauth_token'] = $request_token['oauth_token'];
    $_SESSION['oauth_token_secret'] = $request_token['oauth_token_secret'];
    $url = $connection->url('oauth/authorize', array('oauth_token' => $request_token['oauth_token']));
    //echo $url;
} else {
    $access_token = $_SESSION['access_token'];
    $connection = new TwitterOAuth(CONSUMER_KEY, CONSUMER_SECRET, $access_token['oauth_token'], $access_token['oauth_token_secret']);
    $user = $connection->get('account/verify_credentials');


    $_SESSION['id'] = $user->id;
    $twitter_id = $_SESSION['id'];
    $_SESSION['name'] = $user->name;
    $twitter_name = $_SESSION['name'];
    $_SESSION['profile_image_url'] = $user->profile_image_url;
    $twitter_profile_image = $_SESSION['profile_image_url'];

    //    Insert into Database
    $check = $db->query("SELECT * FROM apa_job_applicants WHERE applicant_id = '$twitter_id'");
    if (mysqli_num_rows($check) > 0) {
        //        user already registered so redirect to job portal
        //header('location:homepage.html');

    } else {
        //        user doesn't exist so enter details to database
        $insert_twitter_applicant = $db->query("INSERT INTO apa_job_applicants (applicant_id, first_name, profile_image_url, social_media_platform) VALUES ('$twitter_id', '$twitter_name', '$twitter_profile_image', 'twitter') ");
        $_SESSION['successMessage'] = 'Welcome to your job portal.';
        echo "<script>
    window.open('','_SELF')
    </script>";
        exit;
    }


    //	echo '<pre>';
    //	print_r($user);
    //    echo '</pre>';
}


//normal registration
if (isset($_POST['submit_registration'])) {
    $applicant_id = randomstring(20);
    $first_name = mysqli_real_escape_string($db, $_POST['first_name']);
    $second_name = mysqli_real_escape_string($db, $_POST['second_name']);
    $email = mysqli_real_escape_string($db, $_POST['email']);
    $password = mysqli_real_escape_string($db, $_POST['password']);
    $confirm_password = mysqli_real_escape_string($db, $_POST['confirm_password']);

    if (empty($first_name) || empty($second_name) || empty($email) || empty($password) || empty($confirm_password)) {
        $errors[] = 'All fields required.';
    }

    if (strlen($password) < 6 || strlen($confirm_password) < 6) {
        $errors[] = 'Password should consist of at least six characters.';
    }

    if ($password !== $confirm_password) {
        $errors[] = 'Passwords do not match.';
    }

    $emailCheck = $db->query("SELECT email FROM apa_job_applicants WHERE email = '$email'");
    if (mysqli_num_rows($emailCheck) > 0) {
        $errors[] = 'Email already exists. Please choose another.';
    }

    if (empty($errors)) {

        $confirm_password = password_hash($confirm_password, PASSWORD_DEFAULT);
        $db->query("INSERT INTO apa_job_applicants ( applicant_id, first_name, second_name, email, confirm_password, social_media_platform) 
                                            VALUES('$applicant_id', '$first_name', '$second_name', '$email', '$confirm_password', 'normal' ) ");
        $_SESSION['successMessage'] = 'Registered successfully. Please login.';
        echo '<script type="text/javascript">
        window.open("career_login.php", "_SELF");
    </script>';
        exit();
    }
}
?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>APA INSURANCE</title>

    <!-- Google Font API  -->
    <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">

    <!-- My css copy -->
    <link rel="stylesheet" href="css/test.css" />
    <link rel="stylesheet" href="css/career.css" />


    <!-- Font Awsome 5.7.2 -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
        integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

    <!-- Asset CSS Files -->
    <link href="asset/fontawesome-free-5.7.2-web/css/fontawesome.css" rel="stylesheet">
    <link href="asset/fontawesome-free-5.7.2-web/css/brands.css" rel="stylesheet">
    <link href="asset/fontawesome-free-5.7.2-web/css/solid.css" rel="stylesheet">
    <link href="asset/ionicons/css/ionicons.min.css" rel="stylesheet">



    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="asset/bootstrap-4.3.1/css/bootstrap.min.css">

    <!-- UIkit css -->
    <link rel="stylesheet" href="css/uikit-rtl.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/css/uikit.min.css" />
</head>

<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API = Tawk_API || {},
    Tawk_LoadStart = new Date();
(function() {
    var s1 = document.createElement("script"),
        s0 = document.getElementsByTagName("script")[0];
    s1.async = true;
    s1.src = 'https://embed.tawk.to/5cc6aace4aa6620df2cfa5f1/default';
    s1.charset = 'UTF-8';
    s1.setAttribute('crossorigin', '*');
    s0.parentNode.insertBefore(s1, s0);
})();
</script>
<!--End of Tawk.to Script-->

<body>


    <!-- ==============HEADER=============== -->

    <nav class="uk-navbar-container" uk-navbar="boundary-align: true; align: center;">


        <div class="uk-navbar-left">

            <a href="#"><img class="img-fluid logo" src="images/logo.png" alt="Logo"></a>


            <ul class="uk-navbar-nav">
                <li>
                    <a id="cl" href="#">WHO WE ARE</a>
                    <div class="uk-navbar-dropdown uk-navbar-dropdown-width-3">
                        <div class="uk-navbar-dropdown-grid uk-child-width-1-3" uk-grid>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <a id="cl" href="#">ABOUT US</a>
                    <div class="uk-navbar-dropdown uk-navbar-dropdown-width-3">
                        <div class="uk-navbar-dropdown-grid uk-child-width-1-3" uk-grid>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <a id="cl" href="#">CAREERS</a>
                    <div class="uk-navbar-dropdown uk-navbar-dropdown-width-3">
                        <div class="uk-navbar-dropdown-grid uk-child-width-1-3" uk-grid>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>

                <li>
                    <a id="cl" href="#">DOWNLOADS</a>
                    <div class="uk-navbar-dropdown uk-navbar-dropdown-width-3">
                        <div class="uk-navbar-dropdown-grid uk-child-width-1-3" uk-grid>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>

                <li>
                    <a id="cl" href="#">SHOP</a>
                    <div class="uk-navbar-dropdown uk-navbar-dropdown-width-3">
                        <div class="uk-navbar-dropdown-grid uk-child-width-1-3" uk-grid>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <a id="cl" href="#">CONTACT US</a>
                    <div class="uk-navbar-dropdown uk-navbar-dropdown-width-3">
                        <div class="uk-navbar-dropdown-grid uk-child-width-1-3" uk-grid>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <a id="cl" href="#">PORTALS</a>
                    <div class="uk-navbar-dropdown uk-navbar-dropdown-width-3">
                        <div class="uk-navbar-dropdown-grid uk-child-width-1-3" uk-grid>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>

            </ul>
            <a href="#"><img class="img-fluid kenya rounded-circle" src="images/kenya.png" alt="Logo"></a>
            <a href="#"><img class="img-fluid uganda rounded-circle" src="images/uganda.png" alt="Logo"></a>

        </div>

    </nav>


    <!-- ===================================== JOB DESCRIPTION ===================================== -->


    <div class="container">

        <div class="row">
            <div class="col-8 job-box">
                <div class="job-description text-center">
                    <!-- <img class="img-fluid login-logo" src="images/logon.jpg" alt=""> -->

                    <h2>CREATE ACCOUNT</h2>
                    <?php
                    echo errorMessage();
                    echo successMessage();
                    if (!empty($errors)) {
                        echo display_errors($errors);
                    }
                    ?>
                    <form class="text-left" action="career_register.php" method="POST">
                        <div class="form-group">
                            <label for="exampleInputEmail1">First Name</label>
                            <input type="text" name="first_name" class="form-control my-input"
                                aria-describedby="emailHelp" placeholder="Enter Name"
                                value="<?= ((isset($first_name)) ? $first_name : ''); ?>">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Second Name</label>
                            <input type="text" name="second_name" class="form-control my-input"
                                aria-describedby="emailHelp" placeholder="Doe"
                                value="<?= ((isset($second_name)) ? $second_name : ''); ?>">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" name="email" class="form-control my-input" aria-describedby="emailHelp"
                                placeholder="Enter email" value="<?= ((isset($email)) ? $email : ''); ?>">
                            <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with
                                    anyone else.</small> -->
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" name="password" class="form-control my-input"
                                id="exampleInputPassword1" placeholder="Password"
                                value="<?= ((isset($password)) ? $password : ''); ?>">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Confirm Password</label>
                            <input type="password" name="confirm_password" class="form-control my-input"
                                id="exampleInputPassword2" placeholder="Password"
                                value="<?= ((isset($confirm_password)) ? $confirm_password : ''); ?>">
                        </div>

                        <div class=" text-center new-bt">
                            <button class="btn btn-primary" type="submit" name="submit_registration">Register</button>
                        </div>
                        <p><a href="career_login.php">Already have an account? Login</a> </p>
                        <hr>
                        <p class="text-center">Register with :</p>
                        <div class=" text-center new-bt">
                            <a href="<?= ((isset($loginURL)) ? $loginURL : ''); ?>" class="btn btn-danger g-log"><i
                                    class="fab fa-google-plus-g"></i> Sign up with gmail</a>
                        </div>
                        <div class=" text-center new-bt">
                            <a href="<?php echo $linkedin->getAuthUrl(); ?>" class="btn btn-primary t-log"><i
                                    class="fab fa-linkedin-in"></i> Sign up with Linkedin</a>
                        </div>
                        <div class=" text-center new-bt">
                            <a href="<?= ((isset($url)) ? $url : '#'); ?>" class="btn btn-primary t-log"><i
                                    class="fab fa-twitter"></i> Sign in with Twitter</a>
                        </div>
                        <div class=" text-center new-bt">
                            <a href="facebook/loginFB.php" class="btn btn-primary f-log"><i
                                    class="fab fa-facebook-f"></i>Sign up with facebook</a>
                        </div>
                    </form>
                    <hr>
                </div>
            </div>
        </div>

    </div>



    <!-- =====================================FOOTER===================================== -->
    <footer id="footer">
        <div class="footer-top">
            <div class="container-fluid">
                <div class="row mover">

                    <div class="col-lg-2 col-md-6 footer-links">
                        <h4>GENERAL</h4>
                        <ul>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Motor Comprehensive Insurance</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Agriculture Insurance</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Domestic Package</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Personal Accident</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">APA Marine</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-2 col-md-6 footer-links">
                        <h4>HEALTH</h4>
                        <ul>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Health Corporate</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Femina</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Jamii Plus & Afya Nafuu</a></li>

                        </ul>
                    </div>



                    <div class="col-lg-2 col-md-6 footer-links">
                        <h4>LIFE</h4>
                        <ul>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Elimu</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Imarika</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">HosiCare</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Pumzisha</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Group Pension</a></li>

                        </ul>
                    </div>

                    <div class="col-lg-2 col-md-6 footer-links">
                        <h4>INVESTMENT</h4>
                        <ul>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Balance Funds</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Equity Funds</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Money Market Funds </a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Group Pension</a></li>

                        </ul>
                    </div>

                    <div class="col-lg-4 col-md-6 footer-contact">
                        <h4>Contact Us</h4>
                        <p>
                            Apollo Center, westland Rd,
                            off Lunga lunga,<br> Westlands Area
                            Nairobi – Kenya <br>
                            Phone: (+254) 0711 045000<br>
                            Email: info@apainsurance.org<br>
                        </p>
                        <br>
                        <div class="social-links">
                            <a href="#" class="twitter"><i class="fab fa-twitter"></i></a>
                            <a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a>
                            <a href="#" class="instagram"><i class="fab fa-instagram"></i></a>
                            <a href="#" class="google-plus"><i class="fab fa-google-plus-g"></i></a>
                            <a href="#" class="linkedin"><i class="fab fa-linkedin-in"></i></a>
                        </div>

                    </div>

                </div>

            </div>
        </div>
        <div class="footer-line">
        </div>
        <div class="container">
            <div class="copyright">
                &copy; Copyright <strong>APA INSURANCE</strong>. All Rights Reserved
            </div>

        </div>
    </footer><!-- #footer -->



    <!-- Optional JavaScript -->

    <!-- UIkit JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit-icons.min.js"></script>
    <script src="js/uikit.min.js"></script>
    <script src="js/uikit-icons.min.js"></script>



    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
</body>

</html>