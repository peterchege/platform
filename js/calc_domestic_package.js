$(document).ready(function () {
    $('.total').html('<p> 0 /year</p>');

    $('#calculate').on('click', refreshTotal);

    function refreshTotal(e) {
        e.preventDefault();
        var building_value = +$('input[name="building_value"]', '#form').val();
        var content_value = +$('input[name="building_value"]', '#form').val();

        var selected = $('#property').children('option:selected').val();

        if (selected == 'owner') {
            var section = $('#section').children('option:selected').val();
            console.log(section);
            if (section == "Building") {
                if (isNaN(building_value)) building_value = 0;
                total = 0.0015 * building_value;
            }
            if (section == "Content") {
                if (isNaN(content_value)) content_value = 0;
                total = 0.01 * content_value;
            }
            if (section == "All Risk") {

            }
            if (section == "Domestic Employee") {

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