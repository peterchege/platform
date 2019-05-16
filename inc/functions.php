<?php
//confirm login
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
    // 	$dirty = trim($dirty);
    // $dirty = stripslashes($dirty);
    // $dirty = htmlspecialchars($dirty);
    return htmlentities($dirty, ENT_QUOTES, "UTF-8");
}


function desanitize($clean)
{
    return html_entity_decode($clean);
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

//generating job id
function randomstring($len)
{
    $string = "";
    $chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    for ($i = 0; $i < $len; $i++)
        $string .= substr($chars, rand(0, strlen($chars)), 1);
    return $string;
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

//function to format dates
function pretty_date($date)
{
    return date("M d, Y h:i A", strtotime($date));
}