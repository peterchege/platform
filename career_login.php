<?php
require_once 'inc/db.php';
require_once 'inc/sessions.php';
require_once 'inc/functions.php';

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
define('OAUTH_CALLBACK', 'http://localhost/apainsurance/twitter_oauth/api/callback.php');

if (!isset($_SESSION['access_token'])) {
    $connection = new TwitterOAuth(CONSUMER_KEY, CONSUMER_SECRET);
    $request_token = $connection->oauth('oauth/request_token', array('oauth_callback' => OAUTH_CALLBACK));

    $_SESSION['oauth_token'] = $request_token['oauth_token'];
    $_SESSION['oauth_token_secret'] = $request_token['oauth_token_secret'];
    $url = $connection->url('oauth/authorize', array('oauth_token' => $request_token['oauth_token']));
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
        header('location:combined_form.php');
    } else {
        //        user doesn't exist so enter details to database
        $insert_twitter_applicant = $db->query("INSERT INTO apa_job_applicants (applicant_id, first_name, profile_image_url, social_media_platform) VALUES ('$twitter_id', '$twitter_name', '$twitter_profile_image', 'twitter') ");
        $_SESSION['successMessage'] = 'Welcome to your job portal.';
        echo "<script>
    window.open('','_SELF')
    </script>";
        exit;
    }
}


//normal registration
if (isset($_POST['login'])) {
    $email = mysqli_real_escape_string($db, $_POST['email']);
    $password = mysqli_real_escape_string($db, $_POST['password']);
    $applicantlogin = $db->query("SELECT * FROM apa_job_applicants WHERE email = '$email' ");
    if (mysqli_num_rows($applicantlogin) !== 1) {
        $errors[] = 'Invalid email. Please try again.';
    }

    if ($row = mysqli_fetch_assoc($applicantlogin)) {
        $hashPwdCheck = password_verify($password, $row['confirm_password']);
        if ($hashPwdCheck == false) {
            $errors[] = 'Wrong password.';
        } elseif ($hashPwdCheck == true) {
            //check to see if cookies are allowed
            if (!empty($_POST['rem'])) {
                //                set cookies
                setcookie("email", $email, time() + (10 * 365 * 24 * 60 * 60));
                setcookie("password", $password, time() + (10 * 365 * 24 * 60 * 60));
                setcookie("first_name", $row['first_name'], time() + (10 * 365 * 24 * 60 * 60));
                setcookie("second_name", $row['second_name'], time() + (10 * 365 * 24 * 60 * 60));
                echo $email . '<br>';
                echo $password . '<br>';
                echo $password . '<br>';
                echo $password . '<br>';
            } else {
                //set the session information
                $_SESSION['email'] = $email;
                $_SESSION['password'] = $password;
            }
            //log in user
        }
    }

    if (empty($errors)) { }
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

<body>
    <!-- ==============HEADER=============== -->

    <?php include 'inc/nav.php'; ?>


    <!-- ===================================== JOB DESCRIPTION ===================================== -->


    <div class="container">
        <div class="row">
            <div class="col-8 job-box">
                <div class="job-description text-center">
                    <!-- <img class="img-fluid login-logo" src="images/logon.jpg" alt=""> -->
                    <?php
                    echo errorMessage();
                    echo successMessage();
                    if (!empty($errors)) {
                        echo display_errors($errors);
                    }
                    ?>
                    <h2>SIGN IN TO YOUR ACCOUNT</h2>
                    <form class="text-left" action="career_login.php" method="POST">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input name="email" type="email" class="form-control my-input" id="exampleInputEmail1"
                                aria-describedby="emailHelp" placeholder="Enter email"
                                value="<?= ((isset($email)) ? $email : ''); ?>">
                            <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with
                                    anyone else.</small> -->
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input name="password" type="password" class="form-control my-input"
                                id="exampleInputPassword1" placeholder="Password"
                                value="<?= ((isset($password)) ? $password : ''); ?>">
                        </div>
                        <div class="form-group form-check">
                            <input type="checkbox" name="rem" class="form-check-input" id="exampleCheck1" value="off">
                            <label class="form-check-label" for="exampleCheck1">Remember me</label>
                        </div>
                        <div class=" text-center new-bt">
                            <button type="submit" name="login" class="btn btn-primary">LOGIN</button>
                        </div><br>
                        
                         <div class="row">
                                   <div class="col-md-7 col-sm-7">
                                       <div class="form-group">
                                       <a href="career_register.php">Don't have an Account? Create account</a> </div>
                                   </div>
                                   <div class="col-md-5 col-sm-5 text-right">
                                       <div class="form-group">
                                        <a class="" href="forgot_password.php">Forgot password?</a> </div>
                                   </div>
                               </div>
                        <hr>
                        <p class="text-center">login with :</p>
                        <div class=" text-center new-bt">
                            <a href="<?= ((isset($loginURL)) ? $loginURL : ''); ?>" class="btn btn-danger g-log">
                                <i class="fab fa-google-plus-g"></i> Sign in with Google</a>
                        </div>
                        <div class=" text-center new-bt">
                            <a href="<?php echo $linkedin->getAuthUrl(); ?>" class="btn btn-primary t-log">
                                <i class="fab fa-linkedin-in"></i> Sign in with Linkedin</a>
                        </div>
                        <div class=" text-center new-bt">
                            <a href="<?= ((isset($url)) ? $url : '#'); ?>" class="btn btn-primary t-log">
                                <i class="fab fa-twitter"></i> Sign in with Twitter</a>
                        </div>
                        <div class=" text-center new-bt">
                            <a href="facebook/loginFB.php" class="btn btn-primary f-log">
                                <i class="fab fa-facebook-f"></i>Sign in with Facebook</a>
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
                            <li>
                                <i class="ion-ios-arrow-right"></i>
                                <a href="#">Motor Comprehensive Insurance</a>
                            </li>
                            <li>
                                <i class="ion-ios-arrow-right"></i>
                                <a href="#">Agriculture Insurance</a>
                            </li>
                            <li>
                                <i class="ion-ios-arrow-right"></i>
                                <a href="#">Domestic Package</a>
                            </li>
                            <li>
                                <i class="ion-ios-arrow-right"></i>
                                <a href="#">Personal Accident</a>
                            </li>
                            <li>
                                <i class="ion-ios-arrow-right"></i>
                                <a href="#">APA Marine</a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-lg-2 col-md-6 footer-links">
                        <h4>HEALTH</h4>
                        <ul>
                            <li>
                                <i class="ion-ios-arrow-right"></i>
                                <a href="#">Health Corporate</a>
                            </li>
                            <li>
                                <i class="ion-ios-arrow-right"></i>
                                <a href="#">Femina</a>
                            </li>
                            <li>
                                <i class="ion-ios-arrow-right"></i>
                                <a href="#">Jamii Plus & Afya Nafuu</a>
                            </li>

                        </ul>
                    </div>



                    <div class="col-lg-2 col-md-6 footer-links">
                        <h4>LIFE</h4>
                        <ul>
                            <li>
                                <i class="ion-ios-arrow-right"></i>
                                <a href="#">Elimu</a>
                            </li>
                            <li>
                                <i class="ion-ios-arrow-right"></i>
                                <a href="#">Imarika</a>
                            </li>
                            <li>
                                <i class="ion-ios-arrow-right"></i>
                                <a href="#">HosiCare</a>
                            </li>
                            <li>
                                <i class="ion-ios-arrow-right"></i>
                                <a href="#">Pumzisha</a>
                            </li>
                            <li>
                                <i class="ion-ios-arrow-right"></i>
                                <a href="#">Group Pension</a>
                            </li>

                        </ul>
                    </div>

                    <div class="col-lg-2 col-md-6 footer-links">
                        <h4>INVESTMENT</h4>
                        <ul>
                            <li>
                                <i class="ion-ios-arrow-right"></i>
                                <a href="#">Balance Funds</a>
                            </li>
                            <li>
                                <i class="ion-ios-arrow-right"></i>
                                <a href="#">Equity Funds</a>
                            </li>
                            <li>
                                <i class="ion-ios-arrow-right"></i>
                                <a href="#">Money Market Funds </a>
                            </li>
                            <li>
                                <i class="ion-ios-arrow-right"></i>
                                <a href="#">Group Pension</a>
                            </li>

                        </ul>
                    </div>

                    <div class="col-lg-4 col-md-6 footer-contact">
                        <h4>Contact Us</h4>
                        <p>
                            Apollo Center, westland Rd, off Lunga lunga,
                            <br> Westlands Area Nairobi – Kenya
                            <br> Phone: (+254) 0711 045000
                            <br> Email:> info@apainsurance.org
                            <br>
                        </p>
                        <br>
                        <div class="social-links">
                            <a href="#" class="twitter">
                                <i class="fab fa-twitter"></i>
                            </a>
                            <a href="#" class="facebook">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a href="#" class="instagram">
                                <i class="fab fa-instagram"></i>
                            </a>
                            <a href="#" class="google-plus">
                                <i class="fab fa-google-plus-g"></i>
                            </a>
                            <a href="#" class="linkedin">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                        </div>

                    </div>

                </div>

            </div>
        </div>
        <div class="footer-line">
        </div>
        <div class="container">
            <div class="copyright">
                &copy; Copyright
                <strong>APA INSURANCE</strong>. All Rights Reserved
            </div>

        </div>
    </footer>
    <!-- #footer -->



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