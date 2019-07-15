$(document).ready(function () {
    $('.total').html('<p> 0 /year</p>');

    $('#calculate').on('click', refreshTotal);

    function refreshTotal(e) {
        e.preventDefault();
        var building_value = $('input[name="building_value"]', '#form').val();
        var building_value = +numeral(building_value).value();
        console.log(building_value);
        var content_value = +$('input[name="building_value"]', '#form').val();
        var all_risk = +$('input[name="building_value"]', '#form').val();
        var domestic_employee = +$('input[name="building_value"]', '#form').val();
        var tenant_value = +$('input[name="building_value"]', '#form').val();

        var selected = $('#property').children('option:selected').val();
        var total = '';

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
            var section = $('#section').children('option:selected').val();
            if (section == "Content") {
                if (isNaN(tenant_value)) tenant_value = 0;
                total = 0.01 * tenant_value;
            } else if (section == "All Risk") {
                if (isNaN(tenant_value)) tenant_value = 0;
                total = 0.0015 * tenant_value;
            } else if (section == "Domestic Employee") {
                if (isNaN(tenant_value)) tenant_value = 0;
                total = 0.02253 * tenant_value;
            } else {
                alert("Please choose section!");
            }

        } else {
            alert("Please choose property type!");
        }

        $('.total').html('<p>' + numeral(total).format('0,0') + '</p>');
        if (total) {
            $('html,body').animate({
                    scrollTop: $('.box-container1').offset().top
                },
                1000);
        }
    }
});
$('.row-section').hide();
$(function () {
    $('#property').change(function () {
        $('.row-section').hide();
        $('.' + $(this).val()).show();
    });
});