<?php
	session_start();
	if(!isset($_SESSION['logincust']))
	{
		header('Location: index.php');
	}
?>
<!DOCTYPE html>
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
	<head>
		<title>Login with Facebook and Google | Home</title>
	</head>
	<body>
		<?php
			//load data
			echo '
			<table>
				<tr>
					<td><h2>Information Provider : </h2></td>
					<td><h1 style="color:green;">'.$_SESSION['oauth_provider'].'</h1></td>
				</tr>
				<tr>
					<td><h2>Account ID : </h2></td>
					<td><h1 style="color:green;">'.$_SESSION['oauth_uid'].'</h1></td>
				</tr>
				<tr>
					<td><h2>First Name : </h2></td>
					<td><h1 style="color:green;">'.$_SESSION['first_name'].'</h1></td>
				</tr>
				<tr>
					<td><h2>Last Name : </h2></td>
					<td><h1 style="color:green;">'.$_SESSION['last_name'].'</h1></td>
				</tr>
				<tr>
					<td><h2>Email : </h2></td>
					<td><h1 style="color:green;">'.$_SESSION['email'].'</h1></td>
				</tr>
			</table>';
		?>
		<form method="post"><input class="btn btn-danger" style="margin-top:5px;width:70px;height:35px;" type="submit" value="Logout" name="logoutsr" width="48" height="48"></form>
		<?php
			if(isset($_POST['logoutsr']))
			{
				session_unset();
				echo "<script type='text/javascript'>location.href = 'index.php';</script>";
			}
		?>
	</body>
</html>