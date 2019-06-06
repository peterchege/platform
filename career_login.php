<?php
require_once 'inc/db.php';
require_once 'inc/sessions.php';
require_once 'inc/functions.php';

//linkedin signup/login
//require_once 'linkedin2/init.php';


//google login
require_once 'googleapi/config.php';
$loginURL = $gClient->createAuthUrl();
//echo $loginURL;


//twitter login
// require 'twitter_oauth/api/twitteroauth/autoload.php';
// use Abraham\TwitterOAuth\TwitterOAuth;

// define('CONSUMER_KEY', "4fUTSkXFz4CkmOZ4mIyTMlKiJ");
// define('CONSUMER_SECRET', "MJW5rIjRoecpVDd1Tavv5LEhJBVpnKdSxaOIc5kvI9po4f1BQv");
// define('OAUTH_CALLBACK', 'http://localhost/apainsurance/twitter_oauth/api/callback.php');

// if (!isset($_SESSION['access_token'])) {
//     $connection = new TwitterOAuth(CONSUMER_KEY, CONSUMER_SECRET);
//     $request_token = $connection->oauth('oauth/request_token', array('oauth_callback' => OAUTH_CALLBACK));

//     $_SESSION['oauth_token'] = $request_token['oauth_token'];
//     $_SESSION['oauth_token_secret'] = $request_token['oauth_token_secret'];
//     $url = $connection->url('oauth/authorize', array('oauth_token' => $request_token['oauth_token']));
// } else {
//     $access_token = $_SESSION['access_token'];
//     $connection = new TwitterOAuth(CONSUMER_KEY, CONSUMER_SECRET, $access_token['oauth_token'], $access_token['oauth_token_secret']);
//     $user = $connection->get('account/verify_credentials');
//     $_SESSION['id'] = $user->id;
//     $twitter_id = $_SESSION['id'];
//     $_SESSION['name'] = $user->name;
//     $twitter_name = $_SESSION['name'];
//     $_SESSION['profile_image_url'] = $user->profile_image_url;
//     $twitter_profile_image = $_SESSION['profile_image_url'];

//     //    Insert into Database
//     $check = $db->query("SELECT * FROM apa_job_applicants WHERE applicant_id = '$twitter_id'");
//     if (mysqli_num_rows($check) > 0) {
//         //        user already registered so redirect to job portal
//         header('location:combined_form.php');
//     } else {
//         //        user doesn't exist so enter details to database
//         $insert_twitter_applicant = $db->query("INSERT INTO apa_job_applicants (applicant_id, first_name, profile_image_url, social_media_platform) VALUES ('$twitter_id', '$twitter_name', '$twitter_profile_image', 'twitter') ");
//         $_SESSION['successMessage'] = 'Welcome to your job portal.';
//         echo "<script>
//     window.open('combined_form.php','_SELF')
//     </script>";
//         exit;
//     }
// }


//normal login
if (isset($_POST['login'])) {
    $email = mysqli_real_escape_string($db, $_POST['email']);
    $password = mysqli_real_escape_string($db, $_POST['password']);
    $applicantlogin = $db->query("SELECT * FROM apa_job_applicants WHERE email = '$email' ");

    // validate email and password
    if (empty($email) || empty($password)) {
        $errors[] = 'All fields are required.';
    } else {
        if (mysqli_num_rows($applicantlogin) !== 1) {
            $errors[] = 'Invalid email. Please try again.';
        } else {
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
    <link rel="stylesheet" href="css/career.css" />
    <?php include 'views/head_links.php'; ?>
</head>

<body>
    <!-- ==============HEADER=============== -->

    <?php include 'views/nav.php'; ?>


    <!-- ===================================== JOB DESCRIPTION ===================================== -->

    <br><br><br><br><br>
    <div class="container">
        <div class="row">
            <div class="col-8 job-box">
                <div class="job-description text-center">
                    <!-- <img class="img-fluid login-logo" src="images/logon.jpg" alt=""> -->
                    <h2>SIGN IN TO YOUR ACCOUNT</h2>
                    <?php
                    echo errorMessage();
                    echo successMessage();
                    if (!empty($errors)) {
                        echo display_errors($errors);
                    }
                    ?>
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
                        </div>
                        <br>
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
                        <p class="text-center">login with :</p>
                        <div class=" text-center new-bt">
                            <a href="<?= ((isset($loginURL)) ? $loginURL : ''); ?>" class="btn btn-danger g-log">
                                <i class="fab fa-google-plus-g"></i> Sign in with Google</a>
                        </div>
                        <div class=" text-center new-bt">
                            <a href="<?php
                                        //echo $linkedin->getAuthUrl();
                                        ?>" class="btn btn-primary t-log">
                                <i class="fab fa-linkedin-in"></i> Sign in with Linkedin</a>
                        </div>
                    </form>
                    <hr>
                </div>
            </div>
        </div>
    </div>

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