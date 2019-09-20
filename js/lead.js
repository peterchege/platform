$(document).ready(function () {
    $('#form').parsley();

    $('#form').on('submit', function (e) {
        e.preventDefault();
        var full_name = $('#full_name').val();
        var phone = $('#phone').val();
        var email = $('#email').val();
        var location = $('#location').val();
        var make = $('#make').val();
        var model = $('#model').val();
        var value = $('input[name="value"]').val();
        var value = numeral(value).value();
        var yom = $('#yom').val();
        var more_info = $('#more_info').val();
        var product_id = $('#product_id').val();
        var product_category_id = $('#product_category_id').val();
        //travel
        var depature_date = $('#depature_date').val();
        var return_date = $('#return_date').val();
        var destination = $('#destination').val();
        //domestic
        var property = $('#property').find(':selected').val();
        var cover = $('#cover').find(':selected').val();

        //golfers and theft
        if ($('#occupation').find(':selected').val() != undefined) {
            occupation = $('#occupation').find(':selected').val()
        } else {
            occupation = $('#occupation').val();
        }


        //pet and bonds
        var type = $('#type').find(':selected').val();
        var pet_number = $('input[name="pet_number"]').val();
        var pet_number = numeral(pet_number).value();

        //corporate health
        var population_staff = $('input[name="population_staff"]').val();
        var population_staff = numeral(population_staff).value();

        //aviation
        var max_take_off_weight = $('input[name="max_take_off_weight"]').val();
        var max_take_off_weight = numeral(max_take_off_weight).value();
        var geographical_scope = $('#geographical_scope').val();
        var pilot_details = $('input[name="pilot_details"]').val();
        var pilot_details = numeral(pilot_details).value();
        //theft
        //var occupation_theft = $('#occupation').val();

        var dataString = 'full_name=' + full_name + '&phone=' + phone + '&email=' + email + '&location=' + location + '&make=' + make + '&model=' + model + '&value=' + value + '&yom=' + yom + '&more_info=' + more_info + '&product_id=' + product_id + '&product_category_id=' + product_category_id + '&depature_date=' + depature_date + '&return_date=' + return_date + '&destination=' + destination + '&property=' + property + '&cover=' + cover + '&occupation=' + occupation + '&pet_number=' + pet_number + '&type=' + type + '&population_staff=' + population_staff + '&max_take_off_weight=' + max_take_off_weight + '&geographical_scope=' + geographical_scope + '&pilot_details=' + pilot_details;

        $.ajax({
            type: "POST",
            url: "ajax/leads.php?mode=lead",
            data: dataString,
            dataType: 'text',
            success: function (response) {
                if (response == 'success') {
                    swal.fire('SUCCESS', 'Thank you for your interest in our product. One of our customer care agents will contact you.', response)
                    $('#form')[0].reset();
                    //$('#modal-full').toggle();
                    $("#modal-full .uk-close-large").click()

                } else {
                    swal.fire('ERROR', 'An error occurred. Please try again.', response);
                }
            }
        });

    });


    $('#value, .value').keyup(function (event) {
        // skip for arrow keys
        if (event.which >= 37 && event.which <= 40) return;

        // format number
        $(this).val(function (index, value) {
            return value
                .replace(/\D/g, "")
                .replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        });
    });
});