<?php

require_once 'inc/db.php';
require_once 'inc/functions.php';
require_once 'inc/sessions.php';

//linkedin signup/login
//require_once 'linkedin2/init.php';

//google login
require_once 'googleapi/config.php';
//$loginURL = $gClient->createAuthUrl();
//echo $loginURL;


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
    <link rel="stylesheet" href="css/career.css" />


    <?php include 'views/head_links.php'; ?>


</head>

<body>


    <!-- ==============HEADER=============== -->



    <!-- ===================================== JOB DESCRIPTION ===================================== -->

    <br><br>
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
                            <a href="<?php
                                        //echo $linkedin->getAuthUrl(); 
                                        ?>" class="btn btn-primary t-log"><i class="fab fa-linkedin-in"></i> Sign up
                                with Linkedin</a>
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