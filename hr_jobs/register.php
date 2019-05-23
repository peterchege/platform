<?php
require_once 'inc/dependants.php';

confirm_login();
if (isset($_POST['register'])) {
    $fname = sanitize($_POST['fname']);
    $lname = sanitize($_POST['lname']);
    $email = sanitize($_POST['email']);
    $password = sanitize($_POST['password']);
    $confirm_password = sanitize($_POST['confirm_password']);

    if (strlen($password) < 6 || strlen($confirm_password) < 6) {
        $errors[] = 'Password can\'t be less than 6 characters';
    }

    if ($password !== $confirm_password) {
        $errors[] = 'Passwords don\'t match';
    }

    $exist = $db->query("SELECT * FROM hr_jobs_users WHERE email='$email'");
    if (mysqli_num_rows($exist) > 0) {
        $errors[] = 'Email already exists.';
    }

    if (empty($errors)) {
        $password = md5($password);
        $confirm_password =  password_hash($confirm_password, PASSWORD_DEFAULT);
        $db->query("INSERT INTO hr_jobs_users (fname, lname, email, confirm_password) 
            VALUES('$fname','$lname','$email','$confirm_password' ) ");

        $_SESSION['successMessage'] = 'Registration successful. Please login';
        echo "<script>
                window.open('login.php', '_SELF');
            </script>";
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>HR ADMIN - Register</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">


</head>

<body class="bg-gradient-primary">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <!--                    <div class="col-lg-6 d-none d-lg-block bg-login-imag" style="background-image: url(img/apa_insurance_image.jpg); background-repeat: no-repeat; background-attachment: inherit; background-position: center; background-size: cover; margin:  "></div>-->

                    <div class="col-lg-5 d-none d-lg-block bg-register-image"
                        style="background-image: url(img/apa_insurance_image.jpg); background-repeat: no-repeat; background-attachment: inherit; background-position: center; background-size: cover; margin:  ">
                    </div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
                                <?php
                                if (!empty($errors)) {
                                    echo display_errors($errors);
                                }
                                ?>
                            </div>
                            <form class="user" action="register.php" method="POST" enctype="multipart/form-data">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input name="fname" value="<?= ((isset($fname)) ? $fname : '') ?>" type="text"
                                            class="form-control form-control-user" id="exampleFirstName"
                                            placeholder="First Name">
                                    </div>
                                    <div class="col-sm-6">
                                        <input name="lname" value="<?= ((isset($lname)) ? $lname : '') ?>" type="text"
                                            class="form-control form-control-user" id="exampleLastName"
                                            placeholder="Last Name">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input name="email" value="<?= ((isset($email)) ? $email : '') ?>" type="email"
                                        class="form-control form-control-user" id="exampleInputEmail"
                                        placeholder="Email Address">
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input name="password" value="<?= ((isset($password)) ? $password : '') ?>"
                                            type="password" class="form-control form-control-user"
                                            id="exampleInputPassword" placeholder="Password">
                                    </div>
                                    <div class="col-sm-6">
                                        <input name="confirm_password"
                                            value="<?= ((isset($confirm_password)) ? $confirm_password : '') ?>"
                                            type="password" class="form-control form-control-user"
                                            id="exampleRepeatPassword" placeholder="Repeat Password">
                                    </div>
                                </div>
                                <button class="btn btn-primary btn-user btn-block" type="submit" name="register">
                                    Register Account
                                </button>
                                <hr>
                                <!--
                                <a href="index.html" class="btn btn-google btn-user btn-block">
                                    <i class="fab fa-google fa-fw"></i> Register with Google
                                </a>
                                <a href="index.html" class="btn btn-facebook btn-user btn-block">
                                    <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook
                                </a>
-->
                            </form>
                            <hr>
                            <!--
                            <div class="text-center">
                                <a class="small" href="forgot-password.html">Forgot Password?</a>
                            </div>
-->
                            <div class="text-center">
                                <a class="small" href="login.php">Already have an account? Login!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>