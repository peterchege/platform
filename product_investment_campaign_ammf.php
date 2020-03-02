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

    <div class="banner-invest">
        <div class="container-fluid">
            <div class="row csr-cont">
                <div class="col-md-offset-6 ">
                </div>
                <div class="col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <h2>
                        What Is Investment?
                    </h2>
                    <p>
                        An investment is an asset or item acquired to generate income or appreciation. In an economic
                        sense, an investment is the purchase of goods that are not consumed today but are used in the
                        future to create wealth. In finance, an investment is a monetary asset purchased with the idea
                        that the asset will provide income in the future or will later be sold at a higher price for a
                        profit.
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

            <p class="container text-justify content-offer wow fadeInUp" data-wow-delay="0.1s">
                Apollo Asset Management Company is an asset management firm focused exclusively on meeting the needs of
                institutional investors like pension schemes, collective investment funds, SACCOs, institutions, and
                individual high-net-worth investors and their families. We are a 100% owned subsidiary of Apollo
                Investments Limited, one of Kenya’s leading Insurance and Property Management Company.
            </p>

            <div class="container-fliud">
               
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