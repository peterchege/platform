<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>APA INSURANCE</title>
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
    <div class="shimba-banner">

    </div>
    <div class="cover-line">
        <img src="images/line.png" alt="">
    </div>


    <!-- #intro -->


    <!-- ===================================== ABOUT US ===================================== -->


    <div class="container">
        <div class="apollo">
            <h1>APOLLO CENTRE ENTERTAINMENT AREA</h1>
            <input type="hidden" name="roomd" value="entertainment">

            <div class="under-line img2">
                <img src="images/line.png" alt="">
            </div>
            <p class="container content-offer wow fadeInUp" data-wow-delay="0.1s">At Apollo centre conference suites,
                enjoy private meeting
                place within a commercial building with generous space, spacious balconies opening to every room and
                ample parking space.
                The rooms are a hide away for all business and social meetings with exclusivity and convenience for
                executive individuals,
                corporate and groups.
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

                <a href="images/shimba/img5.jpg" data-lightbox="photos">
                    <div class="gallery-view view-1"></div>
                </a>

            </div>
            <div class="col-md-4 wow fadeInUp" data-wow-delay="0.1s">
                <a href="images/shimba/img5.jpg" data-lightbox="photos">
                    <div class="gallery-view view-2"></div>
                </a>
            </div>
            <div class="col-md-4 wow fadeInUp" data-wow-delay="0.1s">
                <a href="images/shimba/img5.jpg" data-lightbox="photos">
                    <div class="gallery-view view-3"></div>
                </a>
            </div>
        </div>
        <div class="row gallery-container">
            <div class="col-md-4 wow fadeInUp" data-wow-delay="0.12s">
                <a href="images/shimba/img5.jpg" data-lightbox="photos">
                    <div class="gallery-view view-4"></div>
                </a>
            </div>
            <div class="col-md-4 wow fadeInUp" data-wow-delay="0.12s">
                <a href="images/shimba/img5.jpg" data-lightbox="photos">
                    <div class="gallery-view view-5"></div>
                </a>
            </div>
            <div class="col-md-4 wow fadeInUp" data-wow-delay="0.12s">
                <a href="images/shimba/img5.jpg" data-lightbox="photos">
                    <div class="gallery-view view-6"></div>
                </a>
            </div>
        </div>
        <div class="col-md-4 wow fadeInUp" data-wow-delay="0.12s">
            <br><br><br>
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