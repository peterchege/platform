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
    $mediaC = $db->query("SELECT * FROM media_centre_posts WHERE category = 'Media Centre' AND status = 1 ORDER BY date_added desc ");
    ?>
    <div class="vida">
        <video src="media/happy.mp4" loop playsinline uk-video="autoplay: inview"></video>
    </div>
    <div class="cover-line1">
        <img src="images/line.png" alt="">
    </div>


    <!-- #intro -->
    <!-- ===================================== ABOUT US ===================================== -->


    <div class="container">
        <div class="apollo">
            <h1>MEDIA CENTRE</h1>
            <div class="under-line img8">
                <img src="images/line.png" alt="">
            </div>

            <p class="container content-offer wow fadeInUp" data-wow-delay="0.1s">Welcome to Apollo Investments Limited.
                Since our founding in 1977, our mission has been to provide
                present and future peace of mind to the East African market and, in turn, enhance the quality of life
                for both our clients and their loved ones.Built on commitment, integrity and innovation, we have risen
                to become one of the leading Financial Service Groups in East Africa.
            </p>
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
                    <!-- new design for media post -->
                    <?php while ($post = mysqli_fetch_assoc($mediaC)) : ?>
                        <div class="col-md-4 post">
                            <div class="img-container" style=" background-image:url(<?= 'http://' . 'localhost/cms/' . $post['image'];  ?>);">
                            </div>
                            <div class="box-info">
                                <h2><?= ((strlen($post['title']) > 40) ? substr($post['title'], 0, 40) . '... ' : $post['title']); ?></h2>
                                <p class="text-left">
                                    <?php
                                    $postfixed = desanitize($post['post']);
                                    if (strlen($postfixed) > 200) {
                                        echo substr($postfixed, 0, 200) . '... ';
                                    } else {
                                        echo $postfixed;
                                    }
                                    ?>
                                </p>
                                <div class="btn-read">
                                    <a href="media_centre_detail.php?<?= randomstring(900); ?>&post=<?= $post['id']; ?>&<?= randomstring(100) ?>" class="btn btn-primary"> Read more</a>
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


    <?php
    require_once 'inc/scripts.php';
    ?>

</body>

</html>