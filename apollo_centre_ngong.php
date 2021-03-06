<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Boardroom (Ngong Hills 8px) - Apollo centre</title>
    <!-- META DATA DESCRIPTION FOR GOOGLE SEARCH RESULT -->
    <meta name="description" content="Perfect for more personal meetings, this room provides smaller groups with 
    an intimate atmosphere. Equipped with an LCD screen for presenting groundbreaking ideas for discussion.">
    <meta name="keywords" content="Boardroom  , apollo centre, apollo center, conference facilities">
    <meta name="author" content="">

    <!-- FACEBOOK MEATADATA -->
    <meta property="og:url" content="https://www.apainsurance.org/apollo_centre_entertainment.php" />
    <meta property="og:type" content="article" />
    <meta property="og:title" content="Boardroom (Ngong Hills) - Apollo centre" />
    <meta property="og:description" content=" Perfect for more personal meetings, this room provides smaller groups with 
    an intimate atmosphere. Equipped with an LCD screen for presenting groundbreaking ideas for discussion." />

    <!-- STYLESHEET -->
    <link rel="stylesheet" href="css/apollo_centre.css" media="screen">
    <link rel="stylesheet" href="css/companies.css" media="screen">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.2/css/lightbox.min.css">
    <link rel="stylesheet" href="css/Lightbox-Gallery.css">
    <link rel="stylesheet" href="css/parsley.css">


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
    <div class="gallery-banner ngong-banner">

    </div>
    <div class="cover-line">
        <img src="images/line.png" alt="">
    </div>


    <!-- #intro -->


    <!-- ===================================== ABOUT US ===================================== -->


    <div class="container">
        <div class="apollo">
            <h1>NGONG HILLS</h1>
            <input type="hidden" name="roomd" value="ngong">

            <div class="under-line img2">
                <img src="images/line.png" alt="">
            </div>
            <p class="container content-offer wow fadeInUp" data-wow-delay="0.1s">
                Perfect for more personal meetings, this room provides smaller groups with an intimate atmosphere. 
                Equipped with an LCD screen for presenting groundbreaking ideas for discussion.
            </p>
            <div class="row apollo-btn wow fadeInUp " data-wow-delay="0.1s">
                <div class="col-md-12 ">
                    <button class="btn btn-primary gallery-book" data-target="#modal-full" uk-toggle>BOOK NOW</button>
                </div>
            </div>
        </div>

    </div>
    <!-- ===================================== OUR ROOMS GALLERY ===================================== -->
    <div class="container-fluid">
        <div class="row gallery-container">
            <div class="col-md-4 wow fadeInUp" data-wow-delay="0.1s">

                <a href="images/ngong/img1.jpg" data-lightbox="photos">
                    <div class="gallery-view ngong-view-1"></div>
                </a>

            </div>
            <div class="col-md-4 wow fadeInUp" data-wow-delay="0.1s">
                <a href="images/ngong/img2.jpg" data-lightbox="photos">
                    <div class="gallery-view ngong-view-2"></div>
                </a>
            </div>
            <div class="col-md-4 wow fadeInUp" data-wow-delay="0.1s">
                <a href="images/ngong/img3.jpg" data-lightbox="photos">
                    <div class="gallery-view ngong-view-3"></div>
                </a>
            </div>
        </div>
        <div class="row gallery-container">
            <div class="col-md-4 wow fadeInUp" data-wow-delay="0.12s">
                <a href="images/ngong/img4.jpg" data-lightbox="photos">
                    <div class="gallery-view ngong-view-4"></div>
                </a>
            </div>
            <div class="col-md-4 wow fadeInUp" data-wow-delay="0.12s">
                <a href="images/ngong/img5.jpg" data-lightbox="photos">
                    <div class="gallery-view ngong-view-5"></div>
                </a>
            </div>
            <div class="col-md-4 wow fadeInUp" data-wow-delay="0.12s">
                <a href="images/ngong/img6.jpg" data-lightbox="photos">
                    <div class="gallery-view ngong-view-6"></div>
                </a>
            </div>
        </div>
        <div class="col-md-4 wow fadeInUp" data-wow-delay="0.12s">
            <br><br><br>
        </div>

    </div>

    <!-- =====================================FOOTER===================================== -->
    <?php include 'views/footer.php'; ?>
    <!-- #footer -->


    <!-- =====================================Modal link===================================== -->
    <?php include 'views/modal_apollo.php'; ?>

    <?php
    require_once 'inc/scripts.php';
    ?>

</body>

</html>