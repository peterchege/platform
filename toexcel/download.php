<?php

//download.php

if(isset($_GET["filename"]))
{
	if(file_exists($_GET["filename"]))
	{
		header("Content-Type: application/octet-stream");
		header("Content-Disposition: attachment; filename=" .  $_GET["filename"]);
		readfile($_GET["filename"]);
		unlink($_GET["filename"]);
	}
	else
	{
		echo 'No File Found';
	}
}

?>