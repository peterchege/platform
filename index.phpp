<?php
require_once 'inc/functions.php';

if(isset($_POST['submit'])){
    $name=$_POST['name'];
}
?>
<!DOCTYPE html>
<html lang="">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Starter Template for Bootstrap 3.3.5</title>
    <link rel="shortcut icon" href="">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <style>
        body {
            padding-top: 50px;
        }

        .starter-template {
            padding: 40px 15px;
            text-align: center;
        }

    </style>
</head>

<body>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Project name</a>
            </div>

            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </div>
            <!--.nav-collapse -->
        </div>
    </nav>

    <div class="container">
        <div class="starter-template">
            <h1>Hello, world!</h1>
            <p class="lead">Now you can start your own project with <a target="_blank" href="http://getbootstrap.com/">Bootstrap 3.3.5</a>. This plugin is a fork from <a href="https://github.com/le717/brackets-html-skeleton#readme">HTML Skeleton</a>.</p>
            <?php
                $num=562365;
            if(isset($num)){        
            
                    if($num>0){
                        $errors[]='greater than zero';
                    }
                    if($num>10){
                        $errors[]='Greater than ten';                    
                    }
                    if($num!=0){
                        $errors[]=' Not Equal to';
                    }                    
                    if(!empty($errors)){
                        echo display_errors($errors);
                    }
                }
            ?>
        </div>
        <div class="row">
            <div class="col-md-4">
                <form method="post" action="index.php" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="name">Name:</label>
                        <input class="form-control" type="text" name="name">
                    </div>
                    <div class="form-group">
                        <label for="file">File:</label>
                        <input class="form-control" type="file" name="file">
                    </div>
                    <div class="form-group">
                        <button class="btn btn-primary" type="submit" name="submit">Submit</button>
                    </div>
                </form>
            </div>
            <div class="col-md-4"></div>
            <div class="col-md-4"></div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>

</html>
