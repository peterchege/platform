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


<!-- ===================================== 
HEALTH COVER 
===================================== -->

<!-- ===================================== JAMII PLUS LEAD FORM FOR  ===================================== -->

<div id="modal-full_jamii" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('images/affection.jpg'); background-size: cover;" uk-height-viewport></div>
            <div class="uk-padding-large">


                <form class="form-container" id="form-jp" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST">
                    <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="full_name">Full Name</label>
                                <input name="full_name" type="text" class="form-control" id="john doe" placeholder="john doe" value="" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="phone">Mobile Number</label>
                                <input name="phone" data-parsley-pattern="^(?:254|\+254|0)?(7(?:(?:[129][0-9])|(?:0[0-8])|(4[0-1]))[0-9]{6})$" data-parsley-trigger="keyup" type="tel" class="form-control" id="phone" placeholder="07xx 343 xx7" value="" required>
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
                    <!-- <div class="form-group col-md-12">
                            <h3 for="inputAddress">COVER DETAILS</h3>
                        </div> -->

                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="make"> Inpatient Benefit (Kshs)</label>
                                <select id="cover" name="cover" class="form-control selectFilter" data-target="section" required>
                                    <option value="-1" selected disabled>Choose...</option>
                                    <option data-ref="owner" name="all_covers" value="All Covers">Kshs 10,000,000 </option>
                                    <option data-ref="owner" name="building" value="Building">Kshs 5,000,000 </option>
                                    <option data-ref="tenant" name="contents" value="Contents">Kshs 2,000,000 </option>
                                    <option data-ref="tenant" name="all_risk" value="All Risk">Kshs 1,000,000 </option>
                                    <option data-ref="tenant" name="domestic_employees" value="Domestic Employees">Kshs 500,000 </option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="make"> Your Age category</label>
                                <select id="age" name="age" class="form-control" required>
                                    <option value="-1" selected disabled>Select your age range...</option>
                                    <option value="18 - 23"> 20 - 24 yrs</option>
                                    <option value="24 - 25"> 25 - 29 yrs</option>
                                    <option value="30 - 34"> 30 - 34 yrs</option>
                                    <option value="35 - 39"> 35 - 39 yrs</option>
                                    <option value="40 - 44"> 40 - 44 yrs</option>
                                    <option value="45 - 49"> 45 - 49 yrs</option>
                                    <option value="50 - 54"> 50 - 54 yrs</option>
                                    <option value="55 - 59"> 55 - 59 yrs</option>
                                    <option value="60 - 64"> 60 - 64 yrs</option>
                                    <option value="65 - 69"> 65 - 69 yrs</option>
                                    <option value="70 - 75"> 70 - 75 yrs</option>
                                    <option value="76 - 80"> 76 - 80 yrs</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="make">Number of Children (Age < 20)</label> <input name="make" type="number" class="form-control" id="make" placeholder="3" value="">
                            </div>
                        </div>


                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="14">
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

<!-- ===================================== AFYA NAFUU LEAD FORM  ===================================== -->

<div id="modal-full_afya" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/dadbaby.jpg'); background-size: cover;" uk-height-viewport>
            </div>
            <div class="uk-padding-large">


                <form class="form-container" id="form-jp" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST">
                    <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="full_name">Full Name</label>
                                <input name="full_name" type="text" class="form-control" id="john doe" placeholder="john doe" value="" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="phone">Mobile Number</label>
                                <input name="phone" type="tel" class="form-control" id="phone" placeholder="07xx 343 xx7" value="" required>
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

                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="make"> Inpatient Benefit (Kshs)</label>
                                <select id="cover" name="cover" class="form-control selectFilter" data-target="section" required>
                                    <option value="-1" selected disabled>Choose...</option>
                                    <option data-ref="owner" name="" value="">Kshs 2,000,000
                                    </option>
                                    <option data-ref="owner" name="" value="">Kshs 1,000,000
                                    </option>
                                    <option data-ref="tenant" name="" value="">Kshs 750,000
                                    </option>
                                    <option data-ref="tenant" name="" value="">Kshs 500,000
                                    </option>
                                    <option data-ref="tenant" name="" value="">Kshs 300,000
                                    </option>
                                    <option data-ref="tenant" name="" value="">Kshs 100,000
                                    </option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="make"> Your Age category</label>
                                <select id="age" name="age" class="form-control" required>
                                    <option value="-1" selected disabled>Select your age range...</option>
                                    <option value="18 - 23"> 20 - 24 yrs</option>
                                    <option value="24 - 25"> 25 - 29 yrs</option>
                                    <option value="30 - 34"> 30 - 34 yrs</option>
                                    <option value="35 - 39"> 35 - 39 yrs</option>
                                    <option value="40 - 44"> 40 - 44 yrs</option>
                                    <option value="45 - 49"> 45 - 49 yrs</option>
                                    <option value="50 - 54"> 50 - 54 yrs</option>
                                    <option value="55 - 59"> 55 - 59 yrs</option>
                                    <option value="60 - 64"> 60 - 64 yrs</option>
                                    <option value="65 - 69"> 65 - 69 yrs</option>
                                    <option value="70 - 75"> 70 - 75 yrs</option>
                                    <option value="76 - 80"> 76 - 80 yrs</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="make">Number of Children (Age < 20)</label> <input name="make" type="number" class="form-control" id="make" placeholder="3" value="" required>
                            </div>
                        </div>


                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="14">
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

<!-- ===================================== FEMINA LEAD FORM ===================================== -->

<div id="modal-full_femina" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/assurance.jpg'); background-size: cover;" uk-height-viewport>
            </div>
            <div class="uk-padding-large">


                <form class="form-container" id="form-jp" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST">
                    <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="full_name">Full Name</label>
                                <input name="full_name" type="text" class="form-control" id="john doe" placeholder="john doe" value="" required>
                            </div>
                            <div class="form-group col-md-12">
                                <label for="phone">Mobile Number</label>
                                <input name="phone" type="tel" class="form-control" id="phone" placeholder="07xx 343 xx7" value="" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="email">Email Address</label>
                                <input name="email" type="email" class="form-control" id="email" placeholder="john@example.com" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                            </div>
                            <div class=" form-group col-md-12">
                                <label for="location">Location</label>
                                <input name="location" type="text" class="form-control" id="location" placeholder="Nairobi" value="" required>
                            </div>
                        </div>

                    </div>

                    <div class="container">

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="age">Your Age (yrs)</label>
                                <select id="age" name="age" class="form-control" required>
                                    <option value="-1" selected disabled>Select your age range...</option>
                                    <option value="18 - 23"> 18 - 23 </option>
                                    <option value="24 - 25"> 24 - 29 </option>
                                    <option value="30 - 34"> 30 - 34 </option>
                                    <option value="35 - 39"> 35 - 39 </option>
                                    <option value="40 - 44"> 40 - 44 </option>
                                    <option value="45 - 49"> 45 - 49 </option>
                                    <option value="50 - 54"> 50 - 54 </option>
                                    <option value="55 - 59"> 55 - 59 </option>
                                    <option value="60 - 64"> 60 - 64 </option>
                                    <option value="65 - 69"> 65 - 69 </option>
                                    <option value="Above 70"> Above 70 </option>
                                </select>
                            </div>
                        </div>


                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="16">
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

<!-- ===================================== 
INDIVIDUAL LIFE COVER 
===================================== -->

<!-- ===================================== IMARIKA LEAD FORM  ===================================== -->

<div id="modal-full_imarika" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/saving3.jpg'); background-size: cover;" uk-height-viewport></div>
            <div class="uk-padding-large">
                <form id="form" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container">
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
                            <div class="form-group col-md-6">
                                <label for="make">Period/Length to be Covered</label>
                                <select id="period" name="period" class="form-control" required>
                                    <option value="-1" selected disabled>Select...</option>
                                    <option value="6"> 6 yrs </option>
                                    <option value="9"> 9 yrs </option>
                                    <option value="12"> 12 yrs </option>
                                    <option value="15"> 15 yrs </option>
                                    <option value="18"> 18 yrs </option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="value">Value of Cover</label>
                                <input name="value" type="text" class="form-control value" id="value" placeholder="( Minimum Ksh 100,000 )" data-parsley-pattern="^.{7,}$" required>
                            </div>
                        </div>
                        <div class="row">

                            <div class="form-group col-md-12">
                                <label for="age">Your Age (yrs)</label>
                                <select id="age" name="age" class="form-control" required>
                                    <option value="-1" selected disabled>Select your age range...</option>
                                    <option value="18 - 23"> 18 - 23 </option>
                                    <option value="24 - 25"> 24 - 29 </option>
                                    <option value="30 - 34"> 30 - 34 </option>
                                    <option value="35 - 39"> 35 - 39 </option>
                                    <option value="40 - 44"> 40 - 44 </option>
                                    <option value="45 - 49"> 45 - 49 </option>
                                    <option value="50 - 54"> 50 - 54 </option>
                                    <option value="55 - 59"> 55 - 59 </option>
                                    <option value="60 - 64"> 60 - 64 </option>
                                    <option value="65 - 69"> 65 - 69 </option>
                                    <option value="Above 70"> Above 70 </option>
                                </select>
                            </div>
                        </div>


                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="18">
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

<!-- ===================================== AKIBA HALISI LEAD FORM  ===================================== -->

<div id="modal-full_akiba" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/saving2.jpg'); background-size: cover;" uk-height-viewport></div>
            <div class="uk-padding-large">
                <form id="form" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container">
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
                            <div class="form-group col-md-6">
                                <label for="make">Period/Length to be Covered</label>
                                <select id="period" name="period" class="form-control" required>
                                    <option value="-1" selected disabled>Select...</option>
                                    <option value="6"> 6 yrs </option>
                                    <option value="9"> 9 yrs </option>
                                    <option value="12"> 12 yrs </option>
                                    <option value="15"> 15 yrs </option>
                                    <option value="18"> 18 yrs </option>
                                </select>
                            </div>

                            <div class="form-group col-md-6">
                                <label for="value">Value of Cover</label>
                                <input name="value" type="text" class="form-control value" id="value" placeholder="( Minimum Ksh 100,000 )" data-parsley-pattern="^.{7,}$" required>
                            </div>
                        </div>
                        <div class="row">

                            <div class="form-group col-md-12">
                                <label for="age">Your Age (yrs)</label>
                                <select id="age" name="age" class="form-control" required>
                                    <option value="-1" selected disabled>Select your age range...</option>
                                    <option value="18 - 23"> 18 - 23 </option>
                                    <option value="24 - 25"> 24 - 29 </option>
                                    <option value="30 - 34"> 30 - 34 </option>
                                    <option value="35 - 39"> 35 - 39 </option>
                                    <option value="40 - 44"> 40 - 44 </option>
                                    <option value="45 - 49"> 45 - 49 </option>
                                    <option value="50 - 54"> 50 - 54 </option>
                                    <option value="55 - 59"> 55 - 59 </option>
                                    <option value="60 - 64"> 60 - 64 </option>
                                    <option value="65 - 69"> 65 - 69 </option>
                                    <option value="Above 70"> Above 70 </option>
                                </select>
                            </div>
                        </div>


                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="19">
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

<!-- ===================================== ELIMU LEAD FORM  ===================================== -->

<div id="modal-full_elimu" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/educate.jpg'); background-size: cover;" uk-height-viewport></div>
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
                                <input name="phone" type="tel" class="form-control" id="phone" placeholder=" 07xx 254 xxx" value="" required>
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
                            <div class="form-group col-md-6">
                                <label for="make">Period/Length to be Covered</label>
                                <select id="period" name="period" class="form-control" required>
                                    <option value="-1" selected disabled>Select...</option>
                                    <option value="6"> 6 yrs </option>
                                    <option value="9"> 9 yrs </option>
                                    <option value="12"> 12 yrs </option>
                                    <option value="15"> 15 yrs </option>
                                    <option value="18"> 18 yrs </option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="value">Value of Cover</label>
                                <input name="value" type="text" class="form-control value" id="value" placeholder="( Minimum Ksh 100,000 )" data-parsley-pattern="^.{7,}$" required>
                            </div>
                        </div>
                        <div class="row">

                            <div class="form-group col-md-12">
                                <label for="age">Your Age (yrs)</label>
                                <select id="age" name="age" class="form-control" required>
                                    <option value="-1" selected disabled>Select your age range...</option>
                                    <option value="18 - 23"> 18 - 23 </option>
                                    <option value="24 - 25"> 24 - 29 </option>
                                    <option value="30 - 34"> 30 - 34 </option>
                                    <option value="35 - 39"> 35 - 39 </option>
                                    <option value="40 - 44"> 40 - 44 </option>
                                    <option value="45 - 49"> 45 - 49 </option>
                                    <option value="50 - 54"> 50 - 54 </option>
                                    <option value="55 - 59"> 55 - 59 </option>
                                    <option value="60 - 64"> 60 - 64 </option>
                                    <option value="65 - 69"> 65 - 69 </option>
                                    <option value="Above 70"> Above 70 </option>
                                </select>
                            </div>
                        </div>


                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="20">
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

<!-- ===================================== HOSICARE LEAD FORM ===================================== -->

<div id="modal-full_hosicare" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/admited.jpg'); background-size: cover;" uk-height-viewport></div>
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
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="make">Period/Length to be Covered</label>
                                <select id="period" name="period" class="form-control" required>
                                    <option value="-1" selected disabled>Select...</option>
                                    <option value="6"> 6 yrs </option>
                                    <option value="9"> 9 yrs </option>
                                    <option value="12"> 12 yrs </option>
                                    <option value="15"> 15 yrs </option>
                                    <option value="18"> 18 yrs </option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="value">Value of Cover</label>
                                <input name="value" type="text" class="form-control value" id="value" placeholder="( Minimum Ksh 100,000 )" data-parsley-pattern="^.{7,}$" required>
                            </div>
                        </div>
                        <div class="row">

                            <div class="form-group col-md-12">
                                <label for="age">Your Age (yrs)</label>
                                <select id="age" name="age" class="form-control" required>
                                    <option value="-1" selected disabled>Select your age range...</option>
                                    <option value="18 - 23"> 18 - 23 </option>
                                    <option value="24 - 25"> 24 - 29 </option>
                                    <option value="30 - 34"> 30 - 34 </option>
                                    <option value="35 - 39"> 35 - 39 </option>
                                    <option value="40 - 44"> 40 - 44 </option>
                                    <option value="45 - 49"> 45 - 49 </option>
                                    <option value="50 - 54"> 50 - 54 </option>
                                    <option value="55 - 59"> 55 - 59 </option>
                                    <option value="60 - 64"> 60 - 64 </option>
                                    <option value="65 - 69"> 65 - 69 </option>
                                    <option value="Above 70"> Above 70 </option>
                                </select>
                            </div>
                        </div>


                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="21">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                        </div>
                        <div class="row book-btn">
                            <div class="col-md-12">
                                <button type="submit" name="request" class="btn btn-primary"> SUBMIT <i class="fas fa-paper-plane"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </form>


            </div>
        </div>
    </div>
</div>

<!-- ===================================== PUMZISHA LEAD FORM  ===================================== -->

<div id="modal-full_pumzisha" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/funeral.jpg'); background-size: cover;" uk-height-viewport></div>
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
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="make">Period/Length to be Covered</label>
                                <input name="make" type="text" class="form-control" id="make" placeholder="( 5-20 yrs )" value="" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="cover">Value of Cover</label>
                                <select id="cover" name="value" class="form-control" required>
                                    <option value="-1" selected disabled>Select value of cover...</option>
                                    <option value="50000"> Ksh 50, 000 </option>
                                    <option value="70000"> Ksh 70, 000 </option>
                                    <option value="100000"> Ksh 100, 000 </option>
                                    <option value="200000"> Ksh 200, 000 </option>
                                    <option value="300000"> Ksh 300, 000 </option>
                                    <option value="500000"> Ksh 500, 000 </option>
                                </select>
                            </div>
                        </div>
                        <div class="row">

                            <div class="form-group col-md-12">
                                <label for="inputAddress2">Your Age</label>
                                <select id="cover" name="cover" class="form-control" required>
                                    <option value="-1" selected disabled>Select your age range...</option>
                                    <option value="18 - 23"> 18 - 23 </option>
                                    <option value="24 - 25"> 24 - 25 </option>
                                    <option value="30 - 34"> 30 - 34 </option>
                                    <option value="35 - 39"> 35 - 39 </option>
                                    <option value="40 - 44"> 40 - 44 </option>
                                    <option value="45 - 49"> 45 - 49 </option>
                                    <option value="50 - 54"> 50 - 54 </option>
                                    <option value="55 - 59"> 55 - 59 </option>
                                    <option value="60 - 64"> 60 - 64 </option>
                                    <option value="65 - 69"> 65 - 69 </option>
                                    <option value="Above 70"> Above 70 </option>
                                </select>
                            </div>
                        </div>


                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="22">
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

<!-- ===================================== LIFE TERM ASSURANCE LEAD FORM  ===================================== -->

<div id="modal-full_assurance" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/life.jpg'); background-size: cover;" uk-height-viewport></div>
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
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="make">Period/Length to be Covered</label>
                                <select id="period" name="period" class="form-control" required>
                                    <option value="-1" selected disabled>Select...</option>
                                    <option value="6"> 6 yrs </option>
                                    <option value="9"> 9 yrs </option>
                                    <option value="12"> 12 yrs </option>
                                    <option value="15"> 15 yrs </option>
                                    <option value="18"> 18 yrs </option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="value">Value of Cover</label>
                                <input name="value" type="text" class="form-control value" id="value" placeholder="( Minimum Ksh 100,000 )" data-parsley-pattern="^.{7,}$" required>
                            </div>
                        </div>
                        <div class="row">

                            <div class="form-group col-md-12">
                                <label for="age">Your Age (yrs)</label>
                                <select id="age" name="age" class="form-control" required>
                                    <option value="-1" selected disabled>Select your age range...</option>
                                    <option value="18 - 23"> 18 - 23 </option>
                                    <option value="24 - 25"> 24 - 29 </option>
                                    <option value="30 - 34"> 30 - 34 </option>
                                    <option value="35 - 39"> 35 - 39 </option>
                                    <option value="40 - 44"> 40 - 44 </option>
                                    <option value="45 - 49"> 45 - 49 </option>
                                    <option value="50 - 54"> 50 - 54 </option>
                                    <option value="55 - 59"> 55 - 59 </option>
                                    <option value="60 - 64"> 60 - 64 </option>
                                    <option value="65 - 69"> 65 - 69 </option>
                                    <option value="Above 70"> Above 70 </option>
                                </select>
                            </div>
                        </div>


                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="23">
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

<!-- ===================================== INDIVIDUAL PENSION PLAN LEAD FORM  ===================================== -->

<div id="modal-full_pension" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/last_expense.jpg'); background-size: cover;" uk-height-viewport>
            </div>
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
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="make">Period/Length to be Covered</label>
                                <select id="period" name="period" class="form-control" required>
                                    <option value="-1" selected disabled>Select...</option>
                                    <option value="6"> 6 yrs </option>
                                    <option value="9"> 9 yrs </option>
                                    <option value="12"> 12 yrs </option>
                                    <option value="15"> 15 yrs </option>
                                    <option value="18"> 18 yrs </option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="value">Value of Cover</label>
                                <input name="value" type="text" class="form-control value" id="value" placeholder="( Minimum Ksh 100,000 )" data-parsley-pattern="^.{7,}$" required>
                            </div>
                        </div>
                        <div class="row">

                            <div class="form-group col-md-12">
                                <label for="age">Your Age (yrs)</label>
                                <select id="age" name="age" class="form-control" required>
                                    <option value="-1" selected disabled>Select your age range...</option>
                                    <option value="18 - 23"> 18 - 23 </option>
                                    <option value="24 - 25"> 24 - 29 </option>
                                    <option value="30 - 34"> 30 - 34 </option>
                                    <option value="35 - 39"> 35 - 39 </option>
                                    <option value="40 - 44"> 40 - 44 </option>
                                    <option value="45 - 49"> 45 - 49 </option>
                                    <option value="50 - 54"> 50 - 54 </option>
                                    <option value="55 - 59"> 55 - 59 </option>
                                    <option value="60 - 64"> 60 - 64 </option>
                                    <option value="65 - 69"> 65 - 69 </option>
                                    <option value="Above 70"> Above 70 </option>
                                </select>
                            </div>
                        </div>


                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="24">
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

<!-- ===================================== MORGAGE PROTECTION LEAD FORM  ===================================== -->

<div id="modal-full_morgage" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/house.jpg'); background-size: cover;" uk-height-viewport></div>
            <div class="uk-padding-large">
                <form id="form" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container">
                    <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="full_name">Full Name</label>
                                <input name="full_name" type="text" class="form-control" id="full_name" placeholder="john doe" value="" required>
                            </div>
                            <div class="form-group col-md-12">
                                <label for="phone">Mobile Number</label>
                                <input name="phone" type="tel" class="form-control" id="phone" placeholder="07xx 245 xxx" value="" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="email">Email Address</label>
                                <input name="email" type="email" class="form-control" id="email" placeholder="john@example.com" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                            </div>
                            <div class=" form-group col-md-12">
                                <label for="location">Location</label>
                                <input name="location" type="text" class="form-control" id="location" placeholder="Nairobi" value="" required>
                            </div>
                        </div>

                    </div>
                    <hr>


                    <div style="display: none">
                        <input type="hidden" id="product_id" name="product_id" value="25">
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

<!-- ===================================== 
COMMERCIAL COVER
===================================== -->

<!-- ===================================== AVIATION LEAD FORM ===================================== -->

<div id="modal-full_aviation" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/aviation.jpg'); background-size: cover;" uk-height-viewport></div>
            <div class="uk-padding-large">
                <form id="form" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container">
                    <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                    <div class="container1">
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
                            <div class="form-group col-md-12">
                                <label for="email">Email Address</label>
                                <input name="email" type="email" class="form-control" id="email" placeholder="Email" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                            </div>

                        </div>


                    </div>
                    <hr>
                    <div class="form-group col-md-12">
                        <h3 for="inputAddress">AIRCRAFT DETAILS</h3>
                    </div>

                    <div class="container1">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="make">Aircraft Make</label>
                                <input name="make" type="text" class="form-control" id="make" placeholder="" value="" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="model">Aircraft Model</label>
                                <input name="model" type="text" class="form-control" id="model" placeholder="" value="" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="value">Aircraft Value (Kshs)</label>
                                <input name="value" type="text" class="form-control" id="value" placeholder="" value="" required>
                            </div>
                            <div class=" form-group col-md-6">
                                <label for="inputAddress2">Year of Manufacture</label>
                                <input name="yom" type="number" class="form-control" id="yom" placeholder="" value="" required data-parsley-pattern="^\d{4}$" data-parsley-trigger="keyup">
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="max_take_off_weight">Maximum take off weight</label>
                                <input name="max_take_off_weight" type="text" class="form-control value" id="max_take_off_weight" placeholder="" value="" required>
                            </div>
                            <div class=" form-group col-md-6">
                                <label for="geographical_scope">Geographical-scope purpose of use</label>
                                <input name="geographical_scope" type="text" class="form-control" id="geographical_scope" placeholder="" value="" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="pilot_details">Pilot details (Hours of experience on) </label>
                                <input name="pilot_details" type="text" class="form-control value" id="pilot_details" placeholder="" value="" required>
                            </div>

                        </div>
                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="35">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                        </div>
                        <div class="row book-btn">
                            <div class="col-md-12">
                                <button type="submit" name="request" class="btn btn-primary">REQUEST
                                    ASSISTANCE
                                </button>
                            </div>
                        </div>
                    </div>
                </form>


            </div>
        </div>
    </div>
</div>

<!-- ===================================== BONDS LEAD FORM  ===================================== -->

<div id="modal-full_bonds" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/bonds.jpg'); background-size: cover;" uk-height-viewport></div>
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
                                <label for="type">Type of Bond</label>
                                <select id="type" name="type" class="form-control" required>
                                    <option value="-1" selected disabled>Choose...</option>
                                    <option name="tender" value="Tender Bonds">Tender Bonds</option>
                                    <option name="financial" value="Financial guarantee Bonds">Financial guarantee
                                        Bonds</option>
                                    <option name="advanced_payment" value="Advance Payment Bond">Advance Payment
                                        Bond</option>
                                    <option name="performance" value="Performance Bonds">Performance Bonds</option>
                                    <option name="work_permit" value="Work Permits/Security Bond">Work
                                        Permits/Security Bond</option>
                                    <option name="customs" value="Customs Bonds">Customs Bonds</option>
                                    <option name="retention" value="Retention Bonds">Retention Bonds</option>
                                    <option name="regional" value="Regional customs transit guarantee">Regional
                                        customs transit guarantee</option>
                                </select>
                            </div>
                            <div class=" form-group col-md-12">
                                <label for="value">Value of bond</label>
                                <input name="value" type="text" class="form-control" id="value" placeholder="" value="" required>
                            </div>
                        </div>

                    </div>
                    <div class="container">
                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="38">
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

<!-- ===================================== Engineering LEAD FORM  ===================================== -->

<div id="modal-full_egineer" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/engineer.jpg'); background-size: cover;" uk-height-viewport></div>
            <div class="uk-padding-large">


                <form id="form" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container"><br><br>
                    <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="full_name">Full Name</label>
                                <input name="full_name" type="text" class="form-control" id="full_name" placeholder="" value="" required>
                            </div>
                            <div class="form-group col-md-12">
                                <label for="phone">Mobile Number</label>
                                <input name="phone" type="tel" class="form-control" id="phone" placeholder="" value="" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="email">Email Address</label>
                                <input name="email" type="email" class="form-control" id="email" placeholder="" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                            </div>
                            <div class=" form-group col-md-12">
                                <label for="location">Location</label>
                                <input name="location" type="text" class="form-control" id="location" placeholder="" value="" required>
                            </div>
                            <div class=" form-group col-md-12">
                                <label for="occupation">Occupation</label>
                                <input name="occupation" type="text" class="form-control" id="occupation" placeholder="" value="" required>
                            </div>

                        </div>

                    </div>
                    <div class="container">

                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="33">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                        </div>
                        <div class="row book-btn">
                            <div class="col-md-12">
                                <button type="submit" name="request" class="btn btn-primary">REQUEST
                                    ASSISTANCE</button>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>

<!-- ===================================== FIRE LEAD FORM  ===================================== -->

<div id="modal-full_fire" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/fire.jpg'); background-size: cover;" uk-height-viewport></div>
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
                            <div class=" form-group col-md-12">
                                <label for="occupation">Occupation</label>
                                <input name="occupation" type="text" class="form-control" id="occupation" placeholder="Clerk" value="" required>
                            </div>
                            <div class=" form-group col-md-12">
                                <label for="property">Property status</label>
                                <select id="property" name="property" class="form-control selectFilter" data-target="section" required>
                                    <option value="-1" selected disabled>Choose...</option>
                                    <option data-ref="owner" name="owner" value="owner">Owner</option>
                                    <option data-ref="tenant" name="tenant" value="tenant">Occupatant (Tenant)
                                    </option>
                                </select>
                            </div>
                        </div>

                    </div>
                    <div class="container">

                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="33">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                        </div>
                        <div class="row book-btn">
                            <div class="col-md-12">
                                <button type="submit" name="request" class="btn btn-primary">REQUEST
                                    ASSISTANCE</button>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>

<!-- ===================================== Good In Transit LEAD FORM  ===================================== -->

<div id="modal-full_git" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/transport.jpg'); background-size: cover; background-position:right;" uk-height-viewport></div>
            <div class="uk-padding-large">


                <form id="form" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container"><br><br>
                    <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="full_name">Full Name</label>
                                <input name="full_name" type="text" class="form-control" id="full_name" placeholder="" value="" required>
                            </div>
                            <div class="form-group col-md-12">
                                <label for="phone">Mobile Number</label>
                                <input name="phone" type="tel" class="form-control" id="phone" placeholder="" value="" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="email">Email Address</label>
                                <input name="email" type="email" class="form-control" id="email" placeholder="" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                            </div>
                            <div class=" form-group col-md-12">
                                <label for="location">Location</label>
                                <input name="location" type="text" class="form-control" id="location" placeholder="" value="" required>
                            </div>
                            <div class=" form-group col-md-12">
                                <label for="occupation">Occupation</label>
                                <input name="occupation" type="text" class="form-control" id="occupation" placeholder="" value="" required>
                            </div>
                            <div class=" form-group col-md-12">
                                <label for="occupation">Types of goods</label>
                                <input name="occupation" type="text" class="form-control" id="occupation" placeholder="" value="" required>
                            </div>

                        </div>

                    </div>
                    <div class="container">

                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="33">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                        </div>
                        <div class="row book-btn">
                            <div class="col-md-12">
                                <button type="submit" name="request" class="btn btn-primary"> SUBMIT <i class="fas fa-paper-plane"></i> </button>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>

<!-- ===================================== Liability LEAD FORM ===================================== -->

<div id="modal-full_liability" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/liability.jpg'); background-size: cover;" uk-height-viewport>
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
                            <div class=" form-group col-md-12">
                                <label for="occupation">Occupation</label>
                                <input name="occupation" type="text" class="form-control" id="occupation" placeholder="Clerk" value="" required>
                            </div>
                        </div>

                    </div>
                    <div class="container">

                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="33">
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

<!-- ===================================== MOTOR COMMERCIAL LEAD FORM ===================================== -->

<div id="modal-full_mc" class="uk-modal-full" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
        <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
            <div class="uk-background-cover" style="background-image: url('img/motor1.jpg'); background-size: cover;" uk-height-viewport></div>
            <div class="uk-padding-large">
                <form id="form" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container">
                    <h3 for="inputAddress" class="comp-detail">PERSONAL DETAILS</h3>
                    <div class="container">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="full_name">Full Name</label>
                                <input name="full_name" type="text" class="form-control" id="full_name" placeholder="John doe" value="" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="phone">Mobile Number</label>
                                <input name="phone" type="tel" class="form-control" id="phone" placeholder="07xx 424 xxx" value="" required>
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
                                <input name="value" type="text" class="form-control" id="value" placeholder="1,400,000" value="" required>
                            </div>
                            <div class=" form-group col-md-6">
                                <label for="inputAddress2">Year of Manufacture</label>
                                <input name="yom" type="number" class="form-control" id="yom" placeholder="2019" value="" required data-parsley-pattern="^\d{4}$" data-parsley-trigger="keyup">
                            </div>
                        </div>
                        <div style="display: none">
                            <input type="hidden" id="product_id" name="product_id" value="26">
                            <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                        </div>
                        <div class="row book-btn">
                            <div class="col-md-12">
                                <button type="submit" name="request" class="btn btn-primary"> SUBMIT <i class="fas fa-paper-plane"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </form>


            </div>
        </div>
    </div>
</div>