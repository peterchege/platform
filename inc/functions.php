<?php
//confirm login in hr management system
function confirm_login()
{
    if (!isset($_SESSION['fname'])) {
        $_SESSION['errorMessage'] = 'You need to be logged in to access this page.';
        echo "
    <script>
        window.open('login.php', '_SELF');
    </script>
    ";
        exit();
    }
}

// displaying errors
function display_errors($errors)
{
    $count = 1;
    $display = '<ul class="alert alert-danger">';
    foreach ($errors as $error) {
        $display .= '<li class="">' . $error . '</li>';
    }
    $display .= '</ul>';
    return $display;
}



//security.
function sanitize($dirty)
{
    $dirty = trim($dirty);
    return htmlentities($dirty, ENT_QUOTES, "UTF-8");
}


function desanitize($clean)
{
    return html_entity_decode($clean);
}

function test_output($data)
{
    $data = htmlspecialchars_decode($data);
}


//date formatter
//d-m-Y
function dmY($date)
{
    $date = strtotime($date);
    $date = date('d-m-Y', $date);
    return $date;
}

//d-M-Y
function dMMY($date)
{
    $date = strtotime($date);
    $date = date('d-M-Y', $date);
    return $date;
}

//d-M-Y
function dateMY($date)
{
    $date = strtotime($date);
    $date = date('d-M-Y', $date);
}

//generating ids
function randomstring($len)
{
    $string = "";
    $chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    for ($i = 0; $i < $len; $i++) {
        $string .= substr($chars, rand(0, strlen($chars)), 1);
    }
    return $string;
}

//function to format dates
function pretty_date($date)
{
    return date("M d, Y h:i:s A", strtotime($date));
}

//reduce string size
function reduce_string($strin)
{
    if (strlen($strin) > 100) {
        return substr($strin, 0, 100) . ' ' . '...';
    } else {
        return $strin;
    }
}

//money
function money($number)
{
    return 'Ksh. ' . number_format($number, 0);
}


// jazeeb redirect to
function redirect_to($newLocation)
{
    header('location:' . $newLocation);
    exit();
}

// confirm login
function login()
{
    if (isset($_SESSION['user_id']) || isset($_COOKIE['user_id'])) {
        return true;
    } else {
        return false;
    }
}

function confirm_login_careers()
{
    if (!login()) {
        $_SESSION['errorMessage'] = 'Please login to access this page.';
        redirect_to('career_login.php');
    }
}

// where user is coming from
function user_direction()
{
    if (isset($_GET['apply'])) {
        $apply = sanitize($_GET['apply']);
        $_SESSION['apply'] = $apply;
        $job_token = sanitize($_GET['job_token']);
        $_SESSION['job_token'] = $job_token;
        return $_SESSION['job_token'];
    } else {
        return false;
    }
}

function user_destination()
{
    if (isset($_SESSION['apply'])) {
        unset($_SESSION['apply']);
        return header('location: combined_form.php');
    } else {
        return header('location: applicant_dashboard_account.php');
    }
}

// social media where user is coming from
function user_destination_social_media()
{
    if (isset($_SESSION['social_apply'])) {
        unset($_SESSION['social_apply']);
        return header('location: ../combined_form.php');
    } else {
        return header('location: ../applicant_dashboard_account.php');
    }
}

//root directory
function rootD()
{
    return $_SERVER['DOCUMENT_ROOT'];
}


// claim report email
function claim_report(
    $subject,
    $businessEmail,
    $businessFullName,
    $clientEmail,
    $clientFullName,
    $body
) {
    //mailing claim report
    require_once '../mailer/PHPMailer.php';
    require_once '../mailer/SMTP.php';


    $mail = new PHPMailer;
    $mail->IsSMTP();
    $mail->isHTML(true);
    $mail->Host = 'mail.apainsurance.org';
    // $mail->SMTPSecure = 'ssl';
    $mail->Port = 25;
    // $mail->SMTPAuth = true;
    $mail->Username = 'apa.website@apollo.co.ke';
    $mail->Password = 'Apa321$321';


    $mail->setFrom('apa.website@apollo.co.ke', 'APA CLAIMS');
    $mail->AddAddress($businessEmail, $businessFullName);
    $mail->addBCC('anthonybaru@gmail.com');
    // $mail -> AddCC($_POST['email'], $_POST['name']);
    $mail->AddReplyTo($clientEmail, $clientFullName);
    $mail->Subject = $subject;
    $mail->Body =$body;
    if ($mail->Send()) {
        return true;
    } else {
        return false;
    }
}

// claim life email
function claim_motor(
    $subject,
    $businessEmail,
    $businessFullName,
    $clientEmail,
    $clientFullName,
    $body,
    $documents
) {
    //mailing claim report
    require_once '../mailer/PHPMailer.php';
    require_once '../mailer/SMTP.php';


    $mail = new PHPMailer;
    $mail->IsSMTP();
    $mail->isHTML(true);
    $mail->Host = 'mail.apainsurance.org';
    // $mail->SMTPSecure = 'ssl';
    $mail->Port = 25;
    // $mail->SMTPAuth = true;
    $mail->Username = 'apa.website@apollo.co.ke';
    $mail->Password = 'Apa321$321';


    $mail->setFrom('apa.website@apollo.co.ke', 'APA CLAIMS');
    $mail->AddAddress($businessEmail, $businessFullName);
    $mail->addBCC('anthonybaru@gmail.com');
    // $mail -> AddCC($_POST['email'], $_POST['name']);
    $mail->AddReplyTo($clientEmail, $clientFullName);

    //looping throught the available documents
    foreach ($documents as $key => $document) {
        echo $key;
        
        //$mail->addAttachment($document, $key) ;
    }
    exit('extracting details');
    $mail->Subject = $subject;
    $mail->Body =$body;
    if ($mail->Send()) {
        return true;
    } else {
        return false;
    }
}
