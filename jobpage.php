<?php
require_once 'inc/db.php';
require_once 'inc/functions.php';
require_once 'inc/sessions.php';

//checking job expiry
$datequery = $db->query("SELECT job_id,deadline FROM apa_job_posts");
while ($check = mysqli_fetch_assoc($datequery)) {
    $diff = strtotime($check['deadline']) - time();
    $expired_id = $check['job_id'];
    if ($diff <= 0) {
        $db->query("UPDATE apa_job_posts SET archive = 1 WHERE job_id = '$expired_id' ");
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
    <link rel="stylesheet" href="css/career.css" media="screen">


    <?php include 'views/head_links.php'; ?>

</head>

<body>
    <!-- ==============HEADER=============== -->

    <?php include 'views/nav.php'; ?>


    <!-- ===================================== ABOUT US ===================================== -->

    <div class="container">
        <div class="apollo">
            <?php
            echo errorMessage();
            echo successMessage();
            ?>
            <h1>RECOMMENDED JOBS</h1>
            <div class="under-line img6">
                <img src="images/line.png" alt="">
            </div>
            <p class="container content-offer text-left"> Apollo Group, our most valuable assets are our employees. We
                pride
                ourselves in creating experience, delivering results and adding value to all stakeholders.

                We advocate for equal employment opportunities to all persons regardless of age, color, nationality,
                race, religion, gender and marital status.
            </p>

            <?php
            //careers
            $jobquery = $db->query("SELECT * FROM apa_job_posts WHERE archive = 0  ORDER BY id DESC");

            ?>
            <?php if (mysqli_num_rows($jobquery) > 0) : ?>
                <?php while ($job_description = mysqli_fetch_assoc($jobquery)) : ?>
                    <div class="row ">
                        <div class="col-10 job-box">
                            <div class="job-description text-center">
                                <h2><?php echo strtoupper(sanitize($job_description['job_title'])); ?></h2>
                                <hr><br>
                                <div class="row job-content">
                                    <div class="col-8 text-justify">
                                        <ul class="text-left">
                                            <li><b>Company:</b> <span><?php echo desanitize($job_description['company']); ?></span> </li>
                                            <li><b>Location:</b>
                                                <span><?php echo desanitize($job_description['location']); ?></span>
                                            </li>
                                            <li><b>Deadline:</b> <span><?php echo desanitize(dMMY($job_description['deadline'])); ?></span>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-4">
                                        <div class="load-more text-center">
                                            <a href="job_description.php?job_token=<?php echo desanitize($job_description['job_id']); ?>" class="btn btn-primary">READ MORE</a>
                                        </div>
                                    </div>
                                </div><br>
                            </div>
                        </div>
                    </div><br><br>
                <?php endwhile; ?>
            <?php else : ?>
                <p>Currently there are no job vacancies.</p>
            <?php endif ?>
        </div>

    </div>
    <!-- =====================================FOOTER===================================== -->
    <?php include 'views/footer.php'; ?>



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

    <script>
        DecoupledEditor.create(document.querySelector('#editor'))
            .then(editor => {
                const toolbarContainer = document.querySelector('#toolbar-container');

                toolbarContainer.appendChild(editor.ui.view.toolbar.element);
            })
            .catch(error => {
                console.error(error);
            });




        ClassicEditor
            .create(document.querySelector('#editor1'), {
                ckfinder: {
                    uploadUrl: '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files&responseType=json',
                },
                toolbar: ['ckfinder', 'imageUpload', '|', 'heading', '|', 'bold', 'italic', '|', 'undo', 'redo']
            })
            .catch(error => {
                console.error(error);
            });
    </script>

</body>

</html>