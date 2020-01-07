<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Travel portal- APA INSURANCE</title>
    <!-- META DATA DESCRIPTION FOR GOOGLE SEARCH RESULT -->
    <meta name="description" content="Our website is currently undergoing scheduled maitenance.we
    should be back shortly. Thank you for your patience">
    <meta name="keywords" content="apa careers,apa jobs, apa job description, apa job,">
    <meta name="author" content="">

    <!-- FACEBOOK MEATADATA -->
    <meta property="og:url" content="https://www.apainsurance.org/underconstruction.php" />
    <meta property="og:type" content="article" />
    <meta property="og:title" content="Job Description." />
    <meta property="og:description" content=" Our website is currently undergoing scheduled maitenance.we
    should be back shortly. Thank you for your patience" />

    <!-- STYLESHEET -->
    <link rel="stylesheet" href="css/career.css" media="screen">
    <link rel="stylesheet" href="css/customer.css" media="screen">
    <link rel="stylesheet" href="css/parsley.css" media="screen">


    <?php include 'views/head_links.php'; ?>

</head>

<body>
    <!-- ==============HEADER=============== -->

    <?php include 'views/nav.php'; ?>


    <!-- ===================================== ABOUT US ===================================== -->

    <div class="container">
        <div class="apollo">

            <br>
            <h1>UNDERMAINTENANCE</h1>
            <div class="under-line img6">
                <img src="images/line.png" alt="">
            </div>
            <p class="container content-offer text-left"> Our Travel portal is currently undergoing scheduled <b>maintenance</b>.we
                should be back shortly. Thank you for your patience. Please leave your details so that we can get in touch
            </p>
            <br>
            <div class="container">
                <div class="row">
                    <div class="col-md-6 maintaince">

                    </div>

                    <div class="col-md-6">
                        <div class="customer-login1">
                            <h2> Fill in the following form :</h2>
                            <form id="internship_form" method="POST" action="<?php echo $_SERVER['PHP_SELF'] ?>" enctype="multipart/form-data" class="customer-form intern-form">

                                <div class="row text-left">
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

                                <div class="form-group text-left">
                                    <label for="email">Email address</label>
                                    <input name="email" type="email" class="form-control" id="email" aria-describedby="" placeholder="e.g john@gmail.com" required>
                                </div>

                                <div class="form-group text-left">
                                    <label for="phone">Phone Number</label>
                                    <input name="phone" type="tel" class="form-control" id="phone" placeholder="0712 xxx xxx" required>
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

        </div>

    </div>
    <!-- =====================================FOOTER===================================== -->
    <?php include 'views/footer.php'; ?>



    <!-- Optional JavaScript -->

    <!-- UIkit JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.0.3/js/uikit-icons.min.js"></script>
    <script src="js/uikit.min.js"></script>
    <script src="js/uikit-icons.min.js"></script>



    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>

    <script>
        DecoupledEditor.create(document.querySelector('#editor'))
            .then(editor => {
                const toolbarContainer = document.querySelector('#toolbar-container');

                toolbarContainer.appendChild(editor.ui.view.toolbar.element);
            })
            .catch(error => {
                console.error(error);
            });




        ClassicEditor
            .create(document.querySelector('#editor1'), {
                ckfinder: {
                    uploadUrl: '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files&responseType=json',
                },
                toolbar: ['ckfinder', 'imageUpload', '|', 'heading', '|', 'bold', 'italic', '|', 'undo', 'redo']
            })
            .catch(error => {
                console.error(error);
            });
    </script>

</body>

</html>