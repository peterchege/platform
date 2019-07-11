$(document).ready(function () {
    $('.total').text('Total: ksh. 0 /year');

    $('#calculate').on('click', refreshTotal);

    function refreshTotal(e) {
        e.preventDefault();
        alert('lets do this');
    }
});