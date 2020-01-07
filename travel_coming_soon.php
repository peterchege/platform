<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title> Products - APA Insurance</title>

    <!-- META DATA DESCRIPTION FOR GOOGLE SEARCH RESULT -->
    <meta name="description" content="get a quote and buy a product online today. some of our products are: travel insurance, 
    motor insurance, domestic package, home insurance, health insurance, personal accident cover, group life, WIBA, last expense, credit life, pension ">
    <meta name="keywords" content="insurance cover, apa products, apa insurance limited, Life insurance, personal cover,  
    buy insurance cover, buy cover online, cover quotation, insurance online quotation, apa online services">
    <meta name="author" content="">

    <!-- FACEBOOK MEATADATA -->
    <meta property="og:url" content="https://www.apainsurance.org/products.php" />
    <meta property="og:type" content="article" />
    <meta property="og:title" content="get a cover today" />
    <meta property="og:description" content=" You can now purchase insurance, service your policies and report a claim online. 
    This gives you more time to do the things that you love most" />

    <!-- STYLESHEET -->
    <!-- <link rel="stylesheet" href="css/apollo_centre.css" media="screen"> -->
    <!-- <link rel="stylesheet" href="css/modal.css" media="screen"> -->
    <!-- <link rel="stylesheet" href="css/product.css" media="screen"> -->
    <link rel="stylesheet" href="css/parsley.css" media="screen">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" />


    <?php include 'views/head_links.php'; ?>

</head>

<body>

    <!--==========================
    Header
    ============================-->
    <?php include 'views/nav.php'; ?>
    <!-- #header -->

    <!--==========================
    Intro Section
    ============================-->
    <section>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6">
                    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dignissimos amet
                        accusantium neque pariatur, quas dolore, repellendus accusamus est consequuntur
                        et id odio corrupti non at error. Magni laborum modi blanditiis!</p>
                </div>
                <div class="col-md-6">
                    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Dignissimos amet
                        accusantium neque pariatur, quas dolore, repellendus accusamus est consequuntur
                        et id odio corrupti non at error. Magni laborum modi blanditiis!</p>
                </div>
            </div>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js">
    </script>
    <script>
        $('.type-pet').multiselect({
            nonSelectedText: 'Select pet type',
            enableFiltering: false,
            enableCaseInsensitiveFiltering: false,
            buttonWidth: '100%'
        });
    </script>
</body>

</html>