<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>APA INSURANCE</title>

    <?php include 'views/head_links.php'; ?>
    <!-- My js copy -->
    <script type="text/javascript" src="js/workexperience.js"></script>
    <script type="text/javascript" src="js/change.js"></script>



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


    <!-- PERSONAL INFORMATION FORM -->

    <fieldset id="first">
        <div class="container">
        <br>  
            <div class="row">
                <div class="col-10 job-box"> 
                    <div class="job-description text-center">
                            <h2>PERSONAL INFORMATION</h2>
                                <p>Please enter all relevant personal information in the fields below</p>
                            <form class="text-left">
                                <br>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label id="label-1" for="exampleInputEmail1"><span class="icon_star">&#10040;</span>First Name</label>
                                            <input type="text" class="form-control my-input" name="firstname" placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1"><span
                                                    class="icon_star">&#10040;</span>Surname</label>
                                            <input type="text" name="surname" class="form-control my-input"
                                                placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1"><span class="icon_star">&#10040;</span>Other Name</label>
                                            <input type="text" name="lastname" class="form-control my-input" placeholder="">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label id="label-1" for="exampleInputEmail1"><span
                                                    class="icon_star">&#10040;</span>National ID</label>
                                            <input type="text" class="form-control my-input" name="id_no"
                                                placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1"><span class="icon_star">&#10040;</span> Gender</label>
                                            <select class="form-control my-input" name="education_level[]">
                                                <option selected="selected" disabled>--Please choose --</option>
                                                <option value="MALE">MALE</option>
                                                <option value="FEMALE">FEMALE</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1"><span
                                                    class="icon_star">&#10040;</span>Date of Birth</label>
                                            <input type="date" name="DOB" class="form-control my-input"
                                                placeholder="">
                                        </div>
                                    </div>
                                </div>
                                <hr>
                            
                                <h3>PLACE OF RESIDENCE</h3>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label id="label-1" for="exampleInputEmail1"><span class="icon_star">&#10040;</span>COUNTRY</label>
                                                <input type="text" name="country" class="form-control my-input" aria-describedby="basic-addon" placeholder="">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1"><span class="icon_star">&#10040;</span>STATE/PROVINCE/COUNTY</label>
                                                <input type="text" name="state" class="form-control my-input" placeholder="">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1"><span
                                                        class="icon_star">&#10040;</span>REGION/CITY</label>
                                                <input type="text" name="city" class="form-control my-input" placeholder="">
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                            <h3>CONTACT DETAILS</h3>
                                <div class="form-group">
                                    <label for="exampleInputPassword1"><span class="icon_star">&#10040;</span>Phone Number</label>
                                    <input type="tel" name="phonenumber" class="form-control my-input" placeholder="">
                                </div>
                                    
                                <div class="form-group">
                                    <label for="exampleInputEmail1"><span class="icon_star">&#10040;</span>Email address</label>
                                    <input type="email" name="email" class="form-control my-input" id="exampleInputEmail1"
                                        aria-describedby="emailHelp" placeholder="">
                                </div>
                                <!-- <div class="form-group">
                                    <label for="exampleInputEmail1">EXPECTED SALARY</label>
                                    <input type="text" name="salary" class="form-control my-input" placeholder="">
                                </div> -->
                            <br>
                                <div class="row btn-form">
                                    <!-- <div class="col-md-3">
                                        <div class="text-center new-bt bt-back">
                                            <a href="#" class="btn btn-secondary">BACK</a>
                                        </div>
                                    </div> -->
                                    <div class="col-md-6">
                                        <div class="text-center  new-bt">
                                            <!-- <a href="career_employment.html" class="btn btn-primary">save & continue</a> -->
                                            <!-- <input name="next"  class="btn btn-primary next" type="button" value="save & continue"> -->
                                            <input id="next_btn1" onclick="next_step1()" class="btn btn-primary next" type="button" value="SAVE & CONTINUE">
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

                        <form class="text-left">
                            <div id="room_fileds">
                                <h3>WORK EXPERIENCE 1</h3>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label id="label-1"><span
                                                    class="icon_star">&#10040;</span>EMPLOYER/COMPANY</label>
                                            <input type="text" class="form-control my-input" name="COMPANY"
                                                placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1"><span
                                                    class="icon_star">&#10040;</span>TITLE/POSITION</label>
                                            <input type="text" name="POSITION" class="form-control my-input"
                                                placeholder="">
                                        </div>
                                    </div>

                                </div>
                                <div class="row empl">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label id="label-1"><span class="icon_star">&#10040;</span>START
                                                DATE</label>
                                            <input type="date" name="lastname" class="form-control my-input"
                                                placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1"><span class="icon_star">&#10040;</span>END
                                                DATE</label>
                                            <input type="date" name="lastname" class="form-control my-input"
                                                placeholder="">
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group form-check Check-box1">
                                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                            <label class="form-check-label" for="exampleCheck1">CURRENT JOB</label>
                                        </div>
                                    </div>

                                </div><br>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label id="label-1">SALARY</label>
                                            <input type="text" class="form-control my-input" name="SALARY"
                                                placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label id="label-1">NOTICE PERIOD (DAYS)</label>
                                            <input type="text" class="form-control my-input" name="SALARY"
                                                placeholder="">
                                        </div>
                                    </div>
                                </div>
                                <div class="row empl">
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label>ROLES PERFORMED</label>
                                            <textarea type="text" name="comment" class="form-control my-input">
                                            </textarea>
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
                                         <input name="previous" id="pre_btn1" onclick="prev_step1()" type="button" class="btn btn-secondary previous" type="button"
                                             value="BACK">
                                        
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="text-center  new-bt">
                                        <!-- <a href="#" class="btn btn-primary">save & continue</a> -->
                                        <!-- <input name="next" class="btn btn-primary next" type="button"
                                            value="save & continue"> -->
                                        <input id="next_btn2" onclick="next_step2()" class="btn btn-primary next"
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
                              <p>Please list your educational background below, starting with the highest certification first.</p>
                          </div>

                          <form class="text-left">
                              <div id="education_fileds">
                                  <h3>EDUCATION 1</h3>
                                  <div class="row">
                                      <div class="col-md-12">
                                          <div class="form-group">
                                              <label id="label-1">INSTITUTION</label>
                                              <input type="text" class="form-control my-input" name="institution[]"
                                                  placeholder="">
                                          </div>
                                      </div><br>
                                      <div class="col-md-12">
                                          <div class="form-group">
                                              <label for="exampleInputEmail1">PROGRAM</label>
                                              <input type="text" name="program[]" class="form-control my-input"
                                                  placeholder="">
                                          </div>
                                      </div><br>
                                      <div class="col-md-12">
                                          <div class="form-group">
                                              <label for="exampleFormControlSelect1">EDUCATION LEVEL</label>
                                              <select class="form-control my-input" name="education_level[]">
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
                                              <input type="date" name="start_date_education[]"
                                                  class="form-control my-input" placeholder="">
                                          </div>
                                      </div>
                                      <div class="col-md-4">
                                          <div class="form-group">
                                              <label for="exampleInputEmail1">GRADUATION DATE</label>
                                              <input type="date" name="graduation_date[]" class="form-control my-input"
                                                  placeholder="">
                                          </div>
                                      </div>

                                      <div class="col-md-4">
                                          <div class="form-group form-check Check-box1">
                                              <input type="checkbox" class="form-check-input"
                                                  name="anticipating_graduation[]">
                                              <label class="form-check-label" for="exampleCheck1">ANTICIPATED GRADUATION
                                                  DATE</label>
                                          </div>
                                      </div>

                                  </div>


                                  <!-- <a href="#"> -->
                                  <h3 id="remove_field" class="dup-text1" onclick="remove_education();">Remove Education
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
                                              <input type="text" class="form-control my-input" name="institution[]"
                                                  placeholder="">
                                          </div>
                                      </div>
                                  </div>
                                  <div class="row empl">
                                      <div class="col-md-12">
                                          <div class="form-group">
                                              <label for="exampleInputEmail1">ISSUING ORGANIZATION</label>
                                              <input type="text" name="issue_org[]" class="form-control my-input"
                                                  placeholder="">
                                          </div>
                                      </div>
                                      <!-- <div class="col-md-4">
                                          <div class="form-group">
                                              <label for="exampleInputEmail1">NUMBER/ID</label>
                                              <input type="text" name="nmber_id[]" class="form-control my-input"
                                                  placeholder="">
                                          </div>
                                      </div> -->
                                  </div>

                                  <div class="row empl">
                                      <div class="col-md-6">
                                          <div class="form-group">
                                              <label id="label-1">ISSUE DATE</label>
                                              <input type="date" name="start_date_education[]"
                                                  class="form-control my-input" placeholder="">
                                          </div>
                                      </div>
                                      <div class="col-md-6">
                                          <div class="form-group">
                                              <label for="exampleInputEmail1">EXPIRATION DATE</label>
                                              <input type="date" name="graduation_date[]" class="form-control my-input"
                                                  placeholder="">
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
                                      <input name="previous" id="pre_btn2" onclick="prev_step2()" type="button" class="btn btn-secondary previous" type="button" value="BACK">
                                        </div>
                                  </div>
                                  <div class="col-md-6">
                                      <div class="text-center  new-bt">
                                          <!-- <a href="#" class="btn btn-primary">save & continue</a> -->
                                          <!-- <input name="next" class="btn btn-primary next" type="button"
                                              value="save & continue"> -->
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
                                                <input type="file" class="form-control-file" id="exampleFormControlFile1">
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
                                               <!-- <input name="previous" class="btn btn-secondary" type="button"
                                                   value="BACK"> -->
                                                <input name="previous" id="pre_btn3" onclick="prev_step3()" type="button" class="btn btn-secondary previous" type="button"
                                             value="BACK">
                                           </div>
                                       </div>
                                       <div class="col-md-6">
                                           <div class="text-center  new-bt">
                                               <!-- <a href="#" class="btn btn-primary">save & continue</a> -->
                                               <!-- <input name="next" class="btn btn-primary" type="button"
                                                   value="save & continue"> -->
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

    <!-- SUMMARY FORM  -->
      <fieldset id="fifth">
        <div class="container">
            <br>
        <div class="row">
             <div class="col-10 job-box">
                 <div class="job-description text-center">
                     <h2>SUMMARY</h2>

                     <!-- PERSONAL INFORMATION   -->

                     <nav aria-label="breadcrumb">
                         <ol class="breadcrumb">
                             <li class="breadcrumb-item">
                                 <p1>PERSONAL INFORMATION</p1>
                             </li>
                             <li class="breadcrumb-item active" aria-current="page"><a href="#">EDIT</a></li>
                         </ol>
                     </nav>
                     <br>
                     <div class="personal text-left">
                         <hr>
                         <p><b>FULL NAME :</b> &nbsp; peter chege kinuthia</p>
                         <hr>
                         <p><b>NATIONAL ID :</b> &nbsp; 31521363</p>
                         <hr>
                         <p><b>GENDER :</b> &nbsp; MALE</p>
                         <hr>
                         <p><b>DATE OF BIRTH :</b> &nbsp; 14/06/1994</p>
                         <hr>
                         <p><b>COUNTRY :</b> &nbsp; Kenya </p>
                         <hr>
                         <p><b>STATE/COUNTY/PROVINCE :</b> &nbsp; Nairobi </p>
                         <hr>
                         <p><b>REGION/CITY :</b> &nbsp; Nairobi </p>
                         <hr>
                         <p><b>PHONE NUMBER :</b> &nbsp; 0701075090 </p>
                         <hr>
                         <p><b>EMAIL :</b> &nbsp; peterchege442@gmail.com </p>
                         <hr>

                         <br>
                     </div>

                     <!-- EMPLOYMENT HISTORY  -->
                     <nav aria-label="breadcrumb">
                         <ol class="breadcrumb">
                             <li class="breadcrumb-item">
                                 <p1>EMPLOYMENT HISTORY</p1>
                             </li>
                             <li class="breadcrumb-item active" aria-current="page"><a href="#">EDIT</a></li>
                         </ol>
                     </nav>
                     <br>
                     <div class="personal text-left">
                         <p><b>COMPANY :</b> &nbsp;APA INSURANCE </p>
                         <hr>
                         <p><b>TITLE :</b> &nbsp; DEVELOPER</p>
                         <hr>
                         <p><b>START DATE :</b> &nbsp; 14/02/2019 </p>
                         <hr>
                         <p><b>END DATE :</b> &nbsp; -</p>
                         <hr>
                         <p><b>ACHIEVEMENT :</b> &nbsp; </p>
                         <hr>

                     </div>
                     <br>

                     <!-- EDUCATION AMD PROFESSIONAL QUALIFICATION -->

                     <nav aria-label="breadcrumb">
                         <ol class="breadcrumb">
                             <li class="breadcrumb-item">
                                 <p1>EDUCATION AMD PROFESSIONAL QUALIFICATION</p1>
                             </li>
                             <li class="breadcrumb-item active" aria-current="page"><a href="#">EDIT</a></li>
                         </ol>
                     </nav>
                     <br>
                     <div class="personal text-left">
                         <h4>Education 1</h4>
                         <p><b>INSTUTION :</b> &nbsp; jomo kenyatta university of agriculture and technology</p>
                         <hr>
                         <p><b>PROGRAM :</b> &nbsp; information technology </p>
                         <hr>
                         <p><b>EDUCATION LEVEL :</b> &nbsp; Bachelor degree</p>
                         <hr>
                         <p><b>START DATE :</b> &nbsp; 3/08/2013 </p>
                         <hr>
                         <p><b>GRADUATION DATE :</b> &nbsp; 20/11/2018</p>
                         <hr>
                     </div><br>
                     <br>
                     <div class="personal text-left">
                         <h4>Certificate 1</h4>
                         <p><b>CERTIFICATE :</b> &nbsp; DATA SCIENCE</p>
                         <hr>
                         <p><b>ORGANISATION :</b> &nbsp; IBM </p>
                         <hr>
                         <p><b>ISSUE DATE :</b> &nbsp; 12/04/2017</p>
                         <hr>
                         <p><b>EXPIRATION DATE  :</b> &nbsp; - </p>
                         <hr>
                         

                     </div>
                     <br>

                     <!-- FILE ATTACHMENT -->

                     <nav aria-label="breadcrumb">
                         <ol class="breadcrumb">
                             <li class="breadcrumb-item">
                                 <p1>FILE ATTACHMENT</p1>
                             </li>
                             <li class="breadcrumb-item active" aria-current="page"><a href="#">EDIT</a></li>
                         </ol>
                     </nav>
                     <br>

                     <div class="row text-left">
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
                                         <td><button class="uk-button uk-button-default" type="button">DELETE</button>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td class="uk-table-link">
                                             <a class="uk-link-reset" href="">CV</a>
                                         </td>
                                         <td class="uk-text-truncate">2/20/19</td>
                                         <td class="uk-text-nowrap">Lorem ipsum dolor</td>
                                         <td><button class="uk-button uk-button-default" type="button">DELETE</button>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td class="uk-table-link">
                                             <a class="uk-link-reset" href="">Resume</a>
                                         </td>
                                         <td class="uk-text-truncate">2/20/19</td>
                                         <td class="uk-text-nowrap">Lorem ipsum dolor</td>
                                         <td><button class="uk-button uk-button-default" type="button">DELETE</button>
                                         </td>
                                     </tr>
                                 </tbody>
                             </table>
                             <br>

                         </div>
                     </div>
                 </div>
             </div>
         </div>
        </div>
=
         <div class="col-md-4">
             <div class="text-center  new-bt">
                 <a href="jobpage.html" class="btn btn-primary">SUBMIT APPLICATION</a>
             </div>
         </div>
      </fieldset>
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