<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>APA INSURANCE</title>

    <?php include 'views/head_links.php'; ?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="js/submit_work_experience.js"></script> <!-- load our javascript file -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <!-- My js copy -->
    <script type="text/javascript" src="js/workexperience.js"></script>
    <script type="text/javascript" src="js/change.js"></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
   <!--  <script src="js/submit.js"></script> -->



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


     

        <!-- EMPLOYMENT HISTORY FORM -->

        <fieldset id="second">
            <div class="container">
                <br>
                <div class="row">
                    <div class="col-10 job-box">
                        <div class="job-description text-center">
                            <h2>EMPLOYMENT HISTORY</h2>
                            <div class="desc-cont text-left">
                                <h3>WORK EXPERIENCE</h3>
                                <p>Please list your work experience below, starting with the most recent one.</p>
                            </div>

                            <form action="submit_work_experience.php" method="post">
                                <div id="room_fileds">
                                    <h3>WORK EXPERIENCE 1</h3>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label id="label-1"><span
                                                        class="icon_star">&#10040;</span>EMPLOYER/COMPANY</label>
                                                <input type="text" class="form-control my-input" name="employer"
                                                    placeholder="">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1"><span
                                                        class="icon_star">&#10040;</span>TITLE/POSITION</label>
                                                <input type="text" name="position" class="form-control my-input"
                                                    placeholder="">
                                            </div>
                                        </div>

                                    </div>
                                    <div class="row empl">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label id="label-1"><span class="icon_star">&#10040;</span>START
                                                    DATE</label>
                                                <input type="date" name="start_date" class="form-control my-input"
                                                    placeholder="">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1"><span
                                                        class="icon_star">&#10040;</span>END
                                                    DATE</label>
                                                <input type="date" name="end_date" class="form-control my-input"
                                                    placeholder="">
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group form-check Check-box1">
                                                <input type="checkbox" name="current_job" value="Yes"class="form-check-input" id="exampleCheck1">
                                                <label class="form-check-label" for="exampleCheck1">CURRENT JOB</label>
                                            </div>
                                        </div>

                                    </div><br>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label id="label-1">SALARY</label>
                                                <input type="text" class="form-control my-input" name="salary"
                                                    placeholder="">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label id="label-1">NOTICE PERIOD (DAYS)</label>
                                                <input type="text" class="form-control my-input" name="notice_period"
                                                    placeholder="">
                                            </div>
                                        </div>
                                    </div>
                              <!--      <div class="row empl">
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label>ROLES PERFORMED</label>
                                                <textarea rows="4" cols="50" type="text" name="roles_performed" class="form-control my-input">
                                            </textarea>
                                            </div>
                                        </div>
                                    </div>  -->
                                    <div class="row empl">
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label>ROLES PERFORMED</label>
                                                <input rows="4" cols="50" type="text" name="roles_performed" class="form-control my-input">
                                            </input>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- <a href="#"> -->
                                    <h3 id="remove_field" class="dup-text1" onclick="remove_fields();">Remove work
                                        experience</h3>
                                    <!-- </a> -->
                                </div>
                                <hr>
                                <h3 id="more_fields" class="dup-text" onclick="add_fields();">ADD WORK EXPERIENCE</h3>

                                <br>
                                <div class="row btn-form">
                                    <div class="col-md-3">
                                        <div class="text-center new-bt bt-back">
                                            <!-- <input name="previous" class="btn btn-secondary previous" type="button" value="BACK"> -->
                                            <input name="previous" id="pre_btn1" onclick="prev_step1()" type="button"
                                                class="btn btn-secondary previous" type="button" value="BACK">

                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="text-center  new-bt">
                                            <!-- <a href="#" class="btn btn-primary">save & continue</a> -->
                                            <!-- <input name="next" class="btn btn-primary next" type="button"
                                            value="save & continue"> 
                                            <button type="submit_work_experience" class="btn btn-success">Submit <span class="fa fa-arrow-right"></span></button>

                                            <input id="next_btn2" onclick="next_step2()" class="btn btn-primary next"
                                                type="button" value="SAVE & CONTINUE">  -->

                                                <button type="submit" class="btn btn-success">Submit <span class="fa fa-arrow-right"></span></button>

                           
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