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
            cache: false,
            contentType: false,
            beforeSend: function () {
                $('.btn').attr("disabled", true).html('Processing');
            },
            success: function (response) {
                if (response.status == 1) {
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
                        title: '<h3 style="color:#0C4DA2; font-family: "Oswald", sans-serif; " >Error</h3>',
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
            cache: false,
            contentType: false,
            beforeSend: function () {
                $('.btn').attr("disabled", true).html('Processing');
            },
            success: function (response) {
                if (response.status == 1) {
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
            cache: false,
            contentType: false,
            beforeSend: function () {
                $('.btn').attr("disabled", true).html('Processing');
            },
            success: function (response) {
                if (response.status == '1') {
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
                        title: '<h3 style="color:#0C4DA2; font-family: "Oswald", sans-serif; " >Error</h3>',
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
        var pdf = $(this).find('input[name="claim_type"]').val();

        if (pdf == 'windscreen') {
            var claim_form = 'pdf/claim/Windscreen CLM_FRM.pdf';
        } else if (pdf == 'accident') {
            var claim_form = 'pdf/claim/motor_claim_form.pdf';
        } else if (pdf == 'theft') {
            var claim_form = 'pdf/claim/motor_claim_form.pdf';
        } else if (pdf == 'hospital cash') {
            var claim_form = '';
        } else if (pdf == 'last expense') {
            var claim_form = '';
        } else if (pdf == 'critical illness') {
            var claim_form = '';
        } else if (pdf == 'death') {
            var claim_form = '';
        } else if (pdf == 'maturity') {
            var claim_form = '';
        } else if (pdf == 'partial maturity') {
            var claim_form = '';
        } else {
            var claim_form = '';
        }

        //sweet alert content
        var claim_type = $('input[name=claim_type]').val();
        switch (claim_type) {
            case 'hospital cash':
                var sweet_alert = '<p class="text-left">Thank you for providing us with details of your claim. One of our agents will contact you shortly to guide you through the process. <br><br>  To help us process your claim faster, please download and complete the claim form and prepare the following documentation:' +
                    '<ol class="text-left">' +
                    '<li>Claim form (<a href="' + claim_form + '">Click here to download</a>)</li>' +
                    '</ol></p>';
                break;
            case 'last expense':
                var sweet_alert = '<p class="text-left">Thank you for providing us with details of your claim. One of our agents will contact you shortly to guide you through the process. <br><br>  To help us process your claim faster, please download and complete the claim form and prepare the following documentation:' +
                    '<ol class="text-left">' +
                    '<li>Claim form (<a href="' + claim_form + '">Click here to download</a>)</li>' +
                    '</ol></p>';
                break;
            case 'critical illness':
                var sweet_alert = '<p class="text-left">Thank you for providing us with details of your claim. One of our agents will contact you shortly to guide you through the process. <br><br>  To help us process your claim faster, please download and complete the claim form and prepare the following documentation:' +
                    '<ol class="text-left">' +
                    '<li>Claim form (<a href="' + claim_form + '">Click here to download</a>)</li>' +
                    '</ol></p>';
                break;
            case 'death':
                var sweet_alert = '<p class="text-left">Thank you for providing us with details of your claim. One of our agents will contact you shortly to guide you through the process. <br><br>  To help us process your claim faster, please download and complete the claim form and prepare the following documentation:' +
                    '<ol class="text-left">' +
                    '<li>Claim form (<a href="' + claim_form + '">Click here to download</a>)</li>' +
                    '</ol></p>';
                break;
            case 'maturity':
                var sweet_alert = '<p class="text-left">Thank you for providing us with details of your claim. One of our agents will contact you shortly to guide you through the process. <br><br>  To help us process your claim faster, please download and complete the claim form and prepare the following documentation:' +
                    '<ol class="text-left">' +
                    '<li>Claim form (<a href="' + claim_form + '">Click here to download</a>)</li>' +
                    '</ol></p>';
                break;
            case 'partial maturity':
                var sweet_alert = '<p class="text-left">Thank you for providing us with details of your claim. One of our agents will contact you shortly to guide you through the process. <br><br>  To help us process your claim faster, please download and complete the claim form and prepare the following documentation:' +
                    '<ol class="text-left">' +
                    '<li>Claim form (<a href="' + claim_form + '">Click here to download</a>)</li>' +
                    '</ol></p>';
                break;
            case 'accident':
                var sweet_alert = '<p class="text-left">Thank you for providing us with details of your claim. One of our agents will contact you shortly to guide you through the process. <br><br>  To help us process your claim faster, please download and complete the claim form and prepare the following documentation:' +
                    '<ol class="text-left">' +
                    '<li>Claim form (<a href="' + claim_form + '">Click here to download</a>)</li>' +
                    '<li>Police Abstract.</li>' +
                    '<li>Copy of Driving License.</li>' +
                    '<li>Copy of the Log Book .</li>' +
                    '<li>Photos of the accident scene.</li>' +
                    '</ol></p>';
                break;
            case 'theft':
                var sweet_alert = '<p class="text-left">Thank you for providing us with details of your claim. One of our agents will contact you shortly to guide you through the process. <br><br>  To help us process your claim faster, please download and complete the claim form and prepare the following documentation:' +
                    '<ol class="text-left">' +
                    '<li>Claim form (<a href="' + claim_form + '">Click here to download</a>).</li>' +
                    '<li>Police Abstract.</li>' +
                    '<li>Copy of the Log Book .</li>' +
                    '<li>Detailed statement and sketch of the circumstance of the accident. .</li>' +
                    '</ol></p>';
                break;
            case 'windscreen':
                var sweet_alert = '<p class="text-left">Thank you for providing us with details of your claim. One of our agents will contact you shortly to guide you through the process. <br><br>  To help us process your claim faster, please download and complete the claim form and prepare the following documentation:' +
                    '<ol class="text-left">' +
                    '<li>Claim form (<a href="' + claim_form + '">Click here to download</a>).</li>' +
                    '<li>Windscreen and whole vehicle photos.</li>' +
                    '<li>Police Abstract (Optional).</li>' +
                    '</ol></p>';
                break;
            case 'property damage':
                var claim_form2 = 'pdf/claim/GPA CLAIM FORM.pdf';
                var sweet_alert = '<p class="text-left">Thank you for providing us with details of your claim. One of our agents will contact you shortly to guide you through the process. <br><br>  To help us process your claim faster, please download and complete the claim form and prepare the following documentation: ' +
                    ' <ol class="text-left">' +
                    '<li>Claim form (<a href="' + claim_form2 + '">Click here to download</a>).</li>' +
                    '<li>Document 1.</li>' +
                    '<li>Document2.</li>' +
                    '<li>Document3 .</li>' +
                    '<li>Document4....</li>' +
                    '</ol></p>';
                break;
            case 'wiba':
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

            case 'livestock':
                var claim_form2 = 'pdf/claim/LIVESTOCK INSURANCE CLAIM FORM.pdf';
                var sweet_alert = '<p class="text-left">Thank you for providing us with details of your claim. One of our agents will contact you shortly to guide you through the process. <br><br>  To help us process your claim faster, please download and complete the claim form and prepare the following documentation: ' +
                    ' <ol class="text-left">' +
                    '<li>Claim form (<a href="' + claim_form2 + '">Click here to download</a>)</li>' +
                    '<li>Document 1</li>' +
                    '<li>Document2</li>' +
                    '<li>Document3 </li>' +
                    '<li>Document4...</li>' +
                    '</ol></p>';
                break;

            case 'crop':
                var claim_form2 = 'pdf/claim/LIVESTOCK INSURANCE CLAIM FORM.pdf';
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