<?php
require_once 'inc/dependants.php';
confirm_login();

//if(isset($_GET['edit'])){
//    $edit_id = $_GET['edit'];
//    $edit_query = $db->query("SELECT * FROM apa_job_posts WHERE job_id = '$edit_id'");
//    //var_dump($edit_query) ;
//    //echo mysqli_num_rows($edit_query);
//    if(mysqli_num_rows($edit_query) == 0 || mysqli_num_rows($edit_query)>1){
//        $_SESSION['errorMessage'] = 'Invalid selection.';
//        echo "<script>
//            window.open('index.php', '_SELF');
//        </script>";
//        exit();
//    }
//}



if(isset($_POST['submit_job_post'])){
    $job_id = randomstring(10);
    $job_title=sanitize($_POST['job_title']);
    $job_short_description = sanitize($_POST['job_short_description']);
    $country =sanitize($_POST['country']);
    $county = sanitize($_POST['county']);
    $company = sanitize($_POST['company']);
    $employment_type=sanitize($_POST['employment_type']);
    $deadline=sanitize($_POST['deadline']);
    $salary=sanitize($_POST['salary']);
    $company=sanitize($_POST['company']);
    $primary_responsibilities=sanitize($_POST['primary_responsibilities']);
    $academic_qualification=sanitize($_POST['academic_qualification']);
    $professional_qualifications=sanitize($_POST['professional_qualifications']);
    $job_skills=sanitize($_POST['job_skills']);
    $experience=sanitize($_POST['experience']);
    
    $admin = sanitize($_SESSION['fname']);
    
    if(empty($primary_responsibilities)){
        $errors[]='Primary responsibilities can\'t be empty.';
    }
    if(empty($academic_qualification)){
        $errors[]='Academic qualifications can\'t be empty.';
    }
    if(empty($professional_qualifications)){
        $errors[]='Professional qualifications can\'t be empty.';
    }
    if(empty($job_skills)){
        $errors[]='Job skills can\'t be empty.';
    }
    if(empty($experience)){
        $errors[]='Experience can\'t be empty.';
    }
    
    if(empty($errors)){
        $insertquery = "INSERT INTO apa_job_posts ( job_id, job_title, job_short_description, country, county, company, employment_type, salary, key_primary_responsibilities, academic_qualifications, professional_qualifications, job_skills_and_requirements, experience, deadline, added_by)
                        VALUES('$job_id', '$job_title', '$job_short_description', '$country', '$county', '$company', '$employment_type', '$salary', '$primary_responsibilities', '$academic_qualification', '$professional_qualifications','$job_skills', '$experience', '$deadline', '$admin')";
        $db->query($insertquery);
        
        $_SESSION['successMessage']=$job_title.' added successfully';
        echo '<script>window.open("index.php", "_SELF");</script>';
        exit();
        
    }    
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>HR ADMIN - Add Job</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

    <!--    ckeditor-->
    <!-- <script src="https://cdn.ckeditor.com/ckeditor5/12.0.0/classic/ckeditor.js"></script> -->
    <!--    ckeditor-->
    <!-- <script src="https://cdn.ckeditor.com/ckeditor5/12.0.0/classic/ckeditor.js"></script> -->
    <!--    ckeditor 4-->
    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>

    <!--    add resources-->
    <link rel="icon" type="image/png" href="add/images/icons/apa_insurance_image.jpg" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="add/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="add/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="add/fonts/iconic/css/material-design-iconic-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="add/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="add/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="add/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="add/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="add/vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="add/vendor/noui/nouislider.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="add/css/util.css">
    <link rel="stylesheet" type="text/css" href="add/css/main.css">


</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.php">
                <div class="sidebar-brand-icon rotate-n-15">
                    <!--                    <i class="fas fa-laugh-wink"></i>-->
                    <img src="img/apa_insurance_image.jpg" style="width: 50px;">
                </div>
                <div class="sidebar-brand-text mx-3">HR Admin</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="index.php">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <!--            <hr class="sidebar-divider">-->

            <!-- Nav Item - Tables -->
            <!--
            <li class="nav-item">
                <a class="nav-link" href="tables.html">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Tables</span></a>
            </li>
-->

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Nav Item - Tables -->
            <li class="nav-item active">
                <a class="nav-link" href="add_job.php">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Add JOB</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <!--                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">-->
                            <div class="input-group-append">
                                <!--
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
-->
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><?= $_SESSION['fname']. ' ' . $_SESSION['lname'] ; ?></span>
                                <img class="img-profile rounded-circle" src="img/apa_insurance_image.jpg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="logout.php" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Add Job</h1>
                    </div>

                    <!--                    add form-->
                    <div class="container-contact100">
                        <div class="wrap-contact100">
                            <form class="contact100-form validate-form" action="add_job.php" method="POST">
                                <?php
                                if(!empty($errors)){
                                    echo display_errors($errors);
                                }
//                                echo errorMessage();
//                                echo successMessage();
                                ?>
                                <span class="contact100-form-title">
                                </span>




                                <div class="wrap-input100 validate-input bg1" data-validate="Please Enter Job Name">
                                    <span class="label-input100">JOB TITLE *</span>
                                    <input class="input100" type="text" name="job_title" placeholder="Enter job name" value="<?= ((isset($job_title))?$job_title:''); ?>">
                                </div>

                                <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate="Enter employment type">
                                    <span class="label-input100">Employment type *</span>
                                    <input class="input100" type="text" name="employment_type" placeholder="Enter type of employment " value="<?= ((isset($employment_type))? $employment_type:''); ?>">
                                </div>

                                <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate="Country required">
                                    <span class="label-input100">Country*</span>
                                    <input class="input100" type="text" name="country" placeholder="Enter country" value="<?= ((isset($country))? $country :''); ?>">
                                </div>

                                <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate="County required">
                                    <span class="label-input100">County*</span>
                                    <input class="input100" type="text" name="county" placeholder="Enter county" value="<?= ((isset($county))? $county :''); ?>">
                                </div>

                                <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate="Enter company">
                                    <span class="label-input100">Company* <sup style="margin-left: 8px; font-size: 0.5rem; text-transform: none; !important">eg</sup> APA Life Insurance</span>
                                    <input class="input100" type="text" name="company" placeholder="Enter company" value="<?= ((isset($company))? $company:''); ?>">
                                </div>

                                <div class="wrap-input100 rs1-wrap-input100">
                                    <span class="label-input100">Salary</span>
                                    <input class="input100" type="number" name="salary" placeholder="Enter salary" value="<?= ((isset($salary))? $salary:''); ?>">
                                </div>

                                <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate="Enter deadline">
                                    <span class="label-input100">Deadline*</span>
                                    <input class="input100" type="date" name="deadline" value="" id="datepicker">
                                </div>

                                <div class="wrap-input100 input100" data-validate="Short description required">
                                    <span class="label-input100">JOB SHORT DESCRIPTION</span>
                                    <textarea id="editor0" class="input100" name="job_short_description" placeholder="Enter a short description of the job"><?=((isset($job_short_description))?$job_short_description:'');?></textarea>
                                </div>

                                <div class="wrap-input100 input100" data-validate="Responsibilities required">
                                    <span class="label-input100">KEY PRIMARY RESPONSIBILITIES</span>
                                    <textarea id="editor1" class="input100" name="primary_responsibilities" placeholder="Enter key primary responsibilites of the applicant"><?=((isset($primary_responsibilities))?$primary_responsibilities:'');?></textarea>
                                </div>

                                <div class="wrap-input100" data-validate="Academic qualifications required">
                                    <span class="label-input100">ACADEMIC QUALIFICATIONS</span>
                                    <textarea id="editor2" class="input100" name="academic_qualification" placeholder="Academic qualifications"><?=((isset($academic_qualification))?$academic_qualification:'');?></textarea>
                                </div>

                                <div class="wrap-input100" data-validate="Professional qualifications required">
                                    <span class="label-input100">PROFESSIONAL QUALIFICATIONS</span>
                                    <textarea id="editor3" class="input100" name="professional_qualifications" placeholder="Professional qualifications"><?=((isset($professional_qualifications))?$professional_qualifications:'');?></textarea>
                                </div>

                                <div class="wrap-input100">
                                    <span class="label-input100">JOB SKILLS AND REQUIREMENTS</span>
                                    <textarea id="editor4" class="input100" name="job_skills" placeholder="Enter skills and requirements of the job"><?= ((isset($job_skills))? $job_skills:''); ?></textarea>
                                </div>

                                <div class="wrap-input100">
                                    <span class="label-input100">EXPERIENCE</span>
                                    <textarea id="editor5" class="input100" name="experience" placeholder="Enter experience of the applicant"><?= ((isset($experience))?$experience:''); ?></textarea>
                                </div>
                                <div class="container-contact100-form-btn">
                                    <button class="contact100-form-btn" type="submit" name="submit_job_post">
                                        <span>
                                            Submit
                                            <i class="fa fa-long-arrow-right m-l-1" aria-hidden="true"></i>
                                        </span>
                                    </button>
                                    <a class="btn contact100-form-btn" href="edit_job.php?cancel" name="">
                                        <span>
                                            Cancel
                                            <i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
                                        </span>
                                    </a>
                                </div>



                            </form>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Begin Page Content -->


            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>APA INSURANCE &copy; 2019</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session and be redirected to the login page.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="logout.php">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>


    <!--    add script resources-->
    <!--===============================================================================================-->
    <script src="add/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="add/vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="add/vendor/bootstrap/js/popper.js"></script>
    <script src="add/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="add/vendor/select2/select2.min.js"></script>

    <!--    disabling dates till today-->
    <script>


    </script>


    <script>
        $(".js-select2").each(function() {
            $(this).select2({
                minimumResultsForSearch: 20,
                dropdownParent: $(this).next('.dropDownSelect2')
            });


            $(".js-select2").each(function() {
                $(this).on('select2:close', function(e) {
                    if ($(this).val() == "Please choose") {
                        $('.js-show-service').slideUp();
                    } else {
                        $('.js-show-service').slideUp();
                        $('.js-show-service').slideDown();
                    }
                });
            });
        })

    </script>
    <!--===============================================================================================-->
    <script src="add/vendor/daterangepicker/moment.min.js"></script>
    <script src="add/vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="add/vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="add/vendor/noui/nouislider.min.js"></script>
    <script>
        var filterBar = document.getElementById('filter-bar');

        noUiSlider.create(filterBar, {
            start: [1500, 3900],
            connect: true,
            range: {
                'min': 1500,
                'max': 7500
            }
        });

        var skipValues = [
            document.getElementById('value-lower'),
            document.getElementById('value-upper')
        ];

        filterBar.noUiSlider.on('update', function(values, handle) {
            skipValues[handle].innerHTML = Math.round(values[handle]);
            $('.contact100-form-range-value input[name="from-value"]').val($('#value-lower').html());
            $('.contact100-form-range-value input[name="to-value"]').val($('#value-upper').html());
        });

    </script>
    <!--===============================================================================================-->
    <script src="add/js/main.js"></script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <!--    <script async src=""></script>-->
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'UA-23581568-13');

    </script>

    <script>
        // Replace the <textarea id="editor1"> with a CKEditor
        // instance, using default configuration.
        CKEDITOR.replace('editor0');
        CKEDITOR.replace('editor1');
        CKEDITOR.replace('editor2');
        CKEDITOR.replace('editor3');
        CKEDITOR.replace('editor4');
        CKEDITOR.replace('editor5');

    </script>

    <!--    ckeditor scripts-->
    <script>
        //        ClassicEditor
        // .create(document.querySelector('#editor'))
        // .then(editor => {
        // console.log(editor);
        // })
        // .catch(error => {
        // console.error(error);
        // });
        //
        // ClassicEditor
        // .create(document.querySelector('#editor1'))
        // .then(editor => {
        // console.log(editor);
        // })
        // .catch(error => {
        // console.error(error);
        // });
        //
        // ClassicEditor
        // .create(document.querySelector('#editor2'))
        // .then(editor => {
        // console.log(editor);
        // })
        // .catch(error => {
        // console.error(error);
        // });
        //
        // ClassicEditor
        // .create(document.querySelector('#editor3'))
        // .then(editor => {
        // console.log(editor);
        // })
        // .catch(error => {
        // console.error(error);
        // });
        //
        // ClassicEditor
        // .create(document.querySelector('#editor4'))
        // .then(editor => {
        // console.log(editor);
        // })
        // .catch(error => {
        // console.error(error);
        // });
        // ClassicEditor
        // .create(document.querySelector('#editorpq'))
        // .then(editor => {
        // console.log(editor);
        // })
        // .catch(error => {
        // console.error(error);
        // });

    </script>
</body>

</html>
