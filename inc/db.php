<?php
// $db = mysqli_connect('localhost', 'root', 'VDW-pNs-Mk6-gLQ', 'dev_website');
// echo $_SERVER['DOCUMENT_ROOT'];
if ($_SERVER['DOCUMENT_ROOT'] == '/var/www/html') {
	//make sure vhost file in apache folder has same information as $_SERVER['DOCUMENT_ROOT'
	$db = mysqli_connect('localhost', 'root', 'VDW-pNs-Mk6-gLQ', 'dev_website');
}
//Other connections
else if ($_SERVER['DOCUMENT_ROOT'] == '/home/vinehubc/public_html/test') {
	$db = mysqli_connect('vinehub.co.ke', 'vinehubc_apa_admin', 'vinehubc_apa_admin', 'vinehubc_apa');
} else if ($_SERVER['DOCUMENT_ROOT'] == 'C:/xampp/htdocs') {
	$db = mysqli_connect('localhost', 'root', '', 'apa');
}
//End of Other connections 
else {
	echo "No database connection set!";
}
if (!$db) {
	echo 'Database connection unsuccessful ' . mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
}

date_default_timezone_set("Africa/Nairobi");
$currentTime = time();
$dateTime = strftime("%d,%B %Y ", $currentTime);

$deadline = $db->query("SELECT deadline FROM apa_job_posts WHERE id = 11 ");