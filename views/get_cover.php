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

<!-- ===================================== DOMESTIC PACKAGE LEAD FORM  ===================================== -->

<div id="modal-full_dp" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/domestic.jpg'); background-size: cover;" uk-height-viewport></div>
            <div class="uk-padding-large">


                <form class="form-container" id="form-dp" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST">
                    <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="full_name">Full Name</label>
                                <input name="full_name" type="text" class="form-control" id="full_name" placeholder="John doe" value="" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="phone">Mobile Number</label>
                                <input name="phone" data-parsley-pattern="^(?:254|\+254|0)?(7(?:(?:[129][0-9])|(?:0[0-8])|(4[0-1]))[0-9]{6})$" data-parsley-trigger="keyup" type="tel" class="form-control" id="phone" placeholder="07xx 234 xxx" value="" required>
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
                        <h3 for="inputAddress">COVER DETAILS</h3>
                    </div>

                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="property">Property status</label>
                                <select id="property" name="property" class="form-control selectFilter" data-target="section" required>
                                    <option value="-1" selected disabled>Choose...</option>
                                    <option data-ref="owner" name="owner" value="owner">Owner</option>
                                    <option data-ref="tenant" name="tenant" value="tenant">Occupant (Tenant)</option>
                                </select>
                            </div>
                            <div class="form-group col-md-12">
                                <label for="inputAddress2">Covers</label>
                                <select id="cover" name="cover" class="form-control selectFilter" data-target="section" required>
                                    <option value="-1" selected disabled>Choose...</option>
                                    <option data-ref="owner" name="all_covers" value="All Covers"> All Covers </option>
                                    <option data-ref="owner" name="building" value="Building"> Building </option>
                                    <option data-ref="tenant" name="contents" value="Contents"> Contents </option>
                                    <option data-ref="tenant" name="all_risk" value="All Risk"> All Risk </option>
                                    <option data-ref="tenant" name="domestic_employees" value="Domestic Employees"> Domestic Employees </option>
                                </select>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="value"> Value (Kshs)</label>
                                <input name="value" type="text" class="form-control" id="value" placeholder="1,400,000" value="">
                            </div>

                        </div>
                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="10">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                        </div>
                        <div class="row book-btn">
                            <div class="col-md-12">
                                <button type="submit" name="request" class="btn btn-primary">SUBMIT <i class="fas fa-paper-plane"></i>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>

<!-- ===================================== PERSONAL ACCIDENT LEAD FORM   ===================================== -->

<div id="modal-full_pa" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/accident4.jpg'); background-size: cover;" uk-height-viewport>
            </div>
            <div class="uk-padding-large">


                <form id="form" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container"><br><br>
                    <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="full_name">Full Name</label>
                                <input name="full_name" type="text" class="form-control" id="full_name" placeholder="Full Name" value="" required>
                            </div>
                            <div class="form-group col-md-12">
                                <label for="phone">Mobile Number</label>
                                <input name="phone" type="tel" class="form-control" id="phone" placeholder="Mobile Number" value="" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="email">Email Address</label>
                                <input name="email" type="email" class="form-control" id="email" placeholder="Email" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                            </div>
                            <div class=" form-group col-md-12">
                                <label for="location">Location</label>
                                <input name="location" type="text" class="form-control" id="location" placeholder="Nairobi" value="" required>
                            </div>
                        </div>

                    </div>
                    <div class="container">
                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="12">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                        </div>
                        <div class="row book-btn">
                            <div class="col-md-12">
                                <button type="submit" name="request" class="btn btn-primary">SUBMIT <i class="fas fa-paper-plane"></i></button>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>

<!-- ===================================== GOLPHERS LEAD FORM ===================================== -->

<div id="modal-full_golf" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/golf1.jpg'); background-size: cover;" uk-height-viewport></div>
            <div class="uk-padding-large">


                <form class="form-container" id="form" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST">
                    <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="full_name">Full Name</label>
                                <input name="full_name" type="text" class="form-control" id="full_name" placeholder="Full Name" value="" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="phone">Mobile Number</label>
                                <input name="phone" type="tel" class="form-control" id="phone" placeholder="Mobile Number" value="" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="email">Email Address</label>
                                <input name="email" type="email" class="form-control" id="email" placeholder="Email" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                            </div>
                            <div class=" form-group col-md-6">
                                <label for="location">Location</label>
                                <input name="location" type="text" class="form-control" id="location" placeholder="Nairobi" value="" required>
                            </div>
                        </div>

                    </div>
                    <hr>
                    <div class="form-group col-md-12">
                        <h3 for="inputAddress">COVER DETAILS</h3>
                    </div>

                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="value">Equipment Value</label>
                                <input name="value" type="text" class="form-control" id="value" placeholder="1,400,000" required value="">
                            </div>
                            <div class="form-group col-md-12">
                                <label for="inputAddress2">Occupation</label>
                                <select id="occupation" name="occupation" class="form-control selectFilter" data-target="section" required>
                                    <option value="-1" selected disabled>Choose...</option>
                                    <option data-ref="owner" name="owner" value="Casual Golfer"> Casual Golfer
                                    </option>
                                    <option data-ref="owner" name="owner" value="Golfer"> Golfer </option>
                                    <option data-ref="tenant" name="tenant" value="Professional Golfer">
                                        Professional Golfer </option>
                                </select>
                            </div>
                        </div>
                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="13">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                        </div>
                        <div class="row book-btn">
                            <div class="col-md-12">
                                <button type="submit" name="request" class="btn btn-primary">SUBMIT <i class="fas fa-paper-plane"></i> </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- ===================================== MOTOR-CYCLE LEAD FORM ===================================== -->

<div id="modal-full_motor_cycle" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/motorcycle.jpg'); background-size: cover;" uk-height-viewport>
            </div>
            <div class="uk-padding-large">


                <form class="form-container" id="form" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST">
                    <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="full_name">Full Name</label>
                                <input name="full_name" type="text" class="form-control" id="full_name" placeholder="john doe" value="" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="phone">Mobile Number</label>
                                <input name="phone" type="tel" class="form-control" id="phone" placeholder="07xx 214 xxx" value="" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="email">Email Address</label>
                                <input name="email" type="email" class="form-control" id="email" placeholder="john@gmail.com" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                            </div>
                            <div class=" form-group col-md-6">
                                <label for="location">Location</label>
                                <input name="location" type="text" class="form-control" id="location" placeholder="Nairobi" value="" required>
                            </div>
                        </div>

                    </div>
                    <hr>
                    <div class="form-group col-md-12">
                        <h3 for="inputAddress">COVER DETAILS</h3>
                    </div>

                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="value">Motor Cycle Value</label>
                                <input name="value" type="text" class="form-control" id="value" placeholder="400,000" value="" required>
                            </div>
                            <div class="form-group col-md-12">
                                <label for="make">Make</label>
                                <input name="make" type="text" class="form-control" id="make" placeholder="" value="" required>
                            </div>
                            <div class="form-group col-md-12">
                                <label for="model">Model</label>
                                <input name="model" type="text" class="form-control" id="model" placeholder="" value="" required>
                            </div>
                        </div>
                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="7">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                        </div>
                        <div class="row book-btn">
                            <div class="col-md-12">
                                <button type="submit" name="request" class="btn btn-primary">SUBMIT <i class="fas fa-paper-plane"></i></button>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>

<!-- ===================================== FLEXPAC LEAD FORM  ===================================== -->

<div id="modal-full_flex" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/personal.jpg'); background-size: cover;" uk-height-viewport></div>
            <div class="uk-padding-large">


                <form class="form-container" id="form" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST"><br><br>
                    <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="full_name">Full Name</label>
                                <input name="full_name" type="text" class="form-control" id="full_name" placeholder="john doe" value="" required>
                            </div>
                            <div class="form-group col-md-12">
                                <label for="phone">Mobile Number</label>
                                <input name="phone" type="tel" class="form-control" id="phone" placeholder="07xx 583 xxx" value="" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="email">Email Address</label>
                                <input name="email" type="email" class="form-control" id="email" placeholder="john@gmail.com" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                            </div>
                            <div class=" form-group col-md-12">
                                <label for="location">Location</label>
                                <input name="location" type="text" class="form-control" id="location" placeholder="Nairobi" value="" required>
                            </div>
                        </div>

                    </div>
                    <div class="container">
                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="51">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                        </div>
                        <div class="row book-btn">
                            <div class="col-md-12">
                                <button type="submit" name="request" class="btn btn-primary">SUBMIT <i class="fas fa-paper-plane"></i></button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- ===================================== PEDAL CYCLE LEAD FORM  ===================================== -->

<div id="modal-full_pedal" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/bicycle.jpg'); background-size: cover;" uk-height-viewport></div>
            <div class="uk-padding-large">


                <form id="form" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container">
                    <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="full_name">Full Name</label>
                                <input name="full_name" type="text" class="form-control" id="full_name" placeholder="john doe" value="" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="phone">Mobile Number</label>
                                <input name="phone" type="tel" class="form-control" id="phone" placeholder="07xx 214 xxx" value="" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="email">Email Address</label>
                                <input name="email" type="email" class="form-control" id="email" placeholder="john@gmail.com" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                            </div>
                            <div class=" form-group col-md-6">
                                <label for="location">Location</label>
                                <input name="location" type="text" class="form-control" id="location" placeholder="Nairobi" value="" required>
                            </div>
                        </div>

                    </div>
                    <hr>


                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="make">Bicycle Make</label>
                                <input name="make" type="text" class="form-control" id="make" placeholder="" value="" required>
                            </div>
                            <div class="form-group col-md-12">
                                <label for="model">Bicycle Model</label>
                                <input name="model" type="text" class="form-control" id="model" placeholder="" value="" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="value">Bicycle Value (Kshs)</label>
                                <input name="value" type="text" class="form-control" id="value" placeholder="20,000" value="" required>
                            </div>
                        </div>
                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="8">
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

<!-- ===================================== PET LEAD FORM  ===================================== -->

<div id="modal-full_pet" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/pet1.jpg'); background-size: cover;" uk-height-viewport></div>
            <div class="uk-padding-large">


                <form class="form-container" id="form" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST">
                    <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="full_name">Full Name</label>
                                <input name="full_name" type="text" class="form-control" id="full_name" placeholder="john doe" value="" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="phone">Mobile Number</label>
                                <input name="phone" type="tel" class="form-control" id="phone" placeholder="07xx 254 xxx" value="" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="email">Email Address</label>
                                <input name="email" type="email" class="form-control" id="email" placeholder="john@gmail.com" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                            </div>
                            <div class=" form-group col-md-6">
                                <label for="location">Location</label>
                                <input name="location" type="text" class="form-control" id="location" placeholder="Nairobi" value="" required>
                            </div>
                        </div>

                    </div>
                    <hr>
                    <div class="form-group col-md-12">
                        <h3 for="inputAddress">COVER DETAILS</h3>
                    </div>

                    <div class="container">
                        <div class="row ">
                            <div class="form-group col-md-12 pet-count">
                                <label for="type">Type of Pet</label>
                                <select id="type" name="type[]" class="form-control type-pet" data-target="section" required multiple>
                                    <option value="Dog">Dog </option>
                                    <option value="Cat">Cat </option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                            <div class="form-group col-md-12">
                                <label for="inputAddress2">Number of Pets</label>
                                <input name="number" type="text" class="form-control value" id="number" placeholder="10" value="" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="value"> Value of Pets (Kshs)</label>
                                <input name="value" type="text" class="form-control" id="value" placeholder="400,000" value="" required>
                            </div>

                        </div>
                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="11">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                        </div>
                        <div class="row book-btn">
                            <div class="col-md-12">
                                <button type="submit" name="request" class="btn btn-primary">SUBMIT <i class="fas fa-paper-plane"></i></button>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>