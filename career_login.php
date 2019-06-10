<?php
require_once 'inc/db.php';
require_once 'inc/sessions.php';
require_once 'inc/functions.php';

//linkedin signup/login
//require_once 'linkedin2/init.php';


//google login
require_once 'googleapi/config.php';
$loginURL = $gClient->createAuthUrl();

// where user is coming from
if (isset($_GET['apply'])) {
    $apply = sanitize($_GET['apply']);
    $_SESSION['apply'] = $apply;
    $job_token = sanitize($_GET['job_token']);
    $_SESSION['job_token'] = $job_token;
}

//normal login
if (isset($_POST['login'])) {
    $email = mysqli_real_escape_string($db, $_POST['email']);
    $password = mysqli_real_escape_string($db, $_POST['password']);
    $applicantlogin = $db->query("SELECT * FROM apa_job_applicants WHERE email = '$email' AND social_media_platform = 'normal'");

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
                        //set cookies
                        $time = time() + 604800;
                        setcookie("user_id", $row['applicant_id'], $time);
                        setcookie("email", $row['email'], $time);
                        setcookie("first_name", $row['first_name'], $time);
                        setcookie("second_name", $row['second_name'], $time);
                    } else {
                        //set the session information
                        $_SESSION['user_id'] = $row['applicant_id'];
                        $_SESSION['email'] = $row['email'];
                        $_SESSION['first_name'] = $row['first_name'];
                        $_SESSION['second_name'] = $row['second_name'];
                    }

                    //log in user
                    if (isset($_SESSION['apply'])) {
                        unset($_SESSION['apply']);
                        header('location: combined_form.php');
                    } else {
                        header('location: applicant_dashboard_account.php');
                    }

                    echo $_SESSION['user_id'];
                    echo '<br>';
                    echo $_COOKIE['user_id'];
                }
            }
        }
    }
}

//echo $_COOKIE['user_id'] . ' session active';

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

    <br><br>
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
                    <form class="text-left" action="<?= htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input name="email" type="email" class="form-control my-input" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" value="<?= ((isset($email)) ? $email : ''); ?>">
                            <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with
                                    anyone else.</small> -->
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input name="password" type="password" class="form-control my-input" id="exampleInputPassword1" placeholder="Password" value="<?= ((isset($password)) ? $password : ''); ?>">
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
                        <p class="text-center">Sign in with :</p>
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
    <br><br>
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
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
</body>

</html>