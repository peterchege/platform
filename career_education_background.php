<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>APA INSURANCE</title>

    <?php include 'views/head_links.php'; ?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="js/magic.js"></script> <!-- load our javascript file -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <!-- My js copy -->
    <script type="text/javascript" src="js/workexperience.js"></script>
    <script type="text/javascript" src="js/change.js"></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/submit.js"></script>



</head>

<body>


    <!-- ==============HEADER=============== -->
    <?php include 'views/career_portal_nav.php'; ?>
    <!-- #header -->

    <!-- ===================================== JOB DESCRIPTION ===================================== -->
    <div id="msform">

        <ul id="progressbar" class="nav-list">
            <li class="act act" id="active1">PERSONAL <br>INFORMATION</li>
            <li class="act" id="active2">EMPLOYMENT<br> HISTORY</li>
            <li class="act" id="active3">EDUCATION<br> BACKGROUND</li>
            <li class="act" id="active4">FILE <br>ATTACHMENT</li>
            <li class="act" id="active5">REVIEW <br>AND SUBMIT</li>
            <!-- <li ><br>SUMMARY</li> -->
        </ul>


     
        <!-- EDUCATION BACKGROUND FORM -->

        <fieldset id="third">
            <div class="container">
                <br>
                <div class="row">
                    <div class="col-10 job-box">
                        <div class="job-description text-center">
                            <h2>EDUCATION AND PROFESSIONAL<BR> QUALIFICATIONS</h2>
                            <div class="desc-cont text-left">
                                <h3>EDUCATION</h3>
                                <p>Please list your educational background below, starting with the highest
                                    certification first.</p>
                            </div>

                            <form class="text-left">
                                <div id="education_fileds">
                                    <h3>EDUCATION 1</h3>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label id="label-1">INSTITUTION</label>
                                                <input type="text" class="form-control my-input" name="institution"
                                                    placeholder="">
                                            </div>
                                        </div><br>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">PROGRAM</label>
                                                <input type="text" name="program" class="form-control my-input"
                                                    placeholder="">
                                            </div>
                                        </div><br>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="exampleFormControlSelect1">EDUCATION LEVEL</label>
                                                <select class="form-control my-input" name="education_level">
                                                    <option>NOT SPECIFIED</option>
                                                    <option>NONE</option>
                                                    <option>KCPE</option>
                                                    <option>KCSE</option>
                                                    <option>HIGH SCHOOL DIPLOMA</option>
                                                    <option>TECHNICAL DIPLOMA</option>
                                                    <option>COLLEGE DIPLOMA</option>
                                                    <option>NON-DEGREE PROGRAM</option>
                                                    <option>BACHELOR'S DEGREE</option>
                                                    <option>MASTER'S DEGREE</option>
                                                    <option>DOCTORATE DEGREE</option>
                                                    <option>HIGHER DEGREE</option>
                                                    <option>OTHER</option>
                                                </select>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="row empl">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label id="label-1">START DATE</label>
                                                <input type="date" name="start_date"
                                                    class="form-control my-input" placeholder="">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">GRADUATION DATE</label>
                                                <input type="date" name="graduation_date"
                                                    class="form-control my-input" placeholder="">
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group form-check Check-box1">
                                                <input type="checkbox" class="form-check-input"
                                                    name="anticipated_graduation_date">
                                                <label class="form-check-label" for="exampleCheck1">ANTICIPATED
                                                    GRADUATION
                                                    DATE</label>
                                            </div>
                                        </div>

                                    </div>


                                    <!-- <a href="#"> -->
                                    <h3 id="remove_field" class="dup-text1" onclick="remove_education();">Remove
                                        Education
                                    </h3>
                                    <!-- </a> -->
                                </div>
                                <hr>
                                <h3 id="more_fields" class="dup-text" onclick="add_education();">Add Education</h3>

                                <br>
                                <div class="certificate">
                                    <h3>CERTIFICATIONS AND LICENSES</h3>
                                    <p>Please start by entering the most recent relevant certification/professional
                                        qualification and continue adding until you have entered all that you feel are
                                        important to disclose for this job. Please do not list expired certifications.
                                    </p>
                                </div>
                                <div id="certification_fileds">
                                    <h3>CERTIFICATE 1</h3>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label id="label-1">CERTIFICATE</label>
                                                <input type="text" class="form-control my-input" name="certificate"
                                                    placeholder="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row empl">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">ISSUING ORGANIZATION</label>
                                                <input type="text" name="issuing_organization" class="form-control my-input"
                                                    placeholder="">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row empl">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label id="label-1">ISSUE DATE</label>
                                                <input type="date" name="issuing_date"
                                                    class="form-control my-input" placeholder="">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">EXPIRATION DATE</label>
                                                <input type="date" name="expiring_date"
                                                    class="form-control my-input" placeholder="">
                                            </div>
                                        </div>
                                    </div><br>
                                    <small><i>If this certification will be received in the future, enter the expected
                                            issuing
                                            date</i></small>
                                    <h3 id="remove_field" class="dup-text2" onclick="remove_certificate();">Remove
                                        Certificate</h3>
                                    <hr>
                                    <h3 id="more_fields" class="dup-text" onclick="add_certificate();">Add Certificate
                                    </h3>
                                    <br>
                                </div>

                                <div class="row btn-form">
                                    <div class="col-md-3">
                                        <div class="text-center new-bt bt-back">
                                            <!-- <input name="previous" class="btn btn-secondary previous" type="button" value="BACK"> -->
                                            <input name="previous" id="pre_btn2" onclick="prev_step2()" type="button"
                                                class="btn btn-secondary previous" type="button" value="BACK">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="text-center  new-bt">
                                            <!-- <a href="#" class="btn btn-primary">save & continue</a> -->
                                            <!-- <input name="next" class="btn btn-primary next" type="button"                                              value="save & continue"> -->
                                            <input id="next_btn3" onclick="next_step3()" class="btn btn-primary next"
                                                type="button" value="SAVE & CONTINUE">

                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class=" text-center new-bt bt-back">
                                            <a href="#" class="btn btn-danger g-log1">QUIT</a>
                                        </div>
                                    </div>
                                </div>
                                <br>
                            </form>


                        </div>
                    </div>
                </div>
            </div>
        </fieldset>

       


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

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
    <script src="js/summary.js" type="text/javascript"></script>
</body>

</html>