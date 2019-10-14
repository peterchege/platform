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
                    swal.fire('SUCCESS', 'We have received your claim. One of our customer care agents will contact you.', 'success');
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