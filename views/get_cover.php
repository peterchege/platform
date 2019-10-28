<!-- ===================================== 
PERSONAL COVER 
===================================== -->


<!-- ===================================== LEAD FORM FOR COMPREHENSIVE ===================================== -->

<div id="modal-full_motor" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('images/motor.jpg'); background-size: cover;" uk-height-viewport></div>
            <div class="uk-padding-large">


                <form id="form-mp" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container">
                    <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="full_name">Full Name</label>
                                <input name="full_name" type="text" class="form-control" id="full_name" placeholder="john doe" value="" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="phone">Mobile Number</label>
                                <input name="phone" data-parsley-pattern="^(?:254|\+254|0)?(7(?:(?:[129][0-9])|(?:0[0-8])|(4[0-1]))[0-9]{6})$" data-parsley-trigger="keyup" type="tel" class="form-control" id="phone" placeholder=" 07xx 532 xxx" value="" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="email">Email Address</label>
                                <input name="email" type="email" class="form-control" id="email" placeholder="john@example.com" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                            </div>
                            <div class=" form-group col-md-6">
                                <label for="location">Location</label>
                                <input name="location" type="text" class="form-control" id="location" placeholder="Nairobi" value="" required>
                            </div>
                        </div>

                    </div>
                    <hr>
                    <div class="form-group col-md-12">
                        <h3 for="inputAddress">VEHICLE DETAILS</h3>
                    </div>

                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="make">Vehicle Make</label>
                                <input name="make" type="text" class="form-control" id="make" placeholder="Toyota" value="" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="model">Vehicle Model</label>
                                <input name="model" type="text" class="form-control" id="model" placeholder="Crown" value="" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="value">Vehicle Value (Kshs)</label>
                                <input name="value" type="text" class="form-control" id="value" placeholder=" 1,200,000" value="" required>
                            </div>
                            <div class=" form-group col-md-6">
                                <label for="inputAddress2">Year of Manufacture</label>
                                <input name="yom" type="number" class="form-control" id="yom" placeholder="2019" value="" required data-parsley-pattern="^\d{4}$" data-parsley-trigger="keyup">
                            </div>
                        </div>
                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="6">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                        </div>
                        <div class="row book-btn">
                            <div class="col-md-12">
                                <button type="submit" name="request" class="btn btn-primary">SUBMIT <i class="fas fa-paper-plane"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>

<!-- ===================================== TRAVEL LEAD FORM FOR  ===================================== -->

<div id="modal-full_travel" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('images/travell.jpg'); background-size: cover; " uk-height-viewport></div>
            <div class="uk-padding-large">


                <form id="form-tl" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container">
                    <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="full_name">Full Name</label>
                                <input name="full_name" type="text" class="form-control" id="full_name" placeholder="john doe" value="" required>
                            </div>
                            <div class="form-group col-md-12">
                                <label for="phone">Mobile Number</label>
                                <input name="phone" data-parsley-pattern="^(?:254|\+254|0)?(7(?:(?:[129][0-9])|(?:0[0-8])|(4[0-1]))[0-9]{6})$" data-parsley-trigger="keyup" type="tel" class="form-control" id="phone" placeholder="07xx 514 xxx" value="" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="email">Email Address</label>
                                <input name="email" type="email" class="form-control" id="email" placeholder="john@example.com" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                            </div>
                            
                        </div>
                        <hr>
                        <div class="form-group col-md-12">
                            <h3 for="inputAddress">TRAVELLING DETAILS</h3>
                        </div>

                        <div class="container">
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="depature_date">Departure Date</label>
                                    <input name="depature_date" type="date" class="form-control" id="depature_date" value="" required>
                                </div>
                                <div class="form-group col-md-12">
                                    <label for="return_date">Return Date</label>
                                    <input name="return_date" type="date" class="form-control" id="return_date" placeholder="" value="" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label for="destination">Destination</label>
                                    <input name="destination" type="text" class="form-control" id="destination" value="" required>
                                </div>

                            </div>

                        </div>
                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="9">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                        </div>
                        <div class="row book-btn">
                            <div class="col-md-12">
                                <button type="submit" name="request" class="btn btn-primary">SUBMIT <i class="fas fa-paper-plane"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>