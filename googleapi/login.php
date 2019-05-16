<?php
require_once "googleapi/config.php";
if (isset($_SESSION['access_token'])){
header('Location: index.php');
exit();
}
$loginURL = $gClient->createAuthUrl();
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
                <img src="images/apa-logo.png"><br><br>
                <form>
                    <input type="email" placeholder="Email" name="email" class="form-control"><br>
                    <input type="password" placeholder="Password" name="password" class="form-control"><br>
                    <input type="submit" value="Log In" class="btn btn-primary">
                    <input type="button" onclick="window.location = '<?php echo $loginURL ?>';" value="Log In With Gmail" class="btn btn-danger">
                </form>
            </div>
        </div>
    </div>

</body>

</html>
