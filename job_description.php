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

    <!-- Google Font API  -->
    <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">

    <!-- My css copy -->
    <link rel="stylesheet" href="css/test.css" />
    <link rel="stylesheet" href="css/career.css" />


    <!-- Font Awsome 5.7.2 -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
        integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

    <!-- Asset CSS Files -->
    <link href="asset/fontawesome-free-5.7.2-web/css/fontawesome.css" rel="stylesheet">
    <link href="asset/fontawesome-free-5.7.2-web/css/brands.css" rel="stylesheet">
    <link href="asset/fontawesome-free-5.7.2-web/css/solid.css" rel="stylesheet">
    <link href="asset/ionicons/css/ionicons.min.css" rel="stylesheet">



    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="asset/bootstrap-4.3.1/css/bootstrap.min.css">

    <!-- UIkit css -->
    <link rel="stylesheet" href="css/uikit-rtl.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/css/uikit.min.css" />


</head>

<body>


    <!-- ==============HEADER=============== -->

    <nav class="uk-navbar-container" uk-navbar="boundary-align: true; align: center;">


        <div class="uk-navbar-left">

            <a href="#"><img class="img-fluid logo" src="images/logo.png" alt="Logo"></a>


            <ul class="uk-navbar-nav">
                <li>
                    <a id="cl" href="#">WHO WE ARE</a>
                    <div class="uk-navbar-dropdown uk-navbar-dropdown-width-3">
                        <div class="uk-navbar-dropdown-grid uk-child-width-1-3" uk-grid>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <a id="cl" href="#">ABOUT US</a>
                    <div class="uk-navbar-dropdown uk-navbar-dropdown-width-3">
                        <div class="uk-navbar-dropdown-grid uk-child-width-1-3" uk-grid>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <a id="cl" href="#">CAREERS</a>
                    <div class="uk-navbar-dropdown uk-navbar-dropdown-width-3">
                        <div class="uk-navbar-dropdown-grid uk-child-width-1-3" uk-grid>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>

                <li>
                    <a id="cl" href="#">DOWNLOADS</a>
                    <div class="uk-navbar-dropdown uk-navbar-dropdown-width-3">
                        <div class="uk-navbar-dropdown-grid uk-child-width-1-3" uk-grid>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>

                <li>
                    <a id="cl" href="#">SHOP</a>
                    <div class="uk-navbar-dropdown uk-navbar-dropdown-width-3">
                        <div class="uk-navbar-dropdown-grid uk-child-width-1-3" uk-grid>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <a id="cl" href="#">CONTACT US</a>
                    <div class="uk-navbar-dropdown uk-navbar-dropdown-width-3">
                        <div class="uk-navbar-dropdown-grid uk-child-width-1-3" uk-grid>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <a id="cl" href="#">PORTALS</a>
                    <div class="uk-navbar-dropdown uk-navbar-dropdown-width-3">
                        <div class="uk-navbar-dropdown-grid uk-child-width-1-3" uk-grid>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                            <div>
                                <ul class="uk-nav uk-navbar-dropdown-nav">
                                    <li class="uk-active"><a href="#">Active</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-header">Header</li>
                                    <li><a href="#">Item</a></li>
                                    <li><a href="#">Item</a></li>
                                    <li class="uk-nav-divider"></li>
                                    <li><a href="#">Item</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>

            </ul>
            <a href="#"><img class="img-fluid kenya rounded-circle" src="images/kenya.png" alt="Logo"></a>
            <a href="#"><img class="img-fluid uganda rounded-circle" src="images/uganda.png" alt="Logo"></a>

        </div>

    </nav>


    <!-- ===================================== JOB DESCRIPTION ===================================== -->


    <div class="container">
        <div class="apollo">
            <h1>JOB DESCRIPTION</h1>
            <div class="header-line"></div>
            <p class="container content-offer text-left">
                <?= html_entity_decode($job_desc['job_short_description']); ?>
            </p>


        </div>
        <div class="row ">
            <div class="col-10 job-box">
                <div class="job-description text-center">
                    <h2><?= desanitize($job_desc['job_title']); ?></h2>
                    <ul class="text-left">
                        <li><b>Company:</b> <span><?= sanitize($job_desc['company']); ?></span> </li>
                        <li><b>Location:</b> <span>
                                <?= desanitize($job_desc['county']) . ', ' . desanitize($job_desc['country']); ?></span>
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
                                <a href="career_login.php" class="btn btn-primary">APPLY NOW</a>
                            </div>
                        </div>
                    </div>
                </div><br>
            </div>
        </div>
    </div>




    <!-- =====================================FOOTER===================================== -->
    <footer id="footer">
        <div class="footer-top">
            <div class="container-fluid">
                <div class="row mover">

                    <div class="col-lg-2 col-md-6 footer-links">
                        <h4>GENERAL</h4>
                        <ul>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Motor Comprehensive Insurance</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Agriculture Insurance</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Domestic Package</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Personal Accident</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">APA Marine</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-2 col-md-6 footer-links">
                        <h4>HEALTH</h4>
                        <ul>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Health Corporate</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Femina</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Jamii Plus & Afya Nafuu</a></li>

                        </ul>
                    </div>



                    <div class="col-lg-2 col-md-6 footer-links">
                        <h4>LIFE</h4>
                        <ul>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Elimu</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Imarika</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">HosiCare</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Pumzisha</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Group Pension</a></li>

                        </ul>
                    </div>

                    <div class="col-lg-2 col-md-6 footer-links">
                        <h4>INVESTMENT</h4>
                        <ul>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Balance Funds</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Equity Funds</a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Money Market Funds </a></li>
                            <li><i class="ion-ios-arrow-right"></i> <a href="#">Group Pension</a></li>

                        </ul>
                    </div>

                    <div class="col-lg-4 col-md-6 footer-contact">
                        <h4>Contact Us</h4>
                        <p>
                            Apollo Center, westland Rd,
                            off Lunga lunga,<br> Westlands Area
                            Nairobi – Kenya <br>
                            Phone: (+254) 0711 045000<br>
                            <strong>Email:</strong> info@apainsurance.org<br>
                        </p>
                        <br>
                        <div class="social-links">
                            <a href="#" class="twitter"><i class="fab fa-twitter"></i></a>
                            <a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a>
                            <a href="#" class="instagram"><i class="fab fa-instagram"></i></a>
                            <a href="#" class="google-plus"><i class="fab fa-google-plus-g"></i></a>
                            <a href="#" class="linkedin"><i class="fab fa-linkedin-in"></i></a>
                        </div>

                    </div>

                </div>

            </div>
        </div>
        <div class="footer-line">
        </div>
        <div class="container">
            <div class="copyright">
                &copy; Copyright <strong>APA INSURANCE</strong>. All Rights Reserved
            </div>

        </div>
    </footer><!-- #footer -->



    <!-- Optional JavaScript -->

    <!-- UIkit JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit-icons.min.js"></script>
    <script src="js/uikit.min.js"></script>
    <script src="js/uikit-icons.min.js"></script>



    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
</body>

</html>