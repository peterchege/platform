<?php
require_once 'inc/db.php';
require_once 'inc/functions.php';
require_once 'inc/sessions.php';

//JOB EXTRACTION
if (isset($_GET['job_token'])) {
    $job_token = sanitize($_GET['job_token']);
    $job_query = $db->query("SELECT * FROM apa_job_posts WHERE job_id='$job_token'");

    $job_desc = mysqli_fetch_assoc($job_query);

    //    $job_res_id=$job_desc['id'];
    // $job_res=$db->query("SELECT business_requirements_and_analysis,data_visualization,information_quality_assurance FROM key_primary_responsibilities WHERE apa_insurance_careers_id='$job_res_id' ");
    // $job_res_det=mysqli_fetch_assoc($job_res);   
}

if (!isset($_GET['job_token'])) {
    echo "<script>
        alert('Please choose a job first!');
        window.open('jobpage.php', '_SELF');

    </script>";
}
if ($job_desc['job_id'] !== $job_token) {
    $_SESSION['errorMessage'] = 'Invalid selection.';
    echo "<script>
        
        window.open('jobpage.php', '_SELF');

    </script>";
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


    <!-- ===================================== JOB DESCRIPTION ===================================== -->

    <div class="container">
        <div class="apollo">
            <h1>JOB DESCRIPTION</h1>
            <div class="under-line img7">
                <img src="images/line.png">
            </div>
            <p class="container content-offer text-left">
                <?= html_entity_decode($job_desc['job_short_description']); ?>
            </p>
        </div>
        <div class="row ">
            <div class="col-10 job-box">
                <div class="job-description text-center">
                    <h2><?= desanitize($job_desc['job_title']); ?></h2>
                    <hr>
                    <ul class="text-left">
                        <li><b>Company:</b> <span><?= sanitize($job_desc['company']); ?></span> </li>
                        <li><b>Location:</b> <span>
                                <?= desanitize($job_desc['location']); ?></span>
                        </li>
                        <li><b>Employment Type:</b> <span><?= sanitize($job_desc['employment_type']); ?></span> </li>
                        <li><b>Job Id:</b> <span><?= sanitize($job_desc['job_id']); ?></span> </li>
                        <li><b>Date added:</b> <span><?= sanitize(dMMY($job_desc['date_added'])); ?></span> </li>
                        <li><b>Deadline:</b> <span><?= sanitize(dMMY($job_desc['deadline'])); ?></span> </li>
                        <?php if ($job_desc['salary'] > 0) : ?>
                            <li><b>Salary:</b><span>
                                    <?php
                                        $salo = desanitize($job_desc['salary']);
                                        echo money($salo);
                                        ?>
                                </span>
                            </li>
                            <br>
                        <?php endif;  ?>
                    </ul>
                    <hr>
                    <div class="job-content">
                        <div class="text-justify">
                            <h3>KEY PRIMARY RESPONSIBILITIES</h3>
                            <?= desanitize($job_desc['key_primary_responsibilities']); ?>
                            <hr>
                            <h3>ACADEMIC QUALIFICATIONS</h3>

                            <?= desanitize($job_desc['academic_qualifications']); ?>

                            <hr>
                            <h3>JOB SKILLS AND REQUIREMENTS</h3>
                            <?= desanitize($job_desc['job_skills_and_requirements']); ?>

                            <hr>
                            <h3>PROFESSIONAL QUALIFICATIONS</h3>

                            <?= desanitize($job_desc['professional_qualifications']); ?>

                            <hr>
                            <h3>EXPERIENCE</h3>

                            <?= desanitize($job_desc['experience']); ?>
                            <br>
                            <hr>
                            <div class="load-more text-center">
                                <a href="career_login.php?job_token=<?= $job_token ?>&apply=<?= $job_token ?>" class="btn btn-primary">APPLY NOW</a>
                            </div>
                        </div>
                    </div>
                </div><br>
            </div>
        </div>
    </div>

    <br><br>


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