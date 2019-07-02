<?php

require_once 'inc/db.php';
require_once 'inc/functions.php';
require_once 'inc/sessions.php';
if (isset($_GET['request_token'])) {
    $_SESSION['request_token'] = sanitize($_GET['request_token']);
}


if (isset($_POST['submit_registration'])) {
    $password = mysqli_real_escape_string($db, $_POST['password']);
    $confirm_password = mysqli_real_escape_string($db, $_POST['confirm_password']);

    if (strlen($password) < 6 || strlen($confirm_password) < 6) {
        $errors[] = 'Password should consist of at least six characters.';
    }

    if ($password !== $confirm_password) {
        $errors[] = 'Passwords do not match.';
    }


    if (empty($errors)) {

        $confirm_password = password_hash($confirm_password, PASSWORD_DEFAULT);
        $request_token = $_SESSION['request_token'];
        $db->query("UPDATE apa_job_applicants SET `confirm_password` = '$confirm_password' WHERE `password_reset` ='$request_token'");
        // echo $_SESSION['request_token'];
        // echo $confirm_password;
        $_SESSION['successMessage'] = 'Password reset successfully. The request token was ' . $request_token;

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
    <?php include 'views/nav.php'; ?>


    <!-- ===================================== JOB DESCRIPTION ===================================== -->

    <br><br><br><br><br><br>
    <div class="container">

        <div class="row">
            <div class="col-8 job-box">
                <div class="job-description text-center">
                    <!-- <img class="img-fluid login-logo" src="images/logon.jpg" alt=""> -->

                    <h2>CHANGE PASSWORD</h2>
                    <?php
                    echo errorMessage();
                    echo successMessage();
                    if (!empty($errors)) {
                        echo display_errors($errors);
                    }
                    ?>
                    <form class="text-left" action="new_password.php" method="POST">

                        <div class="form-group">
                            <label for="exampleInputPassword1">New Password</label>
                            <input type="password" name="password" class="form-control my-input" id="exampleInputPassword1" placeholder="Password" value="<?= ((isset($password)) ? $password : ''); ?>">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Confirm Password</label>
                            <input type="password" name="confirm_password" class="form-control my-input" id="exampleInputPassword2" placeholder="Password" value="<?= ((isset($confirm_password)) ? $confirm_password : ''); ?>">
                        </div>

                        <div class=" text-center new-bt">
                            <button class="btn btn-primary" type="submit" name="submit_registration">Submit</button>
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
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
</body>

</html>