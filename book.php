<?php
require_once 'inc/db.php';
require_once 'inc/sessions.php';
require_once 'inc/functions.php';
if (isset($_POST['book'])) {
    $room_name = sanitize($_POST['room_name']);
    $start_date = sanitize($_POST['start_date']);
    $end_date = sanitize($_POST['end_date']);
    $start_time = sanitize($_POST['start_time']);
    $end_time = sanitize($_POST['end_time']);
    $company_name = sanitize($_POST['company_name']);
    $phone = sanitize($_POST['phone']);
    $email = sanitize($_POST['email']);
    $capacity = sanitize($_POST['capacity']);

    if (empty($room_name) || empty($start_date) || empty($end_date) || empty($start_time) || empty($end_time) || empty($company_name) || empty($phone) || empty($email)) {
        $errors[] = 'Every field is required.';
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

    <?php include 'views/head_links.php'; ?>

</head>

<body>

    <?php include 'views/nav.php'; ?>
    <br><br><br><br><br><br><br><br>
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <?php
                echo errorMessage();
                echo successMessage();
                if (!empty($errors)) {
                    echo display_errors($errors);
                }
                echo $start_date;
                echo '<br>';
                echo $start_time;
                ?>
                <form action="<?= htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST">
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <label for="inputAddress">Room Name</label>
                            <select required name="room_name" class="custom-select custom-select-lg mb-3">
                                <option disabled>Select preferred room</option>
                                <option value="1">Shimba Hills (Boardroom 18pax)</option>
                                <option value="2">Taita Hills (10-12pax)</option>
                                <option value="3">Ngong Hills (Boardroom 8pax)</option>
                                <option value="4">Chyullu Hills (Auditorium 40pax)</option>
                                <option value="5">Cherengani Hills (Training Room)</option>
                                <option value="6">Entertainment Area</option>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Start Date</label>
                            <input name="start_date" type="date" class="form-control" id="inputEmail4"
                                placeholder="Email">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">End Date</label>
                            <input name="end_date" type="date" class="form-control" id="inputPassword4"
                                placeholder="Password">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Start Time (6 am)</label>
                            <input name="start_time" type="time" min="06:00:00" class="form-control" id="inputEmail4"
                                placeholder="Email">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">End Time (6 pm)</label>
                            <input name="end_time" type="time" max="18:00:00" class="form-control" id="inputPassword4"
                                placeholder="Password" required>
                        </div>
                    </div>
                    <h3>Company Details</h3>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="inputAddress">Name</label>
                            <input name="company_name" type="text" class="form-control" id="inputAddress"
                                placeholder="Full Name">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputAddress2">Phone Number</label>
                            <input name="phone" type="tel" class="form-control" id="inputAddress2"
                                placeholder="Phone number">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputAddress">Email Address</label>
                            <input name="email" type="email" class="form-control" id="inputAddress" placeholder="Email">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputAddress2">Capacity</label>
                            <input name="capacity" type="number" class="form-control" id="inputAddress2"
                                placeholder="pax">
                        </div>
                    </div>
                    <button name="book" type="submit" class="btn btn-success">Book</button>
                </form>
            </div>
        </div>
    </div>
    <br><br><br><br><br><br><br><br>

    <?php include 'views/footer.php'; ?>
</body>



</html>