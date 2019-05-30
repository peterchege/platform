var room = 1;

function add_fields() {
    room++;
    var objTo = document.getElementById('room_fileds')
    var divtest = document.createElement("div");
    divtest.innerHTML = '<div class="label">Room ' + room + ':</div><div class="content"><span>Width: <input type="text" style="width:48px;" name="width[]" value="" /><small>(ft)</small> X</span><span>Length: <input type="text" style="width:48px;" name="length[]" value="" /><small>(ft)</small></span></div>';

    objTo.appendChild(divtest)
}

