$(document).ready(function () {
    $('.total').html('<p> 0 /year</p>');

    $('#calculate').on('click', refreshTotal);

    function refreshTotal(e) {
        e.preventDefault();
        var building_value = +$('input[name="building_value"]', '#form').val();

        var selected = $('#inputState').children('option:selected').val();

        if (selected == 'owner') {
            if (isNaN(building_value)) building_value = 0;
            var building_value = 0.0015 * building_value;

        } else if (selected == 'tenant') {
            console.log(selected);
        } else {
            alert("Please choose property type!");
        }



        console.log(building_value);

        $('.total').html('<p>' + building_value + '</p>');
    }
});