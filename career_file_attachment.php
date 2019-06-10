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




        <!-- FILE ATTACHMENT FORM -->

        <fieldset id="fourth">
            <div class="container">
                <br>
                <div class="row">
                    <div class="col-10 job-box">
                        <div class="job-description text-center">
                            <h2>FILE ATTACHMENT</h2>
                            <div class="desc-cont text-left">
                                <h3>ATTACHMENTS</h3>
                                <p>If you have a CV/Resume available and are applying from a device that is able to
                                    source
                                    attachments please also attach it here, even if you have used the parsing
                                    functionality.

                                    Please do not worry however if you are unable to do so. You can attach other files
                                    to
                                    your candidate record (e.g. cover or motivation letters) as you wish.



                                    Once a file is attached, you can overwrite it by attaching a file with exactly the
                                    same
                                    name and extension</p>
                            </div>
                            <br>
                            <form class="text-left">
                                <div>
                                    <h3>SELECT THE FILE TO ATTACH</h3>
                                    <div class="row ">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <!-- <label for="exampleFormControlFile1"> SELECT THE FILE TO ATTACH</label><br> -->
                                                <input type="file" class="form-control-file"
                                                    id="exampleFormControlFile1">
                                            </div>
                                        </div>
                                    </div><br>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="exampleFormControlSelect1">DOCUMENT TYPE</label>
                                                <select class="form-control my-input" name="education_level[]">
                                                    <option selected="true" disabled="disabled">NOT SPECIFIED</option>
                                                    <option>RESUME/CV</option>
                                                    <option>FORMAL EDUCATION CERTIFICATE</option>
                                                    <option>PROFESSIONAL EDUCATION CERTIFICATE</option>
                                                    <option>MISCELLANEOUS/OTHERS</option>

                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                    <!-- <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">COMMENTS ABOUT THE FILE</label>
                                                <input type="text" name="program[]" class="form-control my-input"
                                                    placeholder="">
                                            </div>
                                        </div><br>
                                    </div> -->
                                    <div class="row">
                                        <div class="col-6 text-left new-bt">
                                            <a href="#" class="btn btn-block btn-primary">ATTACH</a>
                                        </div>
                                        <P><br>
                                            This section displays basic information regarding the files you have
                                            attached to your
                                            candidate record You can delete some or all the files. The "Relevant Files"
                                            column
                                            allows you to select the files you feel are relevant to this job submission.
                                            Also,
                                            please indicate which of the attached documents is your CV/Resume.
                                        </P>
                                    </div>

                                    <div class="row">
                                        <div class="uk-overflow-auto">
                                            <table class="uk-table uk-table-hover uk-table-middle uk-table-divider">
                                                <thead>
                                                    <tr>
                                                        <th class="uk-table-expand">FILE NAME</th>
                                                        <th class="uk-width-small">DATE</th>
                                                        <th class="uk-table-shrink uk-text-nowrap">COMMENTS</th>
                                                        <th class="uk-table-shrink uk-text-nowrap">ACTIONS</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>

                                                        <td class="uk-table-link">
                                                            <a class="uk-link-reset" href="">Degree doc</a>
                                                        </td>
                                                        <td class="uk-text-truncate">2/20/19</td>
                                                        <td class="uk-text-nowrap">Lorem ipsum dolor</td>
                                                        <td><button class="uk-button uk-button-default"
                                                                type="button">DELETE</button></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="uk-table-link">
                                                            <a class="uk-link-reset" href="">CV</a>
                                                        </td>
                                                        <td class="uk-text-truncate">2/20/19</td>
                                                        <td class="uk-text-nowrap">Lorem ipsum dolor</td>
                                                        <td><button class="uk-button uk-button-default"
                                                                type="button">DELETE</button></td>
                                                    </tr>
                                                    <tr>

                                                        <td class="uk-table-link">
                                                            <a class="uk-link-reset" href="">Resume</a>
                                                        </td>
                                                        <td class="uk-text-truncate">2/20/19</td>
                                                        <td class="uk-text-nowrap">Lorem ipsum dolor</td>
                                                        <td><button class="uk-button uk-button-default"
                                                                type="button">DELETE</button></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <hr>
                                    <br>

                                    <div class="row btn-form">
                                        <div class="col-md-3">
                                            <div class="text-center new-bt bt-back">
                                                <!-- <input name="previous" class="btn btn-secondary" type="button"                                                   value="BACK"> -->
                                                <input name="previous" id="pre_btn3" onclick="prev_step3()"
                                                    type="button" class="btn btn-secondary previous" type="button"
                                                    value="BACK">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="text-center  new-bt">
                                                <!-- <a href="#" class="btn btn-primary">save & continue</a> -->
                                                <!-- <input name="next" class="btn btn-primary" type="button"                                                   value="save & continue"> -->
                                                <input id="next_btn4" onclick="next_step4()"
                                                    class="btn btn-primary next" type="button" value="SAVE & CONTINUE">
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