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

    <title>Media Centre - APA Insurance</title>
    <!-- META DATA DESCRIPTION FOR GOOGLE SEARCH RESULT -->
    <meta name="description" content="Ashok Shah, The Apollo Group CEO (centre right) and 
    Vinod Bharatan, CEO, APA Insurance (centre left) are accompanied by colleagues from The 
    Apollo Group at this year’s Think Business Annual Insurance Awards 2019.">
    <meta name="keywords" content="apa media centre, media center, media centre, apa blog, apa announcement">
    <meta name="author" content="">

    <!-- FACEBOOK MEATADATA -->
    <meta property="og:url" content="https://www.apainsurance.org/media_centre_video.php" />
    <meta property="og:type" content="article" />
    <meta property="og:title" content="Media Centre - APA Insurance" />
    <meta property="og:description" content=" Ashok Shah, The Apollo Group CEO (centre right) and 
    Vinod Bharatan, CEO, APA Insurance (centre left) are accompanied by colleagues from The 
    Apollo Group at this year’s Think Business Annual Insurance Awards 2019.." />

    <!-- STYLESHEET -->
    <link rel="stylesheet" href="css/media.css" media="screen">

    <?php
    require_once 'views/head_links.php';
    if ($_SERVER['DOCUMENT_ROOT'] == 'C:/xampp/htdocs') {
        $banner_path = 'http://localhost/cms';
    } else {
        $banner_path = 'http://63.33.193.137/dev/site/cms';
    }
    ?>

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
    if (isset($_GET['page'])) {
        $page = filter_var(mysqli_real_escape_string($db, $_GET['page']), FILTER_SANITIZE_NUMBER_INT, FILTER_FLAG_STRIP_HIGH);
        if ($page == 0 || $page < 1) {
            $showFrom = 0;
        } else {
            $showFrom = ($page * 5) - 5;
        }
        $mediaC = $db->query("SELECT * FROM media_centre_posts WHERE category = 'Media Centre' AND status = 1 ORDER BY id desc LIMIT $showFrom,6 ");
    } else {
        echo "<script>window.location.href = 'media_centre_video.php?page=1'</script>";
    }
    //pagination

    $queryPagination = $db->query("SELECT COUNT(*) FROM media_centre_posts WHERE category = 'Media Centre' AND status = 1 ");
    $rowPagination = mysqli_fetch_array($queryPagination);
    $totalPosts = array_shift($rowPagination);
    $postPerPage = $totalPosts / 5;
    $postPerPage = ceil($postPerPage);
    ?>



    <!-- #intro -->
    <!-- ===================================== ABOUT US ===================================== -->


    <div class="container">
        <br> <br> <br>
        <div class="apollo">
            <h1>MEDIA CENTRE</h1>
            <div class="under-line img8">
                <img src="images/line.png" alt="">
            </div>

            <p class="container content-offer wow fadeInUp" data-wow-delay="0.1s">Welcome to Apollo Investments Limited.
                Since our founding in 1977, our mission has been to provide
                present and future peace of mind to the East African market and, in turn, enhance the quality of life
                for both our clients and their loved ones. Built on commitment, integrity and innovation, we have risen
                to become one of the leading Financial Service Groups in East Africa.
            </p>
            <div class="video-frame">
                <iframe src="https://www.youtube.com/embed/4sa006eSDZo" frameborder="0" 
                    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                </iframe>
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
                    <!-- new design for media post -->
                    <?php while ($post = mysqli_fetch_assoc($mediaC)) : ?>
                        <div class="col-md-4 post">
                            <div class="img-container" style=" background-image:url(<?php echo $banner_path . '/' . $post['image'];  ?>);">
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
                                    <a href="media_centre_detail.php?<?php echo randomstring(900); ?>&post=<?php echo $post['id']; ?>&<?php echo randomstring(100) ?>" class="btn btn-primary"> Read more</a>
                                </div>
                            </div>
                        </div>
                    <?php endwhile; ?>
                </div>
                <nav>
                    <ul class="pagination pull-left pagination-lg ">
                        <?php if (isset($page) && $page > 1) : ?>
                            <li class="page-item"><a href="media_centre_video.php?<?php echo  randomstring(900); ?>&page=<?php echo $page - 1 ?>&<?php echo  randomstring(900); ?>" class="class-link">&laquo;</a></li>
                        <?php endif; ?>
                        <?php for ($i = 1; $i <= $postPerPage; $i++) : ?>
                            <li class="page-item <?php if (isset($page) && $i == $page) echo 'active'; ?>"><a class="page-link" href="media_centre_video.php?<?php echo  randomstring(900); ?>&page=<?php echo $i; ?>&?<?php echo  randomstring(900); ?>">Page<?php echo $i; ?></a></li>
                        <?php endfor; ?>
                        <?php if (isset($page) && ($page + 1) <= $postPerPage) : ?>
                            <li class="page-item"><a href="media_centre_video.php?<?php echo  randomstring(900); ?>&page=<?php echo $page + 1 ?>&<?php echo  randomstring(900); ?>" class="class-link">&raquo;</a></li>
                        <?php endif; ?>
                    </ul>
                </nav>
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