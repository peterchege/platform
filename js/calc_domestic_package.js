$(document).ready(function () {
    $('.total').html('<p> 0 /year</p>');

    $('#calculate').on('click', refreshTotal);

    function refreshTotal(e) {
        e.preventDefault();
        var building_value = +$('input[name="building_value"]', '#form').val();
        var content_value = +$('input[name="building_value"]', '#form').val();
        var all_risk = +$('input[name="building_value"]', '#form').val();
        var domesti_employee = +$('input[name="building_value"]', '#form').val();

        var selected = $('#property').children('option:selected').val();

        if (selected == 'owner') {
            var section = $('#section').children('option:selected').val();
            console.log(section);
            if (section == "Building") {
                if (isNaN(building_value)) building_value = 0;
                total = 0.0015 * building_value;
            } else if (section == "Content") {
                if (isNaN(content_value)) content_value = 0;
                total = 0.01 * content_value;
            } else if (section == "All Risk") {
                if (isNaN(all_risk)) all_risk = 0;
                total = 0.015 * all_risk;
            } else if (section == "Domestic Employee") {
                if (isNaN(domestic_employee)) domestic_employee = 0;
                total = 0.02253 * domestic_employee;
            } else {
                alert("Please choose section!");
            }
        } else if (selected == 'tenant') {
            console.log(selected);
        } else {
            alert("Please choose property type!");
        }

        console.log(building_value);
        $('.total').html('<p>' + total + '</p>');
    }
});