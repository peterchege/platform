var room = 1;
var cert = 1;

// WORK EXPERIENCE

// ADD FUNCTION
function add_fields() {
    room++;
    var objTo = document.getElementById('room_fileds')
    var divtest = document.createElement("div");
    divtest.innerHTML = '<hr><div><h3>WORK EXPERIENCE ' + room + '</h3><div class="row"><div class="col-md-6"><div class="form-group"><label id="label-1"><span class="icon_star">&#10040;</span>EMPLOYER/COMPANY</label><input type="text" class="form-control my-input" name="COMPANY" placeholder=""></div></div><div class="col-md-6"><div class="form-group"><label for="exampleInputEmail1"><span class="icon_star">&#10040;</span>TITLE/POSITION</label><input type="text" name="POSITION" class="form-control my-input" placeholder=""></div></div></div><div class="row empl"><div class="col-md-4"><div class="form-group"><label id="label-1"><span class="icon_star">&#10040;</span>START DATE</label><input type="date" name="lastname" class="form-control my-input" placeholder=""></div></div><div class="col-md-4"><div class="form-group"><label for="exampleInputEmail1"><span class="icon_star">&#10040;</span>END DATE</label><input type="date" name="lastname" class="form-control my-input" placeholder=""></div></div><div class="col-md-4"><div class="form-group form-check Check-box1"><input type="checkbox" class="form-check-input" id="exampleCheck1"><label class="form-check-label" for="exampleCheck1">CURRENT JOB</label></div></div></div><div class="row empl"><div class="col-12"><div class="form-group"><label>ACHIEVEMENT</label><textarea type="text" name="comment" class="form-control my-input" ></textarea></div></div></div><h3 id="remove_field" class="dup-text1" onclick="remove_fields();">Remove work experience</h3></div>';

    objTo.appendChild(divtest)
}

//REMOVE FUNCRION
function remove_field() {
    // Removes an element from the document
    var objTo = document.getElementById('remove_field');
    objTo.parentNode.removeChild(divtest);
}


// EDUCATION QUALIFICATION

// ADD FUNCTION
function add_education() {
    room++;
    var objTo = document.getElementById('education_fileds')
    var divtest = document.createElement("div");
    divtest.innerHTML = '<hr><div id="education_fileds"><h3>EDUCATION  ' + room + '</h3><div class="row"><div class="col-md-12"><div class="form-group"><label id="label-1">INSTITUTION</label><input type="text" class="form-control my-input" name="institution[]" placeholder=""> </div></div><br><div class="col-md-12"><div class="form-group"><label for="exampleInputEmail1">PROGRAM</label><input type="text" name="program[]" class="form-control my-input" placeholder=""></div></div><br><div class="col-md-12"><div class="form-group"><label for="exampleFormControlSelect1">EDUCATION LEVEL</label><select class="form-control my-input" name="education_level[]" ><option>NOT SPECIFIED</option><option>NONE</option><option>KCPE</option><option>KCSE</option><option>HIGH SCHOOL DIPLOMA</option><option>TECHNICAL DIPLOMA</option><option>COLLEGE DIPLOMA</option><option>NON-DEGREE PROGRAM</option><option>BACHELORS DEGREE</option><option>MASTER DEGREE</option><option>DOCTORATE DEGREE</option><option>HIGHER DEGREE</option><option>OTHER</option></select></div></div></div><div class="row empl"><div class="col-md-4"><div class="form-group"><label id="label-1">START DATE</label><input type="date" name="start_date_education[]" class="form-control my-input" placeholder=""></div></div><div class="col-md-4"><div class="form-group"><label for="exampleInputEmail1">GRADUATION DATE</label><input type="date" name="graduation_date[]" class="form-control my-input" placeholder=""></div></div><div class="col-md-4"><div class="form-group form-check Check-box1"><input type="checkbox" class="form-check-input" name="anticipating_graduation[]"><label class="form-check-label" for="exampleCheck1">ANTICIPATED GRADUATION DATE</label></div></div></div><h3 id="remove_field" class="dup-text1" onclick="remove_education();">Remove Education</h3></div>';
    objTo.appendChild(divtest)
}


// CERTIFICATE AND LICENSE

// add FUNCTION
function add_certificate() {
    cert++;
    var objTo = document.getElementById('certification_fileds')
    var divtest = document.createElement("div");
    divtest.innerHTML = '<div id="certification_fileds"><h3>CERTIFICATE ' + cert + '</h3><div class="row"><div class="col-md-12"><div class="form-group"><label id="label-1">CERTIFICATE</label><input type="text" class="form-control my-input" name="institution[]"placeholder=""></div></div></div><div class="row empl"><div class="col-md-8"><div class="form-group"><label for="exampleInputEmail1">ISSUING ORGANIZATION</label><input type="text" name="issue_org[]" class="form-control my-input"placeholder=""></div></div><div class="col-md-4"><div class="form-group"><label for="exampleInputEmail1">NUMBER/ID</label><input type="text" name="nmber_id[]" class="form-control my-input"placeholder=""></div></div></div><div class="row empl"><div class="col-md-6"><div class="form-group"><label id="label-1">ISSUE DATE</label><input type="date" name="start_date_education[]"class="form-control my-input" placeholder=""></div></div><div class="col-md-6"><div class="form-group"><label for="exampleInputEmail1">EXPIRATION DATE</label><input type="date" name="graduation_date[]"class="form-control my-input" placeholder=""></div></div></div><br><small><i>If this certification will be received in the future, enter the expected issuing date</i></small><h3 id="remove_field" class="dup-text2" onclick="remove_certificate();">Remove Certificate</h3><hr><h3 id="more_fields" class="dup-text" onclick="add_certificate();">Add Certificate</h3><br></div>';
    objTo.appendChild(divtest)
}