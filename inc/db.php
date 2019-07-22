<?php
echo $_SERVER['DOCUMENT_ROOT'];
if ($_SERVER['DOCUMENT_ROOT'] == 'C:/xampp/htdocs/') {
	$db = mysqli_connect('localhost', 'root', '', 'apa');
} else {
	$db = mysqli_connect('localhost', 'vinehubc_apa_admin', 'apa_admin', 'vinehubc_apa');
}


if (!$db) {
	echo 'Database connection unsuccessful ' . mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
}

date_default_timezone_set("Africa/Nairobi");
$currentTime = time();
$dateTime = strftime("%d,%B %Y ", $currentTime);

$deadline = $db->query("SELECT deadline FROM apa_job_posts WHERE id = 11 ");
