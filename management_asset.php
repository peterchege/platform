<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>APA INSURANCE</title>
    <link rel="stylesheet" href="css/companies.css" media="screen">

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
    <div class="banner-cover">

    </div>
    <div class="cover-line">
        <img src="images/line.png" alt="">
    </div>


    <!-- #intro -->

    <!-- ===================================== CHILD MENU BAR ===================================== -->

    <div class="company-nav">
        <ul class="nav justify-content-center">
            <li class="nav-item">
                <a class="nav-link" href="companies.php">COMPANIES</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="leadership.php">LEADERSHIP</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="management_group.php">MANAGEMENT</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">DOWNLOADS</a>
            </li>
        </ul>
    </div>

    <!-- SUB NAV -->

    <div class="sub-nav">
        <ul class="nav justify-content-center">
            <li class="nav-item">
                <a class="nav-link" href="management_group.php">GROUP HEADS </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="management.php">APA INSURANCE </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="management_life.php">APA LIFE </a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="management_asset.php">APOLLO ASSET MANAGEMENT</a>
            </li>

        </ul>
    </div>

    <!-- ===================================== ABOUT US ===================================== -->


    <div class="container-fluid12">
        <div class="container apollo">
            <h1 class="wow fadeInUp" data-wow-delay="0.1s">APOLLO ASSET MANAGEMENT </h1>
            <div class="under-line img1">
                <img src="images/line.png" alt="">
            </div>

            <p class="container content-offer wow fadeInUp" data-wow-delay="0.1s">
                AAMC is licensed by the Capital Markets Authority (CMA) and the Retirement
                Benefits Authority (RBA) to conduct Fund Management and Investment Advisory Services.
            </p>
        </div>

        <!-- APA INSURANCE -->
        <div class="company-box apollo">
            <div class="container">

                <div class="row lead-img">

                    <div class="col-md-3 leader-img wow fadeInUp" data-wow-delay="0.1s">
                        <img src="img/managment/fred.jpg" class="img" alt="">
                        <h5 class="title-name">
                            Fred Mburu<br>
                            <small>Chief Executive Officer</small>
                        </h5>

                        <p>
                            Fred is a seasoned investment guru. With 20 years of living, watching ...
                        </p>
                        <button class="btn btn-primary">Read more</button>
                    </div>

                    <div class="col-md-3 leader-img wow fadeInUp" data-wow-delay="0.1s">
                        <img src="img/managment/kosgei.jpg" class="img" alt="">
                        <h5 class="title-name">
                            Amos Kosgei<br>
                            <small>Portfolio Manager</small>
                        </h5>

                        <p>
                            Amos Kosgei is the Portfolio Manager at Apollo Asset Management Company...
                        </p>
                        <button class="btn btn-primary">Read more</button>
                    </div>

                    <div class="col-md-3 leader-img wow fadeInUp" data-wow-delay="0.1s">
                        <img src="img/managment/solo.jpg" class="img" alt="">
                        <h5 class="title-name">
                            Solomon Maoga<br>
                            <small>Head of Operations</small>
                        </h5>

                        <p>
                            Solomon Maoga is the Portfolio Manager at Apollo Asset Management...
                        </p>
                        <button class="btn btn-primary">Read more</button>
                    </div>

                    <div class="col-md-3 leader-img wow fadeInUp" data-wow-delay="0.1s">
                        <img src="img/managment/eva.jpg" class="img" alt="">
                        <h5 class="title-name">
                            Everlyne Lagat<br>
                            <small>Head of Corporate Business</small>
                        </h5>

                        <p>
                            Solomon Maoga is the Portfolio Manager at Apollo Asset Management...
                        </p>
                        <button class="btn btn-primary">Read more</button>
                    </div>

                </div>

            </div>
        </div>


    </div>





    <!-- =====================================FOOTER===================================== -->
    <?php include 'views/footer.php'; ?>
    <!-- #footer -->


    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>

    <?php
    require_once 'inc/scripts.php';
    ?>

</body>

</html>