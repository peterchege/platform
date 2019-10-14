$(document).ready(function () {
    $('.life-claim-form').parsley();
    $('.life-claim-form').on('submit', function (e) {
        e.preventDefault();
        var form = $(this);
        $.ajax({
            type: "POST",
            url: "ajax/claims.php?request=life_claim",
            data: new FormData(this),
            processData: false,
            contentType: false,
            beforeSend: function () {
                $('.btn').attr("disabled", true);
            },
            success: function (response) {
                alert(response);
                $('.btn').attr("disabled", false);
            }
        });
    });
});