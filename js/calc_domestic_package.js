$(document).ready(function () {
    $('.total').html('<p> 0 /year</p>');
    $('#form').parsley();
    $('#form').on('submit', refreshTotal);
    // personal info validation
    function refreshTotal(e) {
        e.preventDefault();
        var building_value = $('input[name="building"]', '#form').val();
        var building_value = +numeral(building_value).value();
        if (isNaN(building_value)) building_value = 0;
        var content_value = $('input[name="content"]', '#form').val();
        var content_value = +numeral(content_value).value();
        if (isNaN(content_value)) content_value = 0;
        var all_risk = $('input[name="allrisk"]', '#form').val();
        var all_risk = +numeral(all_risk).value();
        if (isNaN(all_risk)) all_risk = 0;
        var domestic_value = $('input[name="domestic"]', '#form').val();
        var domestic_value = +numeral(domestic_value).value();
        if (isNaN(domestic_value)) domestic_value = 0;
        var liability_value = $('input[name="liability"]', '#form').val();
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
            premium = (0.0015 * building_value) + (0.01 * content_value) + (0.015 * all_risk) + (0.02253 * domestic_value) + (liability_value);
            total = premium + (0.002 * premium) + (0.0025 * premium) + 40;
            if (total) {
                var data = $('#form').serialize();
                $('html,body').animate({
                    scrollTop: $('.box-container1').offset().top - 200
                }, 1000);
            } else {
                swal.fire('Error', 'An unexpected error occurred! Please try again.', 'error');
            }
        }

        $('.total').html('<p class="total_amount" >' + numeral(total).format('0,0') + '/year</p>');

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

    //adding to cache
    $('#save_quote, #buy_now').click(function (e) {
        e.preventDefault();
        if ($('.total>.total_amount').length == 0) {
            swal.fire('Warning', 'Please perform a calculation!', 'info');
        } else {
            var form = $('#form');
            var data = form.serialize();
            var buttonClicked = $('button[name=buy_now]');
            $.ajax({
                type: "POST",
                url: "ajax/processor.php?mode=insert",
                dataType: 'json',
                data: data,
                beforeSend: function () {
                    buttonClicked.attr("disabled", true).html('Processing');
                },
                success: function (response) {
                    if (response.status == 1) {
                        //success sweet alert
                        swal.fire({
                            title: '<h3 style="color:#0C4DA2; font-family: "Oswald", sans-serif; " >SUCCESS</h3>',
                            html: '<p class="text-left" >Thank you for your interest in our product. One of our customer care agents will contact you.</p>',
                            type: 'success',
                            allowOutsideClick: false,
                            showCloseButton: true,
                            focusConfirm: false,
                            confirmButtonText: '<i class="fa fa-thumbs-up"></i> Ok!',
                            confirmButtonAriaLabel: 'Thumbs up, great!',
                        });
                        form.trigger('reset');
                    } else {
                        //error sweet alert
                        swal.fire({
                            title: '<h3 style="color:#0C4DA2; font-family: "Oswald", sans-serif; " >ERROR</h3>',
                            html: '<p class="text-left" >An error occurred. ' + response.message + ' </p>',
                            type: 'error',
                            allowOutsideClick: false,
                            showCloseButton: true,
                            focusConfirm: false,
                            confirmButtonText: 'Ok!',
                        });
                    }
                    buttonClicked.attr("disabled", false).html('BUY NOW');

                }
            });
            // get values
            /*var name = $('#name').val();
            var phone = $('#phone').val();
            var email = $('#email').val();
            var location = $('#location').val();


            var property = $('#property').find(':selected').val();

            var building_amount = numeral($('#building_amount').val()).value();
            var content_amount = numeral($('#content_amount').val()).value();
            var risk_amount = numeral($('#risk_amount').val()).value();
            var domestic_amount = numeral($('#domestic_amount').val()).value();
            var liability_amount = numeral($('#liability_amount').val()).value();*/

            //store to session
            /*sessionStorage.clear();
            sessionStorage.setItem('name', name);
            sessionStorage.setItem('phone', phone);
            sessionStorage.setItem('email', email);
            sessionStorage.setItem('location', location);
            sessionStorage.setItem('property', property);
            sessionStorage.setItem('building_amount', building_amount);
            sessionStorage.setItem('content_amount', content_amount);
            sessionStorage.setItem('risk_amount', risk_amount);
            sessionStorage.setItem('domestic_amount', domestic_amount);
            sessionStorage.setItem('liability_amount', liability_amount);
            sessionStorage.setItem('property', property);
            console.log(sessionStorage);*/
            //window.location = this.href;
        }
    });

});