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

    <title>APA INSURANCE</title>
    <link rel="stylesheet" href="css/media_detail.css" />
    <link rel="stylesheet" href="css/career.css" />
    <?php include 'views/head_links.php'; ?>

</head>

<body>


    <!-- ==============HEADER=============== -->
    <?php include 'views/nav.php'; ?>
    <!-- #header -->


    <!-- ===================================== JOB DESCRIPTION ===================================== -->
    <div class="container-fluid212">
        <div class="header-image header-image1">
        </div>
        <div class="line-media">
            <img src="images/line.png" alt="">
        </div>

    </div>

    <div class="container product-container">
        <div class="row">
            <div class="col-10 job-box1">
                <div class="job-description text-justify ">
                    <h2><?= $full_post['title'];  ?> </h2>
                    <?= desanitize($full_post['post']);  ?>
                </div><br>
            </div>
        </div>
    </div>

    <!-- =====================================FOOTER===================================== -->
    <?php include 'views/footer.php'; ?>
    <!-- #footer -->

    <!-- Optional JavaScript -->

    <!-- UIkit JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit-icons.min.js"></script>
    <script src="js/uikit.min.js"></script>
    <script src="js/uikit-icons.min.js"></script>



    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
</body>

</html>