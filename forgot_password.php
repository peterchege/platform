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

    <?php
    require_once 'inc/db.php';
    require_once 'mailer/PHPMailer.php';
    require_once 'mailer/SMTP.php';
    // define variables and set to empty values
    $forgot_pass_ran = "";
    $email = "";

    if ($_SERVER["REQUEST_METHOD"] == "POST") {


        $forgot_pass_ran = rand(1000, 100000);
        $email = $_POST['email'];

        // Mail reset details
        $mail = new PHPMailer;
        $mail->isSMTP();                                      // Set mailer to use SMTP
        $mail->Host = 'mail.apainsurance.org';  // Specify main and backup SMTP servers
        $mail->SMTPAuth = true;                               // Enable SMTP authentication
        $mail->Username = 'gilbert.njoroge@apollo.co.ke';                 // SMTP username
        $mail->Password = 'Shalala123!';                           // SMTP password
        //$mail->SMTPSecure = 'ssl';                            // Enable TLS encryption, `ssl` also accepted
        $mail->Port = 25;                                    // TCP port to connect to

        $mail->setFrom('gilbert.njoroge@apollo.co.ke', 'Apollo Group ');
        $mail->addAddress("{$email}");     // Add a recipient
        //$mail->addAddress('ellen@example.com');               // Name is optional
        $mail->addReplyTo('contactcentre@apollo.co.ke', 'APAInsurance');
        $mail->addBCC('gilbert.njoroge@apollo.co.ke');

        $mail->addBCC("{$email}");
        //$mail->addBCC("{$email}");
        $mail->Subject = 'Password reset';
        $mail->Body    = '<p>Please click the link below to reset your password.</p></b>
                        <p>http://localhost/apainsurance/new_password.php?' . $forgot_pass_ran . '</p>';
        $mail->AltBody = 'http://localhost/apainsurance/new_password.php?<?php echo $forgot_pass_ran; ?>';
    if (!$mail->send()) {
    echo 'email not sent.' . ' ' . $mail->ErrorInfo;
    }


    $sql = "UPDATE apa_job_applicants SET password_reset='$forgot_pass_ran' WHERE email='$email'";

    if ($db->query($sql) === TRUE) {
    echo "Record updated successfully";
    } else {
    echo "Error updating record: " . $db->error;
    }
    }

    $db->close();
    ?>

    <?php include 'inc/nav.php'; ?>


    <!-- ===================================== JOB DESCRIPTION ===================================== -->


    <div class="container">
        <div class="row">
            <div class="col-8 job-box">
                <div class="job-description text-center">

                    <h2>SIGN IN TO YOUR ACCOUNT</h2>
                    <form class="text-left" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>"
                        method="POST">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input name="email" type="email" class="form-control my-input" id="exampleInputEmail1"
                                aria-describedby="emailHelp" placeholder="Enter email">
                            <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with
                                    anyone else.</small> -->

                            <div class=" text-center new-bt">
                                <button type="submit" name="submit" class="btn btn-primary">Submit</button>
                            </div><br>

                    </form>
                    <hr>
                </div>
            </div>
        </div>
    </div>
    <?php
    echo $email;
    echo $forgot_pass_ran;

    ?>


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