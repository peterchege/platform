<?php
require_once 'inc/db.php';
require_once 'inc/functions.php';
require_once 'inc/sessions.php';

//checking job expiry
$datequery = $db->query("SELECT job_id,deadline FROM apa_job_posts");
while ($check = mysqli_fetch_assoc($datequery)) {
    $diff = strtotime($check['deadline']) - time();
    $expired_id = $check['job_id'];
    if ($diff <= 0) {
        $db->query("UPDATE apa_job_posts SET archive = 1 WHERE job_id = '$expired_id' ");
    }
}
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

    <?php include 'views/head_links.php'; ?>

</head>

<body>
    <!-- ==============HEADER=============== -->

    <?php include 'views/nav.php'; ?>


    <!-- ===================================== ABOUT US ===================================== -->

    <div class="container">
        <div class="apollo">
            <?php
            echo errorMessage();
            echo successMessage();
            ?>
            <br>
            <h1>INTERNSHIP APPLICATION</h1>
            <div class="under-line img5">
                <img src="images/line.png" alt="">
            </div>
            <p class="container content-offer text-left"> Apollo Group, our most valuable assets are our employees. We
                pride
                ourselves in creating experience, delivering results and adding value to all stakeholders.

                We advocate for equal employment opportunities to all persons regardless of age, color, nationality,
                race, religion, gender and marital status.
            </p>

        </div>

    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-6 intern-register">

            </div>

            <div class="col-md-6">
                <div class="customer-login1">
                    <h2> Fill in the following form :</h2>
                    <form class="customer-form intern-form">

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">First Name</label>
                                    <input type="text" class="form-control" id="first_name" aria-describedby="emailHelp" placeholder="e.g john">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Last Name</label>
                                    <input type="email" class="form-control" id="last_name" aria-describedby="emailHelp" placeholder="e.g doe">
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="e.g john@gmail.com">
                        </div>

                        <div class="form-group">
                            <label for="exampleInputPassword1">Phone Number</label>
                            <input type="number" class="form-control" id="exampleInputPassword1" placeholder="0712 xxx xxx">
                        </div>

                        <div class="form-group">
                            <label for="exampleInputPassword1">Attach document (Cv, Resume )</label>
                            <input type="file" class="form-control-file" id="exampleFormControlFile1">
                        </div>

                        <div class="customer-btn">
                            <div class="row">
                                <button type="submit" class="btn btn-primary">Submit</button>
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