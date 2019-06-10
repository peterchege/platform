<html>


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




