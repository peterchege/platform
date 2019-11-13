<?php
require_once 'inc/db.php';
require_once 'inc/functions.php';
require_once 'inc/sessions.php';

?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>APA INSURANCE</title>
    <link rel="stylesheet" href="css/career.css" media="screen">
    <link rel="stylesheet" href="css/customer.css" media="screen">
    <link rel="stylesheet" href="css/parsley.css" media="screen">


    <?php include 'views/head_links.php'; ?>

</head>

<body>
    <!-- ==============HEADER=============== -->

    <?php include 'views/nav.php'; ?>


    <!-- ===================================== INTERNSHIP PAGE ===================================== -->

    <div class="container">
        <div class="apollo">
            <?php
            echo errorMessage();
            echo successMessage();
            ?>
            <br>
            <h1>Request Callback</h1>
            <div class="under-line img7">
                <img src="images/line.png" alt="">
            </div>
            <p class="container content-offer text-left"> Schedule a call on the form below and one fo our customer service
                agent will get back to you shortly.
            </p>

        </div>

    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-6 Call-back">

            </div>

            <div class="col-md-6">
                <div class="customer-login1">
                    <h2> Fill in the following form :</h2>
                    <form id="internship_form" method="POST" action="<?php echo $_SERVER['PHP_SELF'] ?>" enctype="multipart/form-data" class="form-container">

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="full_name">Full Name</label>
                                    <input name="full_name" type="text" class="form-control" id="full_name" aria-describedby="" placeholder="e.g john" required>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="email">Email address</label>
                                    <input name="email" type="email" class="form-control" id="email" aria-describedby="" placeholder="e.g john@gmail.com" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="phone">Phone Number</label>
                                    <input name="phone" type="tel" class="form-control" id="phone" placeholder="0712 xxx xxx" data-parsley-pattern="^(?:254|\+254|0)?(7(?:(?:[123456789][0-9])|(?:0[0-8])|(4[0-1]))[0-9]{6})$" data-parsley-trigger="keyup" required>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="date">Date</label>
                                    <input name="date" type="date" class="form-control" id="date" aria-describedby="" placeholder="e.g john@gmail.com" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="phone">Time</label>
                                    <input name="time" type="time" class="form-control" id="time" placeholder="0712 xxx xxx" required>
                                </div>
                            </div>
                        </div>
                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="50">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                            <input type="hidden" id="type" name="type" value="callback">
                        </div>
                        <div class="customer-btn">
                            <div class="row">
                                <button type="submit" name="request" class="btn btn-primary">SUBMIT <i class="fas fa-paper-plane"></i> </button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>

        </div>

    </div>
    <br>
    <!-- =====================================FOOTER===================================== -->
    <?php include 'views/footer.php'; ?>



    <?php
    require_once 'inc/scripts.php';
    ?>
    <script src="js/parsley.min.js"></script>
    <script src="js/lead.js"></script>
</body>

</html>