$(document).ready(function () {
    $('.campaign-form').parsley();
    $('.campaign-form').on('submit', function (e) {
        e.preventDefault();
        $.ajax({
            type: "POST",
            url: "ajax/campaign.php?mode=campaign",
            data: new FormData(this),
            dataType: "json",
            processData: false,
            cache: false,
            contentType: false,
            beforeSend: function () {
                alert('be4 send');
            },
            success: function (response) {
                if (response.status === 1) {
                    alert('success');
                } else {
                    alert('error')
                }
            }
        });
    })

});