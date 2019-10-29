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

    <title>APA INSURANCE</title>
    <link rel="stylesheet" href="css/media.css" media="screen">
    <link rel="stylesheet" href="css/apollo_centre.css" media="screen">
    <link rel="stylesheet" href="css/modal.css" media="screen">
    <link rel="stylesheet" href="css/Product.css" media="screen">
    <link rel="stylesheet" href="css/parsley.css" media="screen">


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
                        An investment is an asset or item acquired with the goal of generating income
                        or appreciation. In an economic sense, an investment is the purchase of goods
                        that are not consumed today but are used in the future to create wealth.
                        In finance, an investment is a monetary asset purchased with the idea that
                        the asset will provide income in the future or will later be sold at a higher
                        price for a profit.
                    </p>
                    <a href="#modal-media-youtube" class="btn btn-primary" uk-toggle> Watch Video</a>
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
            <h1>APOLLO ASSET MANAGEMENT</h1>
            <div class="under-line img1">
                <img src="images/line.png" alt="">
            </div>

            <p class="container text-justify content-offer wow fadeInUp" data-wow-delay="0.1s">
                Apollo Asset Management Company is an asset management firm focused exclusively on meeting
                the needs of institutional investors like pension schemes, collective investment funds, saccos,
                institutions and individual high-net worth investors and their families. We are a 100% owned subsidiary
                of Apollo Investments Limited, one of Kenya’s leading Insurance and property Management Company.
            </p>

            <div class="container-fliud">
                <div class="row">
                    <div class="col-md-3 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="charter-block1">
                            <i class="fas fa-globe"></i>
                            <h2>Global Expertise Locally<br> Delivered </h2>
                            <hr>
                            <p>
                                We offer a wide range of investment solutions whether fixed-income, equity, property and money market investments.
                                We are also adept at Wealth Management solutions for individuals from financial planning to transition issues.
                            </p>

                        </div>
                    </div>

                    <div class="col-md-3 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="charter-block1">
                            <i class="fas fa-chart-line"></i>
                            <h2> Fixed Income </h2>
                            <hr>
                            <p>
                                Armed with the best investment ideas, AAMC seeks to capitalize on the best investment opportunities,
                                long-dated and short-term across the fixed income spectrum
                            </p>

                        </div>
                    </div>

                    <div class="col-md-3 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="charter-block1">
                            <i class="fas fa-chart-pie"></i>
                            <h2>Multi-asset strategies and solutions </h2>
                            <hr>
                            <p>
                                Asset allocation, pension solutions and overlay strategies.
                            </p>
                        </div>
                    </div>

                    <div class="col-md-3 wow fadeInUp" data-wow-delay="0.1s">
                        <div class=" charter-block1">
                            <i class="fas fa-chart-area"></i>
                            <h2>Liquidity Management </h2>
                            <hr>
                            <p>
                                Short-term money market investments in a variety of structures and terms.
                            </p>
                        </div>
                    </div>

                </div>
            </div>

            <div class="objective wow fadeInUp" data-wow-delay="0.1s">

                <div class="row">
                    <div class="col-12">
                        <h1>Investment Approach and Style</h1>
                        <p>At Apollo Asset Management, our investment philosophy is hinged on a flexible investment strategy, allowing portfolio managers to seek the most attractive total return opportunities based on changing market conditions.
                            We approach this investment strategy with three objectives:
                        </p>
                        <ol>
                            <li>Identify Changing Market Conditions<br> <b> ->Intelligence backed by Research</b></li>
                            <li>Adjust asset allocations to seek maximum risk-adjusted returns based on changing market conditions<br> <b> ->Proactive approach</b></li>
                            <li>Within each asset class, select the most attractive securities based on fundamentals and valuations <br> <b> ->Focus on returns/yield.</b></li>
                        </ol>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <!-- ===================================== PRODUCTS ===================================== -->

    <div class="container-fluid23">
        <div class="product product-new wow fadeInUp" data-wow-delay="0.1s">
            <div class="header text-left">
                <h1>PRODUCTS</h1>
            </div>

            <div class="container">
                <div class="row row-product1">

                    <div class="col-md-4 prod">
                        <div class="box-container-img1 asset-1">
    
                        </div>
                        <div class="head-container">
                            <h2 class="text-center">Apollo Money Market Fund </h2>
                        </div>
                        <br>
                        <p class="text-justify">his is a short to medium term investment product that
                            aims to give a reasonable rate of interest while preserving capital and offering liquidity....
                        </p>
                        <br>
                        <!-- button click -->
                        <div class="row prod-btn">
                            <div class="col-6 text-center">
                                <a href="#" class="btn btn-primary">Get Cover</a>
                            </div>

                            <div class="col-6 text-left prod-lf">
                                <a href="product_investment_ammf.php" class="btn btn-primary prod-grey">Read More</a>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-4 prod">
                        <div class="box-container-img1 asset-2">
                            
                        </div>
                        <div class="head-container">
                            <h2 class="text-center"> Apollo Balanced Fund</h2>
                        </div>
                        <br>
                        <p class="text-justify">This is a short to medium term investment product that aims
                            to give a reasonable rate of interest while preserving capital and offering liquidity...
                        </p>
                        <br>
                        <!-- button click -->
                        <div class="row prod-btn">
                            <div class="col-6 text-center">
                                <a href="#" class="btn btn-primary">Get Cover</a>
                            </div>

                            <div class="col-6 text-left prod-lf">
                                <a href="product_investment_abf.php" class="btn btn-primary prod-grey">Read More</a>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-4 prod">
                        <div class="box-container-img1 asset-3">
                        </div>
                        <div class="head-container">
                            <h2 class="text-center">Apollo Equity Fund</h2>
                        </div>
                        <br>
                        <p class="text-justify">This fund aims to generate long-term capital growth through
                            investment in quoted equities and by investing in a diversified range of e stocks across several sectors....
                        </p>
                        <!-- button click -->
                        <div class="row prod-btn">
                            <div class="col-6 text-center">
                                <a href class="btn btn-primary">Get Cover</a>
                            </div>

                            <div class="col-6 text-left prod-lf">
                                <a href="product_investment_aef.php" class="btn btn-primary prod-grey">Read More</a>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
            <br>
        </div>
    </div>

    <!-- ===================================== TABLE ===================================== -->

    <div class="container wow fadeInUp" data-wow-delay="0.12s">
        <h1>Key Distinctions and Benefits of Apollo Asset Management Company</h1>
        <div class="row info-container">

            <div class="col-md-6">
                <div class="image-container">

                </div>
            </div>

            <div class="col-md-6 table-algn">
                <table class="uk-table uk-table-hover uk-table-divider">
                    <thead>
                        <tr>
                            <th class="text-table-head">APOLLO ADVANTAGE </th>
                            <th class="text-table-head text-center">POTENTIAL CLIENT BENEFIT</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Wealth of Experience</td>
                            <td>
                                <ul>
                                    <li> Access to expert Portfolio Managers</li>
                                    <li>Access to superior returns through
                                        our understanding of local markets,
                                        which translates into a portfolio
                                        of our best ideas.
                                    </li>

                                </ul>

                            </td>
                        </tr>
                        <tr>
                            <td>Team Approach to Portfolio Management</td>
                            <td>
                                <ul>
                                    <li>Confidence in the Sustainability
                                        and Integrity of the Investment Process
                                    </li>
                                    <li>Customized Investment Management</li>
                                    <li>Investment Decisions with clear accountability</li>
                                </ul>
                            </td>

                        </tr>
                        <tr>
                            <td>Disciplined Processes</td>
                            <td>
                                <ul>
                                    <li>Investment returns that are explainable,
                                        definable and seek to be repeated
                                    </li>
                                    <li>Adherence to well defined processes</li>
                                    <li>Quality controls and transparency</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td>Risk Management</td>
                            <td>
                                <ul>
                                    <li>Portfolios that support the risk-return
                                        trade off that clients’ seek, and an
                                        understanding of what drives returns over time
                                    </li>
                                    <li>Transparent processes supported by Technology</li>
                                    <li>Risk analysis embedded throughout</li>
                                </ul>

                            </td>
                        </tr>
                        <tr>
                            <td>Efficiency and Timeliness</td>
                            <td>
                                <ul>
                                    <li>Using our INNOVA Investment Management Solution,
                                        we provide timely, efficient and accurate services
                                        whether trading, reporting or performance measurement.
                                    </li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td>Performance Reporting and Meetings</td>
                            <td>
                                <ul>
                                    <li>Quarterly meetings to explain investment performance
                                        and economic highlights
                                    </li>
                                    <li>Monthly Valuation Reports</li>
                                    <li>Obtain Personalized Investment Advice</li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>



    <!-- =====================================FOOTER===================================== -->
    <?php include 'views/footer.php'; ?>
    <!-- #footer -->


    <!-- ===================================== YOUTUBE MODAL ===================================== -->
    <div id="modal-media-youtube" class="uk-flex-top" uk-modal>
        <div class="uk-modal-dialog uk-width-auto uk-margin-auto-vertical">
            <button class="uk-modal-close-outside" type="button" uk-close></button>
            <iframe width="949" height="534" src="https://www.youtube.com/embed/ltFgk8tsqws" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
    </div>

    <?php
    require_once 'inc/scripts.php';
    ?>
    <script src="js/parsley.min.js"></script>
    <script src="js/lead.js"></script>
</body>

</html>