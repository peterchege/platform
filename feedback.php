<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>APA INSURANCE</title>
    <link rel="stylesheet" href="css/product.css" />
    <link rel="stylesheet" href="css/career.css" />
    <link rel="stylesheet" href="css/contact.css" />
    <link rel="stylesheet" href="css/apollo_centre.css" media="screen">
    <link rel="stylesheet" href="css/parsley.css" media="screen">


    <?php include 'views/head_links.php'; ?>
</head>

<body>


    <!-- ==============HEADER=============== -->
    <?php include 'views/nav.php'; ?>
    <!-- #header -->



    <!-- ===================================== JOB DESCRIPTION ===================================== -->
    <div class="container-fluid212">
        <div class=" header-feedback feedback-apa">
        </div>
    </div>

    <div class="container product-container">
        <div class="row">
            <div class="col-12 contact-info-box">
                <div class="row">
                    <div class="col-md-2 contact-back">
                        <div class="content-info">
                            <h2></h2>
                            <!-- <p><i class="fas fa-street-view"></i> Addresss : Apollo Centre, Ring Rd Parklands<br>
                                Westlands Nairobi – Kenya.
                            </p>
                            <p><i class="fas fa-phone-square"></i> Telephone : O20 286 2000
                            </p>
                            <p><i class="fas fa-mobile"></i> Mobile Number :(+254) 70991277
                            </p>
                            <p><i class="fas fa-envelope-open-text"></i> Email :info@apainsurance.org
                            </p> -->
                        </div>
                    </div>
                    <div class="col-md-10">
                        <div class="content-info2">
                            <h2>DROP US A LINE ! </h2>

                            <form id="form" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container">
                                <div class="form-algn"><br><br>
                                    <div class="row">
                                        <div class="form-group col-md-4">
                                            <label for="full_name">Full Name</label>
                                            <input name="full_name" type="text" class="form-control" id="full_name" placeholder="" value="" required>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="phone">Mobile Number</label>
                                            <input name="phone" type="tel" class="form-control" id="phone" placeholder="" value="" required>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="extension">Extension number</label>
                                            <input name="extension" type="tel" class="form-control" id="extension" placeholder="" value="">
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group col-md-4">
                                            <label for="email">Email Address</label>
                                            <input name="email" type="email" class="form-control" id="email" placeholder="" value="">
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="branch">Branch </label>
                                            <input name="branch" type="text" class="form-control" id="branch" placeholder="" value="">
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="department">Department</label>
                                            <input name="department" type="email" class="form-control" id="department" placeholder="" value="">
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="form-group col-md-12">
                                            <label for="feedback">Message / FeedBack</label>
                                            <textarea name="feedback" class="form-control" id="feedback" rows="3.5"></textarea>
                                        </div>

                                    </div>

                                    <!-- <div style="display: none">
                                        <input type="hidden" id="product_id" name="product_id" value="50">
                                        <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                                        <input type="hidden" id="type" name="type" value="Contact Us">
                                    </div> -->
                                    <div class="row book-btn">
                                        <div class="col-md-12">
                                            <button type="submit" name="request" class="btn btn-primary"><i class="fas fa-paper-plane"></i> &nbsp; Send message
                                            </button>
                                        </div>
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
    <!-- #footer -->



    <?php
    require_once 'inc/scripts.php';
    ?>
    <script src="js/parsley.min.js"></script>
    <script src="js/lead.js"></script>
</body>

</html>