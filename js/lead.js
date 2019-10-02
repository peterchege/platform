$(document).ready(function () {
    $('#form,#form-mp,#form-jp,#form-tl,#form-cl,#form-ll,#form-dp').parsley();

    $('#form,#form-mp,#form-jp,#form-tl,#form-cl,#form-ll,#form-dp').on('submit', function (e) {
        e.preventDefault();
        $.ajax({
            type: "POST",
            url: "ajax/leads.php?mode=lead",
            data: new FormData(this),
            dataType: 'text',
            processData: false,
            cache: false,
            contentType: false,
            beforeSend: function () {
                $('.btn').attr("disabled", true);
            },
            success: function (response) {
                if (response == 'success') {
                    swal.fire('SUCCESS', 'Thank you for your interest in our product. One of our customer care agents will contact you.', response)
                    $('#form,#form-mp,#form-jp,#form-tl,#form-cl,#form-ll,#form-dp').trigger('reset');
                    $(".uk-close-large").click()

                } else {
                    swal.fire('ERROR', 'An error occurred. Please try again.', response);

                }
                $('.btn').attr("disabled", false);
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

    $('.type-pet').multiselect({
        nonSelectedText: 'Select pet type',
        enableFiltering: false,
        enableCaseInsensitiveFiltering: false,
        buttonWidth: '100%'
    });
});