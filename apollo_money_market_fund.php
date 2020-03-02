<?php
require_once 'inc/db.php';
require_once 'inc/sessions.php';
require_once 'inc/functions.php';
?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Money Market Fund</title>
    <!-- META DATA DESCRIPTION FOR GOOGLE SEARCH RESULT -->
    <meta name="description" content="get a quote and buy a product online today. some of our products are: travel insurance, 
    motor cover, domestic package, health insurance,personal accident cover, group life, WIBA, last expense, credit life, pension ">
    <meta name="keywords" content="apollo asset managment,apollo asset products, apollo asset managment limited, investment , investment products,  
    Apollo Balanced Fund, Apollo Equity Fund, Apollo Money Market Fund,">
    <meta name="author" content="">

    <!-- FACEBOOK MEATADATA -->
    <meta property="og:url" content="https://www.apainsurance.org/product_investment_campaign_ammf.php" />
    <meta property="og:type" content="article" />
    <meta property="og:title" content="what is investment" />
    <meta property="og:description" content=" You can now purchase insurance, service your policies and report a claim online. 
    This gives you more time to do the things that you love most" />

    <!-- STYLESHEET -->
    <link rel="stylesheet" href="css/media.css" media="screen">
    <link rel="stylesheet" href="css/apollo_centre.css" media="screen">
    <link rel="stylesheet" href="css/modal.css" media="screen">
    <link rel="stylesheet" href="css/product.css" media="screen">
    <link rel="stylesheet" href="css/parsley.css" media="screen">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />


    <?php include 'views/head_links.php'; ?>

</head>

<body>

    <!--==========================
    Header
    ============================-->
    <?php include 'views/nav.php'; ?>
    <!-- #header -->

    <!--==========================
    Intro Section
    ============================-->

    <div class="banner-ammf">
        <div class="container-fluid">
            <div class="row csr-cont ammf-content">
                <div class="col-md-offset-6 ">
                </div>
                <div class="col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <h2>
                        What Is Apollo Money Market Fund?
                    </h2>
                    <p>
                        This is short to a medium-term investment product that
                        aims to give a reasonable rate of interest while preserving
                        capital and offering liquidity.
                    </p>
                </div>
            </div>
        </div>

    </div>

    <div class="cover-line">
        <img src="images/line.png" alt="">
    </div>


    <!-- #intro -->


    <!-- ===================================== ABOUT US ===================================== -->


    <div class="container">
        <div class="apollo">
            <h1>APOLLO MONEY MARKET FUNDS</h1>
            <div class="under-line img3">
                <img src="images/line.png" alt="">
            </div>

            <p class="container text-center content-offer wow fadeInUp" data-wow-delay="0.1s">
                No matter what makes you happy, There's a plan for that with apollo unit trust funds
            </p>
            <br><br>
            <div class="container-fliud">
                <div class="row">
                    <div class="col-md-8">
                        <form id="form" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container ammf-form text-left">
                            <h3 for="inputAddress" class="comp-detail text-center">PERSONAL DETAILS</h3>
                            <p class="text-center">Let's noew get you started on your plan</p>
                            <br>
                            <div class="container">
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label for="full_name">Full Name</label>
                                        <input name="full_name" type="text" class="form-control" id="full_name" placeholder="John Doe" value="" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label for="phone">Mobile Number</label>
                                        <input name="phone" type="tel" class="form-control" id="phone" data-parsley-pattern="^(?:254|\+254|0)?(7(?:(?:[123456789][0-9])|(?:0[0-8])|(4[0-1]))[0-9]{6})$" data-parsley-trigger="keyup" placeholder="07xx 254 xxx" value="" required>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label for="email">Email Address</label>
                                        <input name="email" type="email" class="form-control" id="email" placeholder="john@gmail.com" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class=" form-group col-md-12">
                                        <label for="location">Location</label>
                                        <input name="location" type="text" class="form-control" id="location" placeholder="e.g Nairobi" value="" required>
                                    </div>
                                </div>

                            </div>


                            <div style="display: none">
                                <input type="hidden" id="product_id" name="product_id" value="45">
                                <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                            </div>
                            <div class="row book-btn">
                                <div class="col-md-12">
                                    <button type="submit" name="request" class="btn btn-primary">SUBMIT
                                        <i class="fas fa-paper-plane"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>


        </div>
    </div>

    <!-- ===================================== PRODUCTS ===================================== -->

    <div class="container-fluid23">
        <div class="product product-new wow fadeInUp" data-wow-delay="0.1s">
            <div class="header text-left">
                <h1> OTHER PRODUCTS</h1>
            </div>

            <div class="container">
                <div class="row row-product1">


                    <div class="col-md-4 prod wow fadeInUp" data-wow-delay="0.2s">
                        <div class="box-container-img1 asset-2">

                        </div>
                        <div class="head-container">
                            <h2 class="text-center"> Apollo Balanced Fund</h2>
                        </div>
                        <br>
                        <p class="text-justify">This is a short to a medium-term investment product that aims to give a
                            reasonable rate of interest while preserving capital and offering liquidity...
                        </p>
                        <br>
                        <!-- button click -->
                        <div class="row prod-btn">
                            <div class="col-6 text-center">
                                <a href="#modal-full-abf" uk-toggle class="btn btn-primary">Get Cover</a>
                            </div>

                            <div class="col-6 text-left prod-lf">
                                <a href="product_investment_abf.php" class="btn btn-primary prod-grey">Read More</a>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-4 prod wow fadeInUp" data-wow-delay="0.3s">
                        <div class="box-container-img1 asset-1">
                        </div>
                        <div class="head-container">
                            <h2 class="text-center">Apollo Equity Fund</h2>
                        </div>
                        <br>
                        <p class="text-justify">This fund aims to generate long-term capital growth through
                            investment in quoted equities and by investing in a diversified range of e stocks....
                        </p>
                        <br>
                        <!-- button click -->
                        <div class="row prod-btn">
                            <div class="col-6 text-center">
                                <a href="#modal-full-aef" uk-toggle class="btn btn-primary">Get Cover</a>
                            </div>

                            <div class="col-6 text-left prod-lf">
                                <a href="product_investment_aef.php" class="btn btn-primary prod-grey">Read More</a>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-4 prod wow fadeInUp" data-wow-delay="0.4s">
                        <div class="box-container-img1 asset-3">

                        </div>
                        <div class="head-container">
                            <h2 class="text-center">Apollo Money Market Fund </h2>
                        </div>
                        <br>
                        <p class="text-justify">This is short to a medium-term investment product that aims to give a
                            reasonable rate of interest while preserving capital and offering liquidity...
                        </p>
                        <br>

                        <!-- button click -->
                        <div class="row prod-btn">
                            <div class="col-6 text-center">
                                <a href="#modal-full-ammf" uk-toggle class="btn btn-primary">Get Cover</a>
                            </div>

                            <div class="col-6 text-left prod-lf">
                                <a href="product_investment_ammf.php" class="btn btn-primary prod-grey">Read
                                    More</a>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
            <br>
        </div>
    </div>



    <!-- =====================================FOOTER===================================== -->
    <?php include 'views/footer.php'; ?>
    <!-- #footer -->
    <?php include 'views/get_cover.php'; ?>



    <?php
    require_once 'inc/scripts.php';
    ?>
    <script src="js/parsley.min.js"></script>
    <script src="js/lead.js"></script>
</body>

</html>