$(document).ready(function () {
    $('.total').html('<p> 0 /year</p>');
    $('#form').parsley();
    $('#form').on('submit', refreshTotal);
    // personal info validation
    function refreshTotal(e) {
        e.preventDefault();
        var building_value = $('input[name="building_amount"]', '#form').val();
        var building_value = +numeral(building_value).value();
        if (isNaN(building_value)) building_value = 0;
        var content_value = $('input[name="content_amount"]', '#form').val();
        var content_value = +numeral(content_value).value();
        if (isNaN(content_value)) content_value = 0;
        var all_risk = $('input[name="risk_amount"]', '#form').val();
        var all_risk = +numeral(all_risk).value();
        if (isNaN(all_risk)) all_risk = 0;
        var domestic_value = $('input[name="domestic_amount"]', '#form').val();
        var domestic_value = +numeral(domestic_value).value();
        if (isNaN(domestic_value)) domestic_value = 0;
        var liability_value = $('input[name="liability_amount"]', '#form').val();
        var liability_value = +numeral(liability_value).value();
        if (isNaN(liability_value)) liability_value = 0;
        liability_value_unchanged = liability_value;
        if (liability_value > 500000) {
            liability_value = liability_value - 500000
            liability_value = 0.0005 * liability_value
        } else {
            liability_value = 0;
        }
        var errors = [];

        var total = '';
        if (all_risk > 0) {
            if (building_value == 0 && content_value == 0 && domestic_value == 0) {
                errors.push('all_risk');
                swal.fire('Error', 'All risk cover can\'t be the only cover you choose. Please add Building or Content Cover or both..', 'info');
            }
        }
        if (domestic_value > 0) {
            if (building_value == 0 && content_value == 0) {
                errors.push('dom');
                swal.fire('Warning', 'Domestic Employee cover can\'t be the only cover you choose. Please add Building or Content Cover or both..', 'info');
            }
        }
        // if (all_risk > 0 && domestic_value > 0) {
        //     if (building_value == 0 && content_value == 0) {
        //         errors.push('content')
        //         swal.fire('Error', 'You can\'t choose these two covers alone. Please add Building or Content Cover or both.', 'info');
        //     }
        // }
        if (building_value == 0 && content_value == 0 && domestic_value == 0 && all_risk == 0 && liability_value == 0) {
            errors.push('cover')
            swal.fire('Warning', 'Please choose a cover.', 'info');
        }
        if (liability_value > 0 || liability_value_unchanged > 0) {
            if (building_value == 0 && content_value == 0) {
                errors.push('liability')
                swal.fire('Warning', 'You can\'t choose liability cover alone. Please add Building or Content Cover or both.', 'info');
            }
        }
        if (errors.length == 0) {
            total = (0.0015 * building_value) + (0.01 * content_value) + (0.015 * all_risk) + (0.02253 * domestic_value) + (liability_value);
            if (total) {
                $.ajax({
                    type: "POST",
                    url: "ajax/processor.php?mode=insert",
                    data: $('#form').serialize(),
                    success: function (response) {

                    }
                });
                $('html,body').animate({
                        scrollTop: $('.box-container1').offset().top - 200
                    },
                    1000);
            } else {
                swal.fire('Error', 'An unexpected error occurred! Please try again.', 'error');
            }
        }

        $('.total').html('<p>' + numeral(total).format('0,0') + '/year</p>');

    }

    $('.row-section').hide();
    $(function () {
        $('#property').change(function () {
            $('.row-section').hide();
            $('.' + $(this).val()).show();
            $.each($('.row-section'), function () {
                if ($(this).is(':hidden')) {
                    $('.row-section input[type="text"]').val('');
                    $('.row-section input[type="checkbox"]').prop("checked", false);
                    $('.row-section input[type="text"],input[type="number"]').prop("disabled", true);
                }
            });
        });
    });

    var $form = $("#form");
    var $input = $form.find(".number-amount");
    $input.on("keyup", function (event) {
        // 1.
        var selection = window.getSelection().toString();
        if (selection !== '') {
            return;
        }
        // 2.
        if ($.inArray(event.keyCode, [38, 40, 37, 39]) !== -1) {
            return;
        }
        // 1
        var $this = $(this);
        var input = $this.val();
        // 2
        var input = input.replace(/[\D\s\._\-]+/g, "");
        // 3
        input = input ? parseInt(input, 10) : 0;
        // 4
        $this.val(function () {
            return (input === 0) ? "" : input.toLocaleString("en-US");
        });
    });

});