<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">

    <title>APA INSURANCE</title>
    <link rel="stylesheet" href="css/career.css" media="screen">

    <?php include 'views/head_links.php'; ?>
</head>

<body>
    <!-- ==============HEADER=============== -->

    <?php
    require_once "inc/db.php";
    require_once "inc/functions.php";
    require_once 'inc/sessions.php';
    require('mailer/SMTP.php');
    require_once('mailer/PHPMailer.php');
    // define variables and set to empty values
    $forgot_pass_ran = "";
    $email = "";

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        //search for existing email in database
        $email = sanitize($_POST['email']);

        $emailSearch = "SELECT email FROM apa_job_applicants WHERE email = '$email'";
        $emailSearchQuery = $db->query($emailSearch);
        if (mysqli_num_rows($emailSearchQuery) == 1) {
            $forgot_pass_ran = randomstring(20);

            // Mail reset details
            $mail = new PHPMailer;
            $mail->isSMTP();                                      // Set mailer to use SMTP
            $mail->Host = 'email.apainsurance.org';  // Specify main and backup SMTP servers
            $mail->SMTPAuth = true;                               // Enable SMTP authentication
            $mail->Username = 'gilbert.njoroge@apollo.co.ke';                 // SMTP username
            $mail->Password = 'Shalala123!';                           // SMTP password
            //$mail->SMTPSecure = 'ssl';                            // Enable TLS encryption, `ssl` also accepted
            $mail->Port = 25;                                    // TCP port to connect to

            $mail->setFrom('gilbert.njoroge@apollo.co.ke', 'Apollo Group ');
            $mail->addAddress("{$email}", "Gilbert");     // Add a recipient
            //$mail->addAddress('ellen@example.com');               // Name is optional
            $mail->addReplyTo('contactcentre@apollo.co.ke', 'APAInsurance');
            $mail->addBCC('gilbert.njoroge@apollo.co.ke');

            $mail->addBCC("{$email}");
            //$mail->addBCC("{$email}");
            $mail->Subject = 'Password reset';
            $mail->Body    = 'Please click the link below to reset your password:' .  '<br>' . 'http://' . $_SERVER['HTTP_HOST'] . '/apainsurance/new_password.php?request_token=' . $forgot_pass_ran . '';



            if ($mail->send()) {
                $sql = "UPDATE apa_job_applicants SET password_reset='$forgot_pass_ran' WHERE email='$email'";
                $db->query($sql);
                $_SESSION['successMessage'] = 'Password resent link has been sent to your email address.';
            }
        } else {
            $_SESSION['errorMessage'] = 'Email not found in our database.';
        }
    }

    $db->close();
    ?>



    <!-- ===================================== JOB DESCRIPTION ===================================== -->

    <br><br><br><br>
    <div class="container">
        <div class="row">
            <div class="col-8 job-box">
                <div class="job-description text-center">

                    <h2>RESET YOUR ACCOUNT PASSWORD</h2>
                    <!-- <img class="img-fluid login-logo" src="images/logon.jpg" alt=""> -->
                    <?php
                    echo errorMessage();
                    echo successMessage();
                    if (!empty($errors)) {
                        echo display_errors($errors);
                    }
                    ?>
                    <form class="text-left" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="POST">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input name="email" type="email" class="form-control my-input" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" value="<?= (($email) ? $email : ''); ?>" required>
                            <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with
                                    anyone else.</small> -->

                            <div class=" text-center new-bt">
                                <button type="submit" name="submit" class="btn btn-primary">Submit</button>
                            </div><br>
                        </div>
                    </form>
                    <hr>
                </div>
            </div>
        </div>
    </div>
    <br><br><br><br>
    <!-- =====================================FOOTER===================================== -->
    <?php include 'views/footer.php'; ?>
    <!-- #footer -->



    <?php
    require_once 'inc/scripts.php';
    ?>
</body>

</html>