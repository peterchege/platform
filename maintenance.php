<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Travel portal- APA INSURANCE</title>
    <!-- META DATA DESCRIPTION FOR GOOGLE SEARCH RESULT -->
    <meta name="description" content="Our website is currently undergoing scheduled maitenance.we
    should be back shortly. Thank you for your patience">
    <meta name="keywords" content="apa careers,apa jobs, apa job description, apa job,">
    <meta name="author" content="">

    <!-- FACEBOOK MEATADATA -->
    <meta property="og:url" content="https://www.apainsurance.org/underconstruction.php" />
    <meta property="og:type" content="article" />
    <meta property="og:title" content="Job Description." />
    <meta property="og:description" content=" Our website is currently undergoing scheduled maitenance.we
    should be back shortly. Thank you for your patience" />

    <!-- STYLESHEET -->
    <link rel="stylesheet" href="css/career.css" media="screen">
    <link rel="stylesheet" href="css/customer.css" media="screen">
    <link rel="stylesheet" href="css/parsley.css" media="screen">


    <?php include 'views/head_links.php'; ?>

</head>

<body>
    <!-- ==============HEADER=============== -->

    <?php include 'views/nav.php'; ?>


    <!-- ===================================== ABOUT US ===================================== -->

    <div class="container">
        <div class="apollo">

            <br>
            <h1>UNDERMAINTENANCE</h1>
            <div class="under-line img6">
                <img src="images/line.png" alt="">
            </div>
            <p class="container content-offer text-left"> Our Travel portal is currently undergoing scheduled <b>maintenance</b>.we
                should be back shortly. Thank you for your patience. Please leave your details so that we can get in touch
            </p>
            <br>
            <div class="container">
                <div class="row">
                    <div class="col-md-6 maintaince">

                    </div>

                    <div class="col-md-6">
                        <div class="customer-login1">
                            <h2> Provide us with the following details :</h2>
                            <form id="maintenance" method="POST" action="<?php echo $_SERVER['PHP_SELF'] ?>" enctype="multipart/form-data" class="customer-form intern-form">

                                <div class="row text-left">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="full_name">Full Name</label>
                                            <input name="full_name" type="text" class="form-control" id="full_name" aria-describedby="" placeholder="e.g john" required>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group text-left">
                                    <label for="email">Email address</label>
                                    <input name="email" type="email" class="form-control" id="email" aria-describedby="" placeholder="e.g john@gmail.com" required>
                                </div>

                                <div class="form-group text-left">
                                    <label for="phone">Phone Number</label>
                                    <input name="phone" type="tel" class="form-control" id="phone" placeholder="0712 xxx xxx" required>
                                </div>

                                <div style="display: none">
                                    <input type="hidden" id="product_id" name="product_id" value="9">
                                    <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                                </div>
                                <div class="customer-btn">
                                    <div class="row">
                                        <button id="maintenance_submt" type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>
    <!-- =====================================FOOTER===================================== -->
    <?php include 'views/footer.php'; ?>



    <?php
    require_once 'inc/scripts.php';
    ?>
    <script src="js/parsley.min.js"></script>
    <script src="js/lead.js"></script>

</body>

</html>