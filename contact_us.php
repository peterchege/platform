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
        <div class="header-image header-image12 feedback-apa">
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
                                            <label for="phone">Mobile Number</label>
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
                                            <label for="more_info">Message / FeedBack</label>
                                            <textarea name="more_info" class="form-control" id="more_info" rows="3"></textarea>
                                        </div>

                                    </div>

                                    <div style="display: none">
                                        <input type="hidden" id="product_id" name="product_id" value="50">
                                        <input type="hidden" id="product_category_id" name="product_category_id" value="14">
                                        <input type="hidden" id="type" name="type" value="Contact Us">

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


    <section class="map" id="branch">
        <h2> OUR BRANCHES</h2>

        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3626.240283045972!2d36.80207168448322!3d-1.259388768112602!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x182f171338d2a965%3A0xc882ec8de269158!2sApollo%20Centre!5e0!3m2!1sen!2ske!4v1569853756860!5m2!1sen!2ske" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="">
        </iframe>

        <div class="container">
            < <div class="row">
                <div class="col-md-3 ">
                    <div class="office-branch head-office">
                        <h2>Head Office</h2>
                        <p>Location: Apollo Centre, Ring Road Parklands, westlands</p>
                        <p>Tel: +254 (0) 20 364 1000</p>
                        <p>info@apainsurance.org</p>
                        <hr>
                        <p class="text-center get-direction"><a href="https://www.google.com/maps/place/Apollo+Centre/@-1.2719757,36.8038238,15z/data=!4m8!1m2!2m1!1sapollo+center!3m4!1s0x0:0xc882ec8de269158!8m2!3d-1.2594505!4d36.8044996" target="_blank">
                                Get Direction >> </a></p>
                    </div>
                </div>
                <div class="col-md-3 ">
                    <div class="office-branch head-office">
                        <h2>City Centre</h2>
                        <p>Location: 3rd foor, Barclays Plaza, Loita Street, Nairobi</p>
                        <p>Tel: 020-2862000</p>
                        <p>info@apainsurance.org</p>
                        <hr>
                        <p class="text-center get-direction"><a href="https://www.google.com/maps/place/Barclays+Plaza,+Nairobi/@-1.2844981,36.8155208,17z/data=!4m13!1m7!3m6!1s0x182f10d112aafefb:0x70b69579ce2040ca!2sBarclays+Plaza,+Nairobi!3b1!8m2!3d-1.2845035!4d36.8177095!3m4!1s0x182f10d112aafefb:0x70b69579ce2040ca!8m2!3d-1.2845035!4d36.8177095" target="_blank">Get Direction >> </a></p>
                    </div>
                </div>
                <div class="col-md-3 ">
                    <div class="office-branch head-office">
                        <h2>Thika Branch</h2>
                        <p>Location: 5th floor, Zuri Centre, Kenyatta Highway</p>
                        <p>Tel:+254 (0) 67 222 0196 </p>
                        <p>apa.thika@apainsurance.org</p>
                        <hr>
                        <p class="text-center get-direction"><a href="https://www.google.com/maps/place/Zuri+Centre/@-1.0384864,37.0752592,17z/data=!4m12!1m6!3m5!1s0x182f4e8ed448ce97:0xda9c404007719460!2sZuri+Centre!8m2!3d-1.0384864!4d37.0774479!3m4!1s0x182f4e8ed448ce97:0xda9c404007719460!8m2!3d-1.0384864!4d37.0774479" target="_blank">Get Direction >> </a></p>
                    </div>
                </div>
                <div class="col-md-3 ">
                    <div class="office-branch head-office">
                        <h2>Nanyuki Branch</h2>
                        <p>Location: ABC Imani Plaza, Ngei Road, Nanyuki</p>
                        <p>Tel: 020-2862000</p>
                        <p>info@apainsurance.org</p>
                        <!-- < <p>Telephone : +254 (0) 20 364 1000</p> -->
                        <hr>
                        <p class="text-center get-direction"><a href="https://www.google.com/maps/place/Nanyuki/@0.0103641,37.0579145,14z/data=!3m1!4b1!4m5!3m4!1s0x1787f645b31e6c19:0x4df54c49d367f643!8m2!3d0.0074415!4d37.0722303" target="_blank"> Get Direction >> </a></p>
                    </div>
                </div>


        </div>

        <div class="row">
            <div class="col-md-3 ">
                <div class="office-branch branch">
                    <h2>Nakuru Branch</h2>
                    <p>Location: Giddo Plaza, HarvesterRoad, Nakuru</p>
                    <p>Tel: 051-2213412/6</p>
                    <p></p>apa.nakuru@apainsurance.org</p>
                    <hr>
                    <p class="text-center get-direction"><a href="https://www.google.com/maps/place/Giddo+Plaza/@-0.2871936,36.0573381,17z/data=!3m1!4b1!4m5!3m4!1s0x18298db861e220d7:0xca07ce732256503e!8m2!3d-0.287199!4d36.0595268" target="_blank"> Get Direction >> </a></p>
                </div>
            </div>
            <div class="col-md-3 ">
                <div class="office-branch branch">
                    <h2>Kisii Branch</h2>
                    <p>location: Mocha Place, Kisii-Kisumu Highway</p>
                    <p>Tel: 058 203 1773| 020 286 2327</p>
                    <p>apa.kisii@apainsurance.org</p>

                    <hr>
                    <p class="text-center get-direction"><a href="https://www.google.com/maps/place/Mocha+Place,+Kisii/@-0.6709952,34.7664811,17z/data=!3m1!4b1!4m5!3m4!1s0x182b3bf6cbbb4433:0xf31a4b128de97c92!8m2!3d-0.6710006!4d34.7686698" target="_blank">Get Direction >> </a></p>
                </div>
            </div>
            <div class="col-md-3 ">
                <div class="office-branch branch">
                    <h2>Eldoret Branch</h2>
                    <p>Location: 1st Floor, Zion Mall,Uganda Road</p>
                    <p>Tel: 053 203 0937 | 020 286 2334</p>
                    <p>apa.eldoret@"apainsurance.org</p>
                    <hr>
                    <p class="text-center get-direction"> <a href="https://www.google.com/maps/search/Zion+Mall,Uganda+Road/@0.5177737,35.2759758,17z/data=!3m1!4b1" target="_blank">
                            Get Direction >> </a></p>
                </div>
            </div>
            <div class="col-md-3 ">
                <div class="office-branch branch">
                    <h2>Naivasha Branch</h2>
                    <p>location: 1st floor,Eagle Center, Mbari Kaniu Road</p>
                    <p>Tel: 050 202 0086 | 020 086 2353</p>
                    <P>apa.naivasha@apainsurance.org</P>
                    <hr>
                    <p class="text-center get-direction"><a href="https://www.google.com/maps/place/Mbaria+Kaniu+Rd,+Naivasha/@-0.7145835,36.4313025,17z/data=!3m1!4b1!4m5!3m4!1s0x182917f51ef8304f:0x2881fee7966ad491!8m2!3d-0.7145889!4d36.4334912" target="_blank">Get Direction>> </a></p>
                </div>
            </div>


        </div>

        <div class="row">
            <div class="col-md-3 ">
                <div class="office-branch branch">
                    <h2>Meru Branch</h2>
                    <p>location: 2nd Floor, Hart Towers, off Meru Highway</p>
                    <p>Tel: +254 (0) 74 31821</p>
                    <p>apa.meru@apainsurance.org</p>
                    <hr>
                    <p class="text-center get-direction"><a href="https://www.google.com/maps/place/Hart+Towers/@0.0465869,37.6505424,17z/data=!3m1!4b1!4m5!3m4!1s0x178821e90e482067:0x2dbb00589d0df281!8m2!3d0.0465815!4d37.6527311" target="_blank"> Get Direction >> </a></p>
                </div>
            </div>
            <div class="col-md-3 ">
                <div class="office-branch branch">
                    <h2>Embu Branch</h2>
                    <p>Location: 1st Floor, Ganga Building, Kenyatta Highway</p>
                    </p>
                    <p>Tel: 068-2230103</p>
                    <p>apa.embu@apainsurance.org</p>
                    <hr>
                    <p class="text-center get-direction"><a href="https://www.google.com/maps/place/Embu/@-0.5365192,37.4432441,14z/data=!3m1!4b1!4m5!3m4!1s0x18262de0b161c82f:0x86c79bba0e2b8896!8m2!3d-0.5388381!4d37.4596409" target="_blank"> Get Direction >> </a></p>
                </div>
            </div>
            <div class="col-md-3 ">
                <div class="office-branch branch">
                    <h2>Machakos Branch</h2>
                    <p>location: ABC Imani Plaza, Ngei Road, Machakos</p>
                    <p>Tel: +254 (0)44 21455</p>
                    <p>apa.machakos@apainsurance.org</p>
                    <hr>
                    <p class="text-center get-direction"><a href="https://www.google.com/maps/place/ABC+Imani+Plaza+I/@-1.5205461,37.266134,17z/data=!3m1!4b1!4m5!3m4!1s0x182f87332e36e72d:0x58559753fcc92f53!8m2!3d-1.5205515!4d37.2683227" target="_blank"> Get Direction >> </a></p>
                </div>
            </div>
            <div class="col-md-3 ">
                <div class="office-branch branch">
                    <h2>Nyeri Branch</h2>
                    <p>location: Peak Business Centre, Nyeri</p>
                    <p>Tel: 061-2030332</p>
                    <p>apa.nyeri@apainsurance.org</p>
                    <hr>
                    <p class="text-center get-direction"><a href="https://www.google.com/maps/place/Peak+Business+Center/@-0.4234975,36.9498539,17z/data=!3m1!4b1!4m5!3m4!1s0x18285e0197213ce9:0x12a4c3ec3431328b!8m2!3d-0.4235029!4d36.9520426" target="_blank"> Get Direction >> </a></p>
                </div>
            </div>
        </div>
        <br><br><br>

        <div class="row">
            <div class="col-md-4 ">
                <div class="office-branch branch">
                    <h2>Kisumu Branch</h2>
                    <p>location:TuffFoam Plaza, Milimani, Achieng Oneko Rd</p>
                    <p>Tel: +254 (0) 20 216 2908</p>
                    <p>apa.kisumu@apainsurance.org</p>
                    <hr>
                    <p class="text-center get-direction"><a href="https://www.google.com/maps/place/Tuffoam+Plaza/@-0.1065607,34.7518134,17z/data=!3m1!4b1!4m5!3m4!1s0x182aa4956d6f3b07:0x1815d9396e0d1061!8m2!3d-0.1065661!4d34.7540021" target="_blank"> Get Direction >> </a></p>
                </div>

            </div>
            <div class="col-md-4 ">
                <div class="office-branch branch">
                    <h2>Mombasa Branch</h2>
                    <p>Location: Apollo Court, Moi Avenue, Mombasa</p>
                    </p>
                    <p>Tel: 041-2221941/7506</p>
                    <p>apa.mombasa@apainsurance.org</p>
                    <hr>
                    <p class="text-center get-direction"><a href="https://www.google.com/maps/place/Apollo+House/@-4.0607432,39.6562745,17z/data=!3m1!4b1!4m5!3m4!1s0x18401329df036b0f:0x3e432088743117a3!8m2!3d-4.0607486!4d39.6584632" target="_blank"> Get Direction >> </a></p>

                </div>
            </div> <br><br><br>
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