$('input[name="firstname"]').on('keymove', function () {
    $('input[name="firstname_summary"]').val($(this).val());
});


$('input[name="DOB"]').change(function () {
    $('input[name="DOB_summary"]').val($(this).val());
});