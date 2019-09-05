  <!-- ===================================== APOLLO CENTRE Booking Form ===================================== -->
  <!-- shimba hill -->

  <div id="modal-full" class="uk-modal-full" uk-modal>
      <div class="uk-modal-dialog">
          <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
          <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
              <div class="uk-background-cover" style="background-image: url('images/shimba/img5.jpg'); background-size: cover;" uk-height-viewport></div>
              <div class="uk-padding-large">


                  <form class="form-container" action="" method="POST">
                      <div class="form-group col-md-12">
                          <h3 for="inputAddress">BOOKING DETAILS</h3>
                          <select name="room_name" id="room_name" class="custom-select custom-select-lg mb-3" value="">
                              <option value="1" selected>Shimba Hills (Boardroom 18pax)</option>
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
                                  <input id="start_date" name="start_date" type="date" class="form-control" placeholder="Start date" value="">
                              </div>

                              <div class="form-group col-md-6">
                                  <label for="inputPassword4">End Date</label> <input name="end_date" id="end_date" type="date" class="form-control" placeholder="End date" value="">
                              </div>
                          </div>

                          <div class="row">
                              <div class="form-group col-md-6">
                                  <label for="inputEmail4">Start Time</label>
                                  <input id="start_time" name="start_time" type="time" min="06:00:00" class="form-control" placeholder="Start time" value="">
                              </div>
                              <div class="form-group col-md-6">
                                  <label for="inputPassword4">End Time</label>
                                  <input id="end_time" name="end_time" type="time" max="18:00:00" class="form-control" id="inputPassword4" placeholder="End time" value="">
                              </div>
                          </div>
                      </div>

                      <h3 for="inputAddress" class="comp-detail">GUEST DETAILS</h3>
                      <div class="container">
                          <div class="row">
                              <div class="form-group col-md-6">
                                  <label for="inputAddress">Name</label>
                                  <input name="company_name" id="company_name" type="text" class="form-control" placeholder="Full Name" value="">
                              </div>
                              <div class="form-group col-md-6">
                                  <label for="inputAddress2">Phone Number</label>
                                  <input name="phone" id="phone" type="tel" class="form-control" placeholder="Phone Number" value="">
                              </div>
                          </div>

                          <div class="row">
                              <div class="form-group col-md-6">
                                  <label for="inputAddress">Email Address</label>
                                  <input name="email" id="email" type="email" class="form-control" placeholder="Email" value="">
                              </div>
                              <div class=" form-group col-md-6">
                                  <label for="inputAddress2">Number of Guests</label>
                                  <input name="capacity" id="capacity" type="number" min="1" class="form-control" placeholder="Pax" value="">
                              </div>
                          </div>

                          <div class="row">
                              <div class="form-group col-md-12">
                                  <label for="inputAddress">More Information</label>
                                  <textarea name="more_information" id="more_information" class="form-control"></textarea>
                              </div>
                          </div>

                          <div class="row book-btn">
                              <div class="col-md-12">
                                  <p id="display"></p>
                                  <button name="submit" type="submit" class="btn btn-primary submit" id="submit">BOOK NOW</button>
                              </div>
                          </div>
                      </div>


                  </form>

              </div>
          </div>
      </div>
  </div>

  <!-- ===================================== Chyullu Hills Booking Form ===================================== -->

  <div id="modal-full1" class="uk-modal-full" uk-modal>
      <div class="uk-modal-dialog">
          <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
          <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
              <div class="uk-background-cover" style="background-image: url('images/chyullu/img6.jpg'); background-size: cover;" uk-height-viewport></div>
              <div class="uk-padding-large">


                  <form class="form-container" action="" method="POST">
                      <div class="form-group col-md-12">
                          <h3 for="inputAddress">Room Name</h3>
                          <select name="room_name" id="room_name1" class="custom-select custom-select-lg mb-3" value="">
                              <option value="1">Shimba Hills (Boardroom 18pax)</option>
                              <option value="2">Taita Hills (10-12pax)</option>
                              <option value="3">Ngong Hills (Boardroom 8pax)</option>
                              <option value="4" selected>Chyullu Hills (Auditorium 40pax)</option>
                              <option value="5">Cherengani Hills (Training Room)</option>
                              <option value="6">Entertainment Area</option>
                          </select>
                      </div>

                      <div class="container">
                          <div class="row">
                              <div class="form-group col-md-6">
                                  <label for="start_date1">Start Date</label>
                                  <input id="start_date1" name="start_date" type="date" class="form-control" placeholder="Start date" value="">
                              </div>

                              <div class="form-group col-md-6">
                                  <label for="inputPassword4">End Date</label> <input id="end_date1" name="end_date" type="date" class="form-control" placeholder="End date" value="">
                              </div>
                          </div>

                          <div class="row">
                              <div class="form-group col-md-6">
                                  <label for="inputEmail4">Start Time</label>
                                  <input id="start_time1" name="start_time" type="time" min="06:00:00" class="form-control" placeholder="Start time" value="">
                              </div>
                              <div class="form-group col-md-6">
                                  <label for="inputPassword4">End Time</label>
                                  <input id="end_time1" name="end_time" type="time" max="18:00:00" class="form-control" id="inputPassword4" placeholder="End time" value="">
                              </div>
                          </div>
                      </div>

                      <h3 for="inputAddress" class="comp-detail">COMPANY DETAIL</h3>
                      <div class="container">
                          <div class="row">
                              <div class="form-group col-md-6">
                                  <label for="inputAddress">Name</label>
                                  <input id="company_name1" name="company_name" type="text" class="form-control" placeholder="Full Name" value="">
                              </div>
                              <div class="form-group col-md-6">
                                  <label for="inputAddress2">Phone Number</label>
                                  <input id="phone1" name="phone" type="tel" class="form-control" placeholder="Phone Number" value="">
                              </div>
                          </div>

                          <div class="row">
                              <div class="form-group col-md-6">
                                  <label for="inputAddress">Email Address</label>
                                  <input id="email1" name="email" type="email" class="form-control" placeholder="Email" value="">
                              </div>
                              <div class=" form-group col-md-6">
                                  <label for="inputAddress2">Capacity</label>
                                  <input id="capacity1" name="capacity" type="number" min="1" class="form-control" placeholder="pax" value="">
                              </div>
                          </div>

                          <div class="row">
                              <div class="form-group col-md-12">
                                  <label for="inputAddress">More Information</label>
                                  <textarea id="more_information1" name="more_information" class="form-control"></textarea>
                              </div>
                          </div>

                          <div class="row book-btn">
                              <div class="col-md-12">
                                  <p id="display1"></p>
                                  <button id="submit1" name="submit" type="submit" class="btn btn-primary submit">BOOK NOW</button>
                              </div>
                          </div>
                      </div>


                  </form>

              </div>
          </div>
      </div>
  </div>

  <!-- ===================================== Cherengani Hills Booking Form ===================================== -->

  <div id="modal-full2" class="uk-modal-full" uk-modal>
      <div class="uk-modal-dialog">
          <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
          <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
              <div class="uk-background-cover" style="background-image: url('images/cherengani/img5.jpg'); background-size: cover;" uk-height-viewport></div>
              <div class="uk-padding-large">


                  <form class="form-container" action="" method="POST">
                      <div class="form-group col-md-12">
                          <h3 for="inputAddress">Room Name</h3>
                          <select name="room_name" id="room_name2" class="custom-select custom-select-lg mb-3" value="">
                              <option value="1">Shimba Hills (Boardroom 18pax)</option>
                              <option value="2">Taita Hills (10-12pax)</option>
                              <option value="3">Ngong Hills (Boardroom 8pax)</option>
                              <option value="4">Chyullu Hills (Auditorium 40pax)</option>
                              <option value="5" selected>Cherengani Hills (Training Room)</option>
                              <option value="6">Entertainment Area</option>
                          </select>
                      </div>

                      <div class="container">
                          <div class="row">
                              <div class="form-group col-md-6">
                                  <label for="start_date2">Start Date</label>
                                  <input id="start_date2" name="start_date" type="date" class="form-control" placeholder="Start date" value="">
                              </div>

                              <div class="form-group col-md-6">
                                  <label for="inputPassword4">End Date</label> <input id="end_date2" name="end_date" type="date" class="form-control" placeholder="End date" value="">
                              </div>
                          </div>

                          <div class="row">
                              <div class="form-group col-md-6">
                                  <label for="inputEmail4">Start Time</label>
                                  <input id="start_time2" name="start_time" type="time" min="06:00:00" class="form-control" placeholder="Start time" value="">
                              </div>
                              <div class="form-group col-md-6">
                                  <label for="inputPassword4">End Time</label>
                                  <input id="end_time2" name="end_time" type="time" max="18:00:00" class="form-control" id="inputPassword4" placeholder="End time" value="">
                              </div>
                          </div>
                      </div>

                      <h3 for="inputAddress" class="comp-detail">COMPANY DETAIL</h3>
                      <div class="container">
                          <div class="row">
                              <div class="form-group col-md-6">
                                  <label for="inputAddress">Name</label>
                                  <input id="company_name2" name="company_name" type="text" class="form-control" placeholder="Full Name" value="">
                              </div>
                              <div class="form-group col-md-6">
                                  <label for="inputAddress2">Phone Number</label>
                                  <input id="phone2" name="phone" type="tel" class="form-control" placeholder="Phone Number" value="">
                              </div>
                          </div>

                          <div class="row">
                              <div class="form-group col-md-6">
                                  <label for="inputAddress">Email Address</label>
                                  <input id="email2" name="email" type="email" class="form-control" placeholder="Email" value="">
                              </div>
                              <div class=" form-group col-md-6">
                                  <label for="inputAddress2">Capacity</label>
                                  <input id="capacity2" name="capacity" type="number" min="1" class="form-control" placeholder="pax" value="">
                              </div>
                          </div>

                          <div class="row">
                              <div class="form-group col-md-12">
                                  <label for="inputAddress">More Information</label>
                                  <textarea id="more_information2" name="more_information" class="form-control"></textarea>
                              </div>
                          </div>

                          <div class="row book-btn">
                              <div class="col-md-12">
                                  <p id="display2"></p>
                                  <button id="submit2" name="submit" type="submit" class="btn btn-primary submit">BOOK NOW</button>
                              </div>
                          </div>
                      </div>


                  </form>

              </div>
          </div>
      </div>
  </div>

  <!-- ===================================== Entertainment Area Booking Form ===================================== -->

  <div id="modal-full3" class="uk-modal-full" uk-modal>
      <div class="uk-modal-dialog">
          <button class="uk-modal-close-full uk-close-large" type="button" uk-close></button>
          <div class="uk-grid-collapse uk-child-width-1-2@s uk-flex-top" uk-grid>
              <div class="uk-background-cover" style="background-image: url('images/Entertainment/img11.jpg'); background-size: cover;" uk-height-viewport>
              </div>
              <div class="uk-padding-large">
                  <form class="form-container" action="" method="POST">
                      <div class="form-group col-md-12">
                          <h3 for="inputAddress">Room Name</h3>
                          <select name="room_name" id="room_name3" class="custom-select custom-select-lg mb-3" value="">
                              <option value="1">Shimba Hills (Boardroom 18pax)</option>
                              <option value="2">Taita Hills (10-12pax)</option>
                              <option value="3">Ngong Hills (Boardroom 8pax)</option>
                              <option value="4">Chyullu Hills (Auditorium 40pax)</option>
                              <option value="5">Cherengani Hills (Training Room)</option>
                              <option value="6" selected>Entertainment Area</option>
                          </select>
                      </div>

                      <div class="container">
                          <div class="row">
                              <div class="form-group col-md-6">
                                  <label for="start_date3">Start Date</label>
                                  <input id="start_date3" name="start_date" type="date" class="form-control" placeholder="Start date" value="">
                              </div>

                              <div class="form-group col-md-6">
                                  <label for="inputPassword4">End Date</label> <input id="end_date3" name="end_date" type="date" class="form-control" placeholder="End date" value="">
                              </div>
                          </div>

                          <div class="row">
                              <div class="form-group col-md-6">
                                  <label for="inputEmail4">Start Time</label>
                                  <input id="start_time3" name="start_time" type="time" min="06:00:00" class="form-control" placeholder="Start time" value="">
                              </div>
                              <div class="form-group col-md-6">
                                  <label for="inputPassword4">End Time</label>
                                  <input id="end_time3" name="end_time" type="time" max="18:00:00" class="form-control" id="inputPassword4" placeholder="End time" value="">
                              </div>
                          </div>
                      </div>

                      <h3 for="inputAddress" class="comp-detail">COMPANY DETAIL</h3>
                      <div class="container">
                          <div class="row">
                              <div class="form-group col-md-6">
                                  <label for="inputAddress">Name</label>
                                  <input id="company_name3" name="company_name" type="text" class="form-control" placeholder="Full Name" value="">
                              </div>
                              <div class="form-group col-md-6">
                                  <label for="inputAddress3">Phone Number</label>
                                  <input id="phone3" name="phone" type="tel" class="form-control" placeholder="Phone Number" value="">
                              </div>
                          </div>

                          <div class="row">
                              <div class="form-group col-md-6">
                                  <label for="inputAddress">Email Address</label>
                                  <input id="email3" name="email" type="email" class="form-control" placeholder="Email" value="">
                              </div>
                              <div class=" form-group col-md-6">
                                  <label for="inputAddress3">Capacity</label>
                                  <input id="capacity3" name="capacity" type="number" min="1" class="form-control" placeholder="pax" value="">
                              </div>
                          </div>

                          <div class="row">
                              <div class="form-group col-md-12">
                                  <label for="inputAddress">More Information</label>
                                  <textarea id="more_information3" name="more_information" class="form-control"></textarea>
                              </div>
                          </div>

                          <div class="row book-btn">
                              <div class="col-md-12">
                                  <p id="display3"></p>
                                  <button id="submit3" name="submit" type="submit" class="btn btn-primary submit">BOOK NOW</button>
                              </div>
                          </div>
                      </div>
                  </form>
              </div>
          </div>
      </div>
  </div>