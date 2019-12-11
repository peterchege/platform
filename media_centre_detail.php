<?php
require_once 'inc/db.php';
require_once 'inc/sessions.php';
require_once 'inc/functions.php';

if (isset($_GET['post']) && !empty($_GET['post'])) {
    $post_id = sanitize($_GET['post']);
    $fullPostQuery = $db->query("SELECT * FROM media_centre_posts WHERE id = '$post_id'");
    $full_post = mysqli_fetch_assoc($fullPostQuery);
} else {
    if (mysqli_num_rows($fullPostQuery) !== 1) {
        redirect_to('media_centre_video.php');
    }
}
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
    <link rel="stylesheet" href="css/media_detail.css" />
    <link rel="stylesheet" href="css/career.css" />
    <?php
    require_once 'views/head_links.php';
    //determining banner path
    if ($_SERVER['DOCUMENT_ROOT'] == 'C:/xampp/htdocs') {
        $banner_path = 'http://localhost/cms';
    } else {
        $banner_path = 'http://63.33.193.137/dev/site/cms';
    }
    ?>

</head>

<body>


    <!-- ==============HEADER=============== -->
    <?php include 'views/nav.php'; ?>
    <!-- #header -->


    <!-- ===================================== JOB DESCRIPTION ===================================== -->
    <div class="container-fluid212">
        <div style="background-image: url('<?php echo  $banner_path . '/' . $full_post['image']; ?>');" class="header-image header-image1">
        </div>
        <div class="line-media">
            <img src="images/line.png" alt="">
        </div>

    </div>

    <div class="container product-container">
        <div class="row">
            <div class="col-10 job-box1">
                <div class="job-description text-justify ">
                    <h2><?php echo  $full_post['title'];  ?> </h2>
                    <?php echo  desanitize($full_post['post']);  ?>
                </div><br>
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