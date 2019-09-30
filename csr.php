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
    <?php
    // selecting media centre posts
    $mediaC = $db->query("SELECT * FROM media_centre_posts WHERE category = 'CSR' AND status = 1 ORDER BY datetime desc ");
    ?>
    <div class="banner-csr">
        <div class="container-fluid">
            <div class="row csr-cont">
                <div class="col-md-offset-6 ">
                </div>
                <div class="col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <h2>
                        APA Apollo Foundation
                    </h2>
                    <p>
                        At The Apollo Group, we believe that the world is beautiful when people smile.
                        We seek to harness this through our corporate social responsibility.
                        It is a joy to see lives transformed. Watch this beautiful video and sing along with us!
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
        <div class="row">
            <div class="col-md-12">
                <div class="logo-csr">
                    
                </div>

            </div>
        </div>
        <div class="apollo">
            <h1>CORPORATE SOCIAL RESPONSIBILITY</h1>
            <div class="under-line img13">
                <img src="images/line.png" alt="">
            </div>

            <p class="container content-offer wow fadeInUp" data-wow-delay="0.1s">
                APA Apollo Foundation is a corporate social investment arm set up by The Apollo Group
                (APA Insurance, APA Life, Apollo Asset Management and Gordon Court) whose Corporate Social
                Responsibility
                programmes focuses on supporting the needy in our society to improve their lives.
            </p>
            <div class="objective wow fadeInUp" data-wow-delay="0.1s">
                <h2>
                    Objectives of the Foundation
                </h2>
                <ul>
                    <li>Support sustainable projects that uplift the standards of communities, that we partner with for
                        support</li>
                    <li>Our vision is the initiative is that this initiative will increase accessibility to clean water
                    </li>
                    <li>Our vision with this initiative is to give the Kenyan people the opportunity to transform their
                        own lives; and
                        emphasises the need, for people, to have access to the opportunities they need to succeed in.
                    </li>
                    <ul>
            </div>
        </div>
    </div>

    <!-- ===================================== PRODUCTS ===================================== -->

    <div class="container-fluid23">
        <div class="product product-new ">
            <div class="header text-left">
                <h1>OUR STORIES</h1>
            </div>

            <div class="container-fluid">
                <div class="row">
                    <?php while ($post = mysqli_fetch_assoc($mediaC)) : ?>
                        <div class="col-md-4 post">
                            <div class="img-container" style=" background-image:url(<?php echo  'http://' . 'localhost/cms/' . $post['image'];  ?>);">
                            </div>
                            <div class="box-info">
                                <h2><?php echo ((strlen($post['title']) > 40) ? substr($post['title'], 0, 40) . '... ' : $post['title']); ?>
                                </h2>
                                <p class="text-left">
                                    <?php
                                        $postfixed = desanitize($post['post']);
                                        $postfixed = strip_tags($postfixed);
                                        if (strlen($postfixed) > 200) {
                                            echo $newpost = substr($postfixed, 0, 200) . '... ';
                                        } else {
                                            echo $postfixed;
                                        }
                                        ?>
                                </p>
                                <div class="btn-read">
                                    <a href="media_centre_detail.php?<?php echo  randomstring(900); ?>&post=<?php echo  $post['id']; ?>&<?php echo  randomstring(100) ?>" class="btn btn-primary"> Read more</a>
                                </div>
                            </div>
                        </div>
                    <?php endwhile; ?>
                </div>
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
            <iframe width="949" height="534" src="https://www.youtube.com/embed/xBuYw9HvmcE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
    </div>

    <?php
    require_once 'inc/scripts.php';
    ?>
</body>

</html>