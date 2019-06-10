/*------------Validation Function-----------------*/
var count = 0; // To count blank fields.
function validation(event) {
    var radio_check = document.getElementsByName('gender'); // Fetching radio button by name.
    var input_field = document.getElementsByClassName('text_field'); // Fetching all inputs with same class name text_field and an html tag textarea.
    var text_area = document.getElementsByTagName('textarea');
    // Validating radio button.
    if (radio_check[0].checked == false && radio_check[1].checked == false) {
        var y = 0;
    } else {
        var y = 1;
    }
    // For loop to count blank inputs.
    for (var i = input_field.length; i > count; i--) {
        if (input_field[i - 1].value == '' || text_area.value == '') {
            count = count + 1;
        } else {
            count = 0; 
        }
    }
    if (count != 0 || y == 0) {
        alert("*All Fields are mandatory*"); // Notifying validation
        event.preventDefault();
    } else {
        return true;
    }
}
/*---------------------------------------------------------*/
// Function that executes on click of first next button.
function next_step1() {
    document.getElementById("first").style.display = "none";
    document.getElementById("second").style.display = "block";
    document.getElementById("active1").style.color = "#00ac00";
}
// Function that executes on click of first previous button.
function prev_step1() {
    document.getElementById("first").style.display = "block";
    document.getElementById("second").style.display = "none";
    document.getElementById("active1").style.color = "#00ac00";
    document.getElementById("active2").style.color = "gray";
}
// Function that executes on click of second next button.
function next_step2() {
    document.getElementById("second").style.display = "none";
    document.getElementById("third").style.display = "block";
    document.getElementById("active2").style.color = "#00ac00";
}
// Function that executes on click of second previous button.
function prev_step2() {
    document.getElementById("third").style.display = "none";
    document.getElementById("second").style.display = "block";
    document.getElementById("active2").style.color = "#00ac00";
    document.getElementById("active3").style.color = "gray";
}
// Function that executes on click of third next button.
function next_step3() {
    document.getElementById("third").style.display = "none";
    document.getElementById("fourth").style.display = "block";
    document.getElementById("active3").style.color = "#00ac00";
}
// Function that executes on click of second previous button.
function prev_step3() {
    document.getElementById("fourth").style.display = "none";
    document.getElementById("third").style.display = "block";
    document.getElementById("active2").style.color = "#00ac00";
    document.getElementById("active3").style.color = "gray";
}
// Function that executes on click of fourth next button.
function next_step4() {
    document.getElementById("fourth").style.display = "none";
    document.getElementById("fifth").style.display = "block";
    document.getElementById("active4").style.color = "#00ac00";
}
// Function that executes on click of fourth previous button.
function prev_step4() {
    document.getElementById("fifth").style.display = "none";
    document.getElementById("fourth").style.display = "block";
    document.getElementById("active2").style.color = "#00ac00";
    document.getElementById("active3").style.color = "gray";
}


// Progress navbar class
// Get the container element
// var btnContainer = document.getElementById("progressbar");

// // Get all buttons with class="btn" inside the container
// var btns = btnContainer.getElementsByClassName("act");

// // Loop through the buttons and add the active class to the current/clicked button
// for (var i = 0; i < btns.length; i++) {
//     btns[i].addEventListener("click", function () {
//         var current = document.getElementsByClassName("active");
//         current[0].className = current[0].className.replace(" active", "");
//         this.className += " active";
//     });
// }


// var a = document.querySelectorAll(".nav-list");
// for (var i = 0, length = a.length; i < length; i++) {
//     a[i].onclick = function () {
//         var b = document.querySelector(".nav-list li.active");
//         if (b) b.classList.remove("active");
//         this.parentNode.classList.add('active');
//     };
// }