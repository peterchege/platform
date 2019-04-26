var room = 1;

function add_fields() {
    room++;
    var objTo = document.getElementById('room_fileds')
    var divtest = document.createElement("div");
    divtest.innerHTML = '<hr><div><h3>WORK EXPERIENCE ' + room + '</h3><div class="row"><div class="col-md-6"><div class="form-group"><label id="label-1"><span class="icon_star">&#10040;</span>EMPLOYER/COMPANY</label><input type="text" class="form-control my-input" name="COMPANY" placeholder=""></div></div><div class="col-md-6"><div class="form-group"><label for="exampleInputEmail1"><span class="icon_star">&#10040;</span>TITLE/POSITION</label><input type="text" name="POSITION" class="form-control my-input" placeholder=""></div></div></div><div class="row empl"><div class="col-md-4"><div class="form-group"><label id="label-1"><span class="icon_star">&#10040;</span>START DATE</label><input type="date" name="lastname" class="form-control my-input" placeholder=""></div></div><div class="col-md-4"><div class="form-group"><label for="exampleInputEmail1"><span class="icon_star">&#10040;</span>END DATE</label><input type="date" name="lastname" class="form-control my-input" placeholder=""></div></div><div class="col-md-4"><div class="form-group form-check Check-box1"><input type="checkbox" class="form-check-input" id="exampleCheck1"><label class="form-check-label" for="exampleCheck1">CURRENT JOB</label></div></div></div><div class="row empl"><div class="col-12"><div class="form-group"><label>ACHIEVEMENT</label><textarea type="text" name="comment" class="form-control my-input" ></textarea></div></div></div><h3 id="remove_field" class="dup-text1" onclick="remove_fields();">Remove work experience</h3></div>';

    objTo.appendChild(divtest)
}

function remove_field() {
    // Removes an element from the document
    var objTo = document.getElementById('remove_field');
    objTo.parentNode.removeChild(divtest);
}