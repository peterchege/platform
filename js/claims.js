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
                $('.btn').attr("disabled", true).html('Processing');
            },
            success: function (response) {
                if (response.message == 'success') {
                    swal.fire({
                        title: '<h3 style="color:#0C4DA2; font-family: "Oswald", sans-serif; " >SUCCESSFULLY RECEIVED</h3>',
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
                    swal.fire({
                        title: '<h3 style="color:#0C4DA2; font-family: "Oswald", sans-serif; " >SUCCESSFULLY RECEIVED</h3>',
                        html: '<p class="text-left" >' + response.message + '</p>',
                        type: 'error',
                        allowOutsideClick: false,
                        showCloseButton: true,
                        focusConfirm: false,
                        confirmButtonText: 'Ok!'
                    });
                }
                $('.btn').attr("disabled", false).html('INITIATE CLAIM');
            }
        });
    });
    $('.life-group-claim-form').parsley();
    $('.life-group-claim-form').on('submit', function (e) {
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
                $('.btn').attr("disabled", true).html('Processing');
            },
            success: function (response) {
                if (response.message == 'success') {
                    swal.fire({
                        title: '<h3 style="color:#0C4DA2; font-family: "Oswald", sans-serif; " >SUCCESSFULLY RECEIVED</h3>',
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
                    swal.fire({
                        title: '<h3 style="color:#0C4DA2; font-family: "Oswald", sans-serif; " >EROR OCCURRED</h3>',
                        html: '<p class="text-left" >' + response.message + '</p>',
                        type: 'error',
                        allowOutsideClick: false,
                        showCloseButton: true,
                        focusConfirm: false,
                        confirmButtonText: 'Ok!'
                    });
                }
                $('.btn').attr("disabled", false).html('INITIATE CLAIM');
            }
        });
    });
    $('.life-personal-property-claim-form').parsley();
    $('.life-personal-property-claim-form').on('submit', function (e) {
        e.preventDefault();
        var form = $(this);
        $.ajax({
            type: "POST",
            url: "ajax/claims.php?request=life_personal_property_claim",
            data: new FormData(this),
            dataType: 'JSON',
            processData: false,
            contentType: false,
            beforeSend: function () {
                $('.btn').attr("disabled", true).html('Processing');
            },
            success: function (response) {
                if (response.message == 'success') {
                    swal.fire({
                        title: '<h3 style="color:#0C4DA2; font-family: "Oswald", sans-serif; " >SUCCESSFULLY RECEIVED</h3>',
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
                    swal.fire({
                        title: '<h3 style="color:#0C4DA2; font-family: "Oswald", sans-serif; " >SUCCESSFULLY RECEIVED</h3>',
                        html: '<p class="text-left" >' + response.message + '</p>',
                        type: 'error',
                        allowOutsideClick: false,
                        showCloseButton: true,
                        focusConfirm: false,
                        confirmButtonText: 'Ok!'
                    });
                }
                $('.btn').attr("disabled", false).html('INITIATE CLAIM');
            }
        });
    });
    $('.form').parsley();
    $('.form').on('submit', function (e) {
        e.preventDefault();
        var form = $(this);
        var pdf = $(this).find('input[type=hidden]:last').val();

        if (pdf == 'windscreen') {
            var claim_form = 'pdf/claim/Windscreen CLM_FRM.pdf';
        } else if (pdf == 'accident') {
            var claim_form = 'pdf/claim/motor_claim_form.pdf';
        } else if (pdf == 'theft') {
            var claim_form = 'pdf/claim/motor_claim_form.pdf';
        } else {
            var claim_form = '';
        }

        //sweet alert content
        var claim_type = $('input[name=claim_type]').val();
        switch (claim_type) {
            case 'accident':
            case 'personal accident':
            case 'windscreen':
                var sweet_alert = '<p class="text-left">Thank you for providing us with details of your claim. One of our agents will contact you shortly to guide you through the process. <br><br>  To help us process your claim faster, please download and complete the claim form and prepare the following documentation:' +
                    +'<ol class="text-left"><li>Claim form (<a href="' +
                    claim_form +
                    '">Click here to download</a>)</li><li>Police Abstract</li><li>Copy of Driving License</li><li>Copy of the Log Book </li><li>Detailed statement and sketch of the circumstances of the accident</li></ol></p>';
                break;
            case 'property damage':

                break;
            case 'wiba':

                break;
            case 'personal accident':
                var claim_form2 = 'pdf/claim/GPA CLAIM FORM.pdf';
                var sweet_alert = '<p class="text-left">Thank you for providing us with details of your claim. One of our agents will contact you shortly to guide you through the process. <br><br>  To help us process your claim faster, please download and complete the claim form and prepare the following documentation: ' +
                    ' <ol class="text-left">' +
                    '<li>Claim form (<a href="' + claim_form2 + '">Click here to download</a>)</li>' +
                    '<li>Document 1</li>' +
                    '<li>Document2</li>' +
                    '<li>Document3 </li>' +
                    '<li>Document4...</li>' +
                    '</ol></p>';

                break;
            default:
                break;
        }
        $.ajax({
            type: "POST",
            url: "ajax/claims.php?request=claim_report",
            data: new FormData(this),
            dataType: 'json',
            contentType: false,
            cache: false,
            processData: false,
            beforeSend: function () {
                form.find('button[name=request]').attr('disabled', true).html('Processing...');
                //$('button[name=request]').attr('disabled', true);
            },
            success: function (response) {
                if (response.status == 1) {
                    form[0].reset();
                    $(".uk-close-large").click()
                    swal.fire({
                        title: 'Submitted Successfully.',
                        type: 'success',
                        html: sweet_alert,
                        showCloseButton: true,
                        showCancelButton: false,
                        allowOutsideClick: false,
                        focusConfirm: false,
                        confirmButtonText: '<i class="fa fa-thumbs-up"></i> Ok!',
                        confirmButtonAriaLabel: 'Thumbs up, great!',
                    });
                } else if (response.status == 0) {
                    Swal.fire({
                        type: 'error',
                        title: response.message,
                        //text: 'Something went wrong!',
                    })
                } else {
                    Swal.fire({
                        type: 'error',
                        title: 'An error occurred!',
                        //text: 'Something went wrong!',
                    })
                }
                form.find('button[name=request]').attr('disabled', true).html('INITIATE CLAIM');
                $('button[name=request]').attr('disabled', false);
            }
        });
    });

    $('.motor-claim-upload').parsley();
    $('.motor-claim-upload').on('submit', function (e) {
        e.preventDefault();
        var form = $(this);
        $.ajax({
            type: "POST",
            url: "ajax/claims.php?request=motor_claim_upload",
            data: new FormData(this),
            dataType: "json",
            contentType: false,
            cache: false,
            processData: false,
            beforeSend: function () {
                form.find('button[name=request_upload]').attr('disabled', true).html('Processing...');
            },
            success: function (response) {
                if (response.status == 1) {
                    form[0].reset();
                    $(".uk-close-large").click()
                    swal.fire({
                        title: 'Submitted Successfully.',
                        type: 'success',
                        html: '<p class="text-left">Thank you for providing us with details of your claim. One of our agents will contact you shortly to guide you through the process. <br><br> ',
                        showCloseButton: true,
                        showCancelButton: false,
                        allowOutsideClick: false,
                        focusConfirm: false,
                        confirmButtonText: '<i class="fa fa-thumbs-up"></i> Ok!',
                        confirmButtonAriaLabel: 'Thumbs up, great!',
                    });
                } else if (response.status == 0) {
                    Swal.fire({
                        type: 'error',
                        title: response.message,
                        //text: 'Something went wrong!',
                    })
                } else {
                    Swal.fire({
                        type: 'error',
                        title: 'An error occurred!',
                        //text: 'Something went wrong!',
                    })
                }
                form.find('button[name=request_upload]').attr('disabled', true).html('INITIATE CLAIM');
                $('button[name=request_upload]').attr('disabled', false);
            }
        });
    })
});