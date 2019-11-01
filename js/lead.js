$(document).ready(function () {
    $('.form-container').parsley(); //in case of errors: #form,#form-mp,#form-jp,#form-tl,#form-cl,#form-ll,#form-dp
    //determining button text
    if ($('.form-container').length != 2) {
        $(document).find('.form-container').append('<input name="buttonText" type="hidden" value="SUBMIT" ></input>');
    } else {
        $(document).find('.form-container:first').append('<input name="buttonText" type="hidden" value="SUBMIT" ></input>');
        $(document).find('.form-container:last').append('<input name="buttonText" type="hidden" value="REQUEST ASSISTANCE" ></input>');
    }


    $('.form-container').on('submit', function (e) {
        e.preventDefault();
        var buttonClicked = $(this).find('button[name=request]');
        var buttonText = $(this).find('input[name=buttonText]').val();
        // alert($(this).position().top);
        $.ajax({
            type: "POST",
            url: "ajax/leads.php?mode=lead",
            data: new FormData(this),
            dataType: 'text',
            processData: false,
            cache: false,
            contentType: false,
            beforeSend: function () {
                buttonClicked.attr("disabled", true).html('Processing');
            },
            success: function (response) {
                if (response == 'success') {
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
                    $('#form,#form-mp,#form-jp,#form-tl,#form-cl,#form-ll,#form-dp').trigger('reset');
                    $(".uk-close-large").click()

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
                buttonClicked.attr("disabled", false).html(buttonText + '<i class="fas fa-paper-plane">');
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