<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>APA INSURANCE</title>
    <link rel="stylesheet" href="css/product.css" />
    <link rel="stylesheet" href="css/career.css" />
    <link rel="stylesheet" href="css/contact.css" />
    <link rel="stylesheet" href="css/apollo_centre.css" media="screen">
    <link rel="stylesheet" href="css/parsley.css" media="screen">


    <?php include 'views/head_links.php'; ?>
</head>

<body>


    <!-- ==============HEADER=============== -->
    <?php include 'views/nav.php'; ?>
    <!-- #header -->



    <!-- ===================================== JOB DESCRIPTION ===================================== -->
    <div class="container-fluid212">
        <div class="header-image header-image11 apollo-center">
        </div>
    </div>

    <div class="container product-container">
        <div class="row">
            <div class="col-12 contact-info-box">
                <div class="row">
                    <div class="col-md-5 contact-back">
                        <div class="content-info">
                            <h2>CONTACT INFORMATION</h2>
                            <p><i class="fas fa-street-view"></i> Addresss : Apollo Centre, Ring Rd Parklands<br>
                                Westlands Nairobi – Kenya.
                            </p>
                            <p><i class="fas fa-phone-square"></i> Telephone : O20 286 2000
                            </p>
                            <p><i class="fas fa-mobile"></i> Mobile Number :(+254) 70991277
                            </p>
                            <p><i class="fas fa-envelope-open-text"></i> Email :info@apainsurance.org
                            </p>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="content-info2">
                            <h2>DROP US A LINE ! </h2>

                            <form id="form" action="<?= $_SERVER['PHP_SELF']; ?>" method="POST" class="form-container">
                                <div class="form-algn"><br><br>
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                            <label for="full_name">Full Name / Company</label>
                                            <input name="full_name" type="text" class="form-control" id="full_name" placeholder="" value="" required>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="phone">Mobile Number / Contact person</label>
                                            <input name="phone" type="tel" class="form-control" id="phone" placeholder="" value="" required>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group col-md-12">
                                            <label for="email">Email Address</label>
                                            <input name="email" type="email" class="form-control" id="email" placeholder="" value="" required data-parsley-type="email" data-parsley-trigger="keyup">
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group col-md-12">
                                            <label for="full_name">Message / FeedBack</label>
                                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                                        </div>

                                    </div>

                                    <div style="display: none">
                                        <input type="hidden" id="product_id" name="product_id" value="9">
                                        <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                                    </div>
                                    <div class="row book-btn">
                                        <div class="col-md-12">
                                            <button type="submit" name="request" class="btn btn-primary"><i class="fas fa-paper-plane"></i> &nbsp; Send message
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>


    <section class="map">
        <h2> OUR BRANCHES</h2>
        
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3626.240283045972!2d36.80207168448322!3d-1.259388768112602!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x182f171338d2a965%3A0xc882ec8de269158!2sApollo%20Centre!5e0!3m2!1sen!2ske!4v1569853756860!5m2!1sen!2ske" 
            width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="">
        </iframe>

        <div class="container">
            <div class="row">
                <div class="col-md-3 ">
                    <div class="office-branch head-office">
                        <h2> Head Office</h2>
                        <p>location : apollo centre, Ring Road Parklands, westlands</p>
                        <p>Telephone : +254 (0) 20 364 1000</p>
                        <hr>
                        <p class="text-center get-direction"><a href="#"> Get Direction >> </a></p>
                    </div>
                </div>
                <div class="col-md-3 ">
                    <div class="office-branch head-office">
                        <h2> Head Office</h2>
                        <p>location : apollo centre, Ring Road Parklands, westlands</p>
                        <p>Telephone : +254 (0) 20 364 1000</p>
                        <hr>
                        <p class="text-center get-direction"><a href="#"> Get Direction >> </a></p>
                    </div>
                </div>
                <div class="col-md-3 ">
                    <div class="office-branch head-office">
                        <h2> Head Office</h2>
                        <p>location : apollo centre, Ring Road Parklands, westlands</p>
                        <p>Telephone : +254 (0) 20 364 1000</p>
                        <hr>
                        <p class="text-center get-direction"><a href="#"> Get Direction >> </a></p>
                    </div>
                </div>
                <div class="col-md-3 ">
                    <div class="office-branch head-office">
                        <h2> Head Office</h2>
                        <p>location : apollo centre, Ring Road Parklands, westlands</p>
                        <p>Telephone : +254 (0) 20 364 1000</p>
                        <hr>
                        <p class="text-center get-direction"><a href="#"> Get Direction >> </a></p>
                    </div>
                </div>


            </div>

            <div class="row">
                <div class="col-md-3 ">
                    <div class="office-branch branch">
                        <h2> Head Office</h2>
                        <p>location : apollo centre, Ring Road Parklands, westlands</p>
                        <p>Telephone : +254 (0) 20 364 1000</p>
                        <hr>
                        <p class="text-center get-direction"><a href="#"> Get Direction >> </a></p>
                    </div>
                </div>
                <div class="col-md-3 ">
                    <div class="office-branch branch">
                        <h2> Head Office</h2>
                        <p>location : apollo centre, Ring Road Parklands, westlands</p>
                        <p>Telephone : +254 (0) 20 364 1000</p>
                        <hr>
                        <p class="text-center get-direction"><a href="#"> Get Direction >> </a></p>
                    </div>
                </div>
                <div class="col-md-3 ">
                    <div class="office-branch branch">
                        <h2> Head Office</h2>
                        <p>location : apollo centre, Ring Road Parklands, westlands</p>
                        <p>Telephone : +254 (0) 20 364 1000</p>
                        <hr>
                        <p class="text-center get-direction"><a href="#"> Get Direction >> </a></p>
                    </div>
                </div>
                <div class="col-md-3 ">
                    <div class="office-branch branch">
                        <h2> Head Office</h2>
                        <p>location : apollo centre, Ring Road Parklands, westlands</p>
                        <p>Telephone : +254 (0) 20 364 1000</p>
                        <hr>
                        <p class="text-center get-direction"><a href="#"> Get Direction >> </a></p>
                    </div>
                </div>


            </div>

            <div class="row">
                <div class="col-md-3 ">
                    <div class="office-branch branch">
                        <h2> Head Office</h2>
                        <p>location : apollo centre, Ring Road Parklands, westlands</p>
                        <p>Telephone : +254 (0) 20 364 1000</p>
                        <hr>
                        <p class="text-center get-direction"><a href="#"> Get Direction >> </a></p>
                    </div>
                </div>
                <div class="col-md-3 ">
                    <div class="office-branch branch">
                        <h2> Head Office</h2>
                        <p>location : apollo centre, Ring Road Parklands, westlands</p>
                        <p>Telephone : +254 (0) 20 364 1000</p>
                        <hr>
                        <p class="text-center get-direction"><a href="#"> Get Direction >> </a></p>
                    </div>
                </div>
                <div class="col-md-3 ">
                    <div class="office-branch branch">
                        <h2> Head Office</h2>
                        <p>location : apollo centre, Ring Road Parklands, westlands</p>
                        <p>Telephone : +254 (0) 20 364 1000</p>
                        <hr>
                        <p class="text-center get-direction"><a href="#"> Get Direction >> </a></p>
                    </div>
                </div>
                <div class="col-md-3 ">
                    <div class="office-branch branch">
                        <h2> Head Office</h2>
                        <p>location : apollo centre, Ring Road Parklands, westlands</p>
                        <p>Telephone : +254 (0) 20 364 1000</p>
                        <hr>
                        <p class="text-center get-direction"><a href="#"> Get Direction >> </a></p>
                    </div>
                </div>
            </div>
            <br><br><br>
        </div>


    </section>


    <!-- =====================================FOOTER===================================== -->
    <?php include 'views/footer.php'; ?>
    <!-- #footer -->



    <?php
    require_once 'inc/scripts.php';
    ?>
    <script src="js/parsley.min.js"></script>
    <script src="js/lead.js"></script>
</body>

</html>