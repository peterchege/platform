$(document).ready(function () {
    $('.life-claim-form').parsley();
    $('.life-claim-form').on('submit', function (e) {
        e.preventDefault();
        var form = $(this);
        $.ajax({
            type: "POST",
            url: "ajax/claims.php?request=life_claim",
            data: new FormData(this),
            dataType: 'JSON',
            processData: false,
            contentType: false,
            beforeSend: function () {
                $('.btn').attr("disabled", true);
            },
            success: function (response) {
                if (response.message == 'success') {
                    swal.fire({
                        title: 'SUCCESS',
                        html: '<p class="text-left" >Thank you for providing us with details of your claim. One of our agents will contact you ' +
                            'shortly to guide you through the next process. ' +
                            '<br><br>' +
                            'For inquires or assistance you can contact us with the following mobile number: (+254) 70991277, O20 286 2000. ' +
                            'Or send an email to claims@apalife.co.ke' +
                            '</p>',
                        type: 'success',
                        allowOutsideClick: false,
                        showCloseButton: true,
                        focusConfirm: false,
                        confirmButtonText: '<i class="fa fa-thumbs-up"></i> Ok!',
                        confirmButtonAriaLabel: 'Thumbs up, great!',
                    });
                    form.trigger('reset');
                    $(".uk-close-large").click();
                } else {
                    swal.fire('ERROR', response.message, 'error');
                }
                $('.btn').attr("disabled", false);
            }
        });
    });

    $('.life-group-claim-form').parsley();
    $('.life-claim-form').on('submit', function (e) {
        e.preventDefault();
        var form = $(this);
        $.ajax({
            type: "POST",
            url: "ajax/claims.php?request=life_group_claim",
            data: new FormData(this),
            dataType: 'JSON',
            processData: false,
            contentType: false,
            beforeSend: function () {
                $('.btn').attr("disabled", true);
            },
            success: function (response) {
                if (response.message == 'success') {
                    swal.fire({
                        title: 'SUCCESS',
                        html: '<p class="text-left" >Thank you for providing us with details of your claim. One of our agents will contact you ' +
                            'shortly to guide you through the next process. ' +
                            '<br><br>' +
                            'For inquires or assistance you can contact us with the following mobile number: (+254) 70991277, O20 286 2000. ' +
                            'Or send an email to claims@apalife.co.ke' +
                            '</p>',
                        type: 'success',
                        allowOutsideClick: false,
                        showCloseButton: true,
                        focusConfirm: false,
                        confirmButtonText: '<i class="fa fa-thumbs-up"></i> Ok!',
                        confirmButtonAriaLabel: 'Thumbs up, great!',
                    });
                    form.trigger('reset');
                    $(".uk-close-large").click();
                } else {
                    swal.fire('ERROR', response.message, 'error');
                }
                $('.btn').attr("disabled", false);
            }
        });
    });
});