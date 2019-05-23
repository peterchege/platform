<html>

<head>
    <?php
   require('mailer/PHPMailerAutoload.php');
   require_once('mailer/class.smtp.php');

   //Variables Declaration

   require_once 'inc/db.php';
   if (isset($_POST['submit'])) {
      $email = $_POST['email'];
      $forgot_pass_ran = rand(1000, 100000);
      $email = stripslashes($email);
      // $email = mysql_real_escape_string($email);


      $db->query("UPDATE apa_job_applicants set password_reset = 'p@gmail.com' where email = 'tony@gmail.com");

      //mysql_query("'") or die(mysql_error()); 
      /*


$mail = new PHPMailer;
$mail->isSMTP();                                      // Set mailer to use SMTP
$mail->Host = 'email.apainsurance.org';  // Specify main and backup SMTP servers
$mail->SMTPAuth = true;                               // Enable SMTP authentication
$mail->Username = 'gilbert.njoroge@apollo.co.ke';                 // SMTP username
$mail->Password = 'Shalala12345!';                           // SMTP password
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
$mail->Body    = 'Please click the link below to reset your password</b>';
$mail->AltBody = 'http://localhost/apainsurance/new_password.php?$<?php echo $forgot_pass_ran?>';



    $mail->send(); */
    }
    ?>

<body>

    <script type="text/javascript">
    <!--
    function Redirect() {
        window.location = "noback.php";
    }

    document.write("Password resert successfuly...");
    setTimeout('Redirect()', 10);
    //
    </script>



    <body>
    </body>

</html>