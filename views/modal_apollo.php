<!-- ===================================== APOLLO CENTRE Booking Form ===================================== -->

<div id="modal-full" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('images/shimba/img5.jpg'); background-size: cover;" uk-height-viewport>
            </div>
            <div class="uk-padding-large">


                <form class="form-container book-room" action="" method="POST">
                    <div class="form-group col-md-12">
                        <h3 for="inputAddress">BOOKING DETAILS</h3>
                        <select name="room_name" id="room_name" class="custom-select custom-select-lg mb-3" value="" required>
                            <option value="-1" selected disabled>Please Select</option>
                            <option value="1">Shimba Hills (Boardroom 18pax)</option>
                            <option value="2">Taita Hills (10-12pax)</option>
                            <option value="3">Ngong Hills (Boardroom 8pax)</option>
                            <option value="4">Chyullu Hills (Auditorium 40pax)</option>
                            <option value="5">Cherengani Hills (Training Room)</option>
                            <option value="6">Entertainment Area</option>
                        </select>
                    </div>

                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="inputEmail4">Start Date</label>
                                <input id="start_date" name="start_date" type="date" class="form-control" placeholder="Start date" value="" required>
                            </div>

                            <div class="form-group col-md-6">
                                <label for="inputPassword4">End Date</label> <input name="end_date" id="end_date" type="date" class="form-control" placeholder="End date" value="" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="inputEmail4">Start Time</label>
                                <input id="start_time" name="start_time" type="time" class="form-control" placeholder="Start time" value="" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputPassword4">End Time</label>
                                <input id="end_time" name="end_time" type="time" class="form-control" id="inputPassword4" placeholder="End time" value="" required>
                            </div>
                        </div>
                    </div>

                    <h3 for="inputAddress" class="comp-detail">GUEST DETAILS</h3>
                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="inputAddress">Name/ Company</label>
                                <input name="company_name" id="company_name" type="text" class="form-control" placeholder="Full Name" value="" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputAddress2">Phone Number</label>
                                <input name="phone" id="phone" type="tel" class="form-control" placeholder="Phone Number" value="" data-parsley-pattern="^(?:254|\+254|0)?(7(?:(?:[123456789][0-9])|(?:0[0-8])|(4[0-1]))[0-9]{6})$" data-parsley-trigger="keyup" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="inputAddress">Email Address</label>
                                <input name="email" id="email" type="email" class="form-control" placeholder="Email" value="" required>
                            </div>
                            <div class=" form-group col-md-6">
                                <label for="inputAddress2">Number of Guests</label>
                                <input name="capacity" id="capacity" type="number" min="1" class="form-control" placeholder="Pax" value="" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="inputAddress">More Information / Any Special Requests </label>
                                <textarea name="more_information" id="more_information" class="form-control"></textarea>
                            </div>
                        </div>

                        <div class="row book-btn">
                            <div class="col-md-12">
                                <p id="display"></p>
                                <button name="submit" type="submit" class="btn btn-primary submit" id="submitt">BOOK
                                    NOW
                                </button>
                            </div>
                        </div>
                    </div>


                </form>

            </div>
        </div>
    </div>
</div>