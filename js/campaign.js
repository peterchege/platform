$(document).ready(function () {
    $('.campaign-form').parsley();
    $('.campaign-form').on('submit', function (e) {
        e.preventDefault();
        var buttonClicked = $('.campaign-submit-button');
        var form = $('.campaign-form');
        $.ajax({
            type: "POST",
            url: "ajax/campaign.php?mode=campaign",
            data: new FormData(this),
            dataType: "json",
            processData: false,
            cache: false,
            contentType: false,
            beforeSend: function () {
                buttonClicked.attr("disabled", true).html('Processing');
            },
            success: function (response) {
                if (response.status === 1) {
                    swal.fire({
                        title: '<h3 style="color:#0C4DA2; font-family: "Oswald", sans-serif; " >SUCCESS</h3>',
                        html: '<p class="text-left" >Thank you for your interest. One of our customer care agents will contact you.</p>',
                        type: 'success',
                        allowOutsideClick: false,
                        showCloseButton: true,
                        focusConfirm: false,
                        confirmButtonText: '<i class="fa fa-thumbs-up"></i> Ok!',
                        confirmButtonAriaLabel: 'Thumbs up, great!',
                    });
                    form.trigger('reset');
                } else {
                    swal.fire({
                        title: '<h3 style="color:#0C4DA2; font-family: "Oswald", sans-serif; " >ERROR</h3>',
                        html: '<p class="text-left" >An error occurred. Please try again.</p>',
                        type: 'error',
                        allowOutsideClick: false,
                        showCloseButton: true,
                        focusConfirm: false,
                        confirmButtonText: 'Ok!',
                    });
                }
                buttonClicked.attr("disabled", false).html('SUBMIT ' + '&nbsp;<i class="fas fa-paper-plane">');
            }
        });
    })

});