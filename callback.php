<?php
require_once 'inc/db.php';
require_once 'inc/functions.php';
require_once 'inc/sessions.php';

?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>APA INSURANCE</title>
    <link rel="stylesheet" href="css/career.css" media="screen">
    <link rel="stylesheet" href="css/customer.css" media="screen">
    <link rel="stylesheet" href="css/parsley.css" media="screen">


    <?php include 'views/head_links.php'; ?>

</head>

<body>
    <!-- ==============HEADER=============== -->

    <?php include 'views/nav.php'; ?>


    <!-- ===================================== INTERNSHIP PAGE ===================================== -->

    <div class="container">
        <div class="apollo">
            <?php
            echo errorMessage();
            echo successMessage();
            ?>
            <br>
            <h1>Request Callback</h1>
            <div class="under-line img7">
                <img src="images/line.png" alt="">
            </div>
            <p class="container content-offer text-left"> Schedule a call on the form below and one fo our customer service
                agent will get back to you shortly.
            </p>

        </div>

    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-6 Call-back">

            </div>

            <div class="col-md-6">
                <div class="customer-login1">
                    <h2> Fill in the following form :</h2>
                    <form id="internship_form" method="POST" action="<?php echo $_SERVER['PHP_SELF'] ?>" enctype="multipart/form-data" class="customer-form intern-form">

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="first_name">First Name</label>
                                    <input name="first_name" type="text" class="form-control" id="first_name" aria-describedby="" placeholder="e.g john" required>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="last_name">Last Name</label>
                                    <input name="last_name" type="text" class="form-control" id="last_name" aria-describedby="" placeholder="e.g doe" required>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="email">Email address</label>
                                    <input name="email" type="email" class="form-control" id="email" aria-describedby="" placeholder="e.g john@gmail.com" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="phone">Phone Number</label>
                                    <input name="phone" type="tel" class="form-control" id="phone" placeholder="0712 xxx xxx" required>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="email">Date</label>
                                    <input name="date" type="date" class="form-control" id="email" aria-describedby="" placeholder="e.g john@gmail.com" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="phone">Time</label>
                                    <input name="Time" type="time" class="form-control" id="phone" placeholder="0712 xxx xxx" required>
                                </div>
                            </div>
                        </div>



                        <div class="customer-btn">
                            <div class="row">
                                <button id="submit_internship_form" type="submit" class="btn btn-primary submit_internship_form">Submit</button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>

        </div>

    </div>
    <br>
    <!-- =====================================FOOTER===================================== -->
    <?php include 'views/footer.php'; ?>



    <?php
    require_once 'inc/scripts.php';
    ?>
    <script src="js/parsley.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#internship_form').parsley();
            $('#internship_form').on('submit', function(e) {
                e.preventDefault();
                $.ajax({
                    type: "POST",
                    url: "ajax/hr.php?request=internship_application",
                    data: new FormData(this),
                    dataType: "text",
                    processData: false,
                    cache: false,
                    contentType: false,
                    beforeSend: function() {
                        $('.submit_internship_form').attr("disabled", "disabled");
                        // $('#fupForm').css("opacity", ".5");
                    },
                    success: function(response) {
                        if (response == 'success') {
                            $('#internship_form')[0].reset();
                            Swal.fire({
                                title: 'Your request has been sent successfully.',
                                type: response,
                                allowOutsideClick: true,
                                showConfirmButton: true
                            });
                        } else {
                            swal.fire({
                                title: response,
                                type: 'error',
                                allowOutsideClick: false
                            });
                        }
                        // $('#fupForm').css("opacity", "");
                        $(".submit_internship_form").removeAttr("disabled");
                    }
                });
            })
        });
    </script>
</body>

</html>