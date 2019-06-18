<?php
//session_start();

require 'vendor/autoload.php';
require 'LinkedIn.php';

use myPHPNotes\LinkedIn;

$app_id = '77tpnxhar356uy';
$app_secret = 'ViOaJis9SrZ7P6hs';
$app_callback = 'http://localhost/apainsurance/linkedin2/callback.php';
$app_scopes = 'r_basicprofile r_emailaddress w_member_social rw_company_admin w_share r_liteprofile';

$ssl = false; //always true when we go live
$linkedin = new LinkedIn($app_id, $app_secret, $app_callback, $app_scopes, $ssl);
