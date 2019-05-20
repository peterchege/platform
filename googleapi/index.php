<?php session_start();
if (!isset($_SESSION['access_token'])){
header('Location: login.php');
exit();
}


/*
require_once "config.php";
if (isset($_SESSION['access_token'])){
header('Location: index.php');
exit();
}
$loginURL = $gClient->createAuthUrl();
*/
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Google API</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<body>

<div class="container-fluid" style="margin-top: 100px">
	<div class="row justify-content-center">
		<div class="col-md-6 col-offset-3" align="center">
			<img height="300" width="300" src="<?php echo $_SESSION['picture']?>">
			<table clas="table table-hover table-bordered">
				<tbody>
					<tr>
						<td>ID</td>
						<td><?php echo $_SESSION['id']?></td>
					</tr>
					<tr>
						<td>First Name</td>
						<td><?php echo $_SESSION['givenName']?></td>
					</tr>
						<tr>
						<td>Last Name</td>
						<td><?php echo $_SESSION['familyName']?></td>
					</tr>
						<tr>
						<td>Email</td>
						<td><?php echo $_SESSION['email']?></td>
					</tr>
						<tr>
						<td>Gender</td>
						<td><?php echo $_SESSION['gender']?></td>
					</tr>

</tbody>
</table>
<a href="logout.php"> Logout</a>
<div>

</div>
</div>
</div>

</body>
</html>