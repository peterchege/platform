jQuery(document).ready(function($) {
    //booking info for shimba hills on apollo centre and homepage
    $('#submit').click(function(e) {
        e.preventDefault();
        var room_name = $('#room_name option:selected').val();
        var start_date = $('#start_date').val();
        var end_date = $('#end_date').val();
        var start_time = $('#start_time').val();
        var end_time = $('#end_time').val();
        var company_name = $('#company_name').val();
        var phone = $('#phone').val();
        var email = $('#email').val();
        var capacity = $('#capacity').val();
        var more_information = $('#more_information').val();
        console.log(more_information);

        var dataString = 'room_name=' + room_name + '&start_date=' + start_date + '&end_date=' + end_date + '&start_time=' + start_time + '&end_time=' + end_time + '&company_name=' + company_name + '&phone=' + phone + '&email=' + email + '&more_information=' + more_information + '&capacity=' + capacity;
        console.log(dataString);

        if (room_name == 'Select preferred room') {
            $('#display').html('<div class="alert alert-danger" >Please select a room.</div>');
        } else if (room_name == '' || start_date == '' || end_date == '' || start_time == '' || end_time == '' || company_name == '' || phone == '' || email == '' || capacity == '' || more_information == '') {
            $('#display').html('<div class="alert alert-danger" >Please fill all the fields.</div>');
        } else {
            $.ajax({
                type: "POST",
                url: "inc/processor.php",
                data: dataString,
                success: function(result) {
                    $('#display').html(result);
                }
            });
            $('input,textarea,select').val('');
        }
        return false;
    });

    // chyullu
    $('#submit1').click(function(e) {
        e.preventDefault();
        var room_name1 = $('#room_name1 option:selected').val();
        var start_date1 = $('#start_date1').val();
        var end_date1 = $('#end_date1').val();
        var start_time1 = $('#start_time1').val();
        var end_time1 = $('#end_time1').val();
        var company_name1 = $('#company_name1').val();
        var phone1 = $('#phone1').val();
        var email1 = $('#email1').val();
        var capacity1 = $('#capacity1').val();
        var more_information1 = $('#more_information1').val();
        console.log(more_information1);

        var dataString = 'room_name=' + room_name1 + '&start_date=' + start_date1 + '&end_date=' + end_date1 + '&start_time=' + start_time1 + '&end_time=' + end_time1 + '&company_name=' + company_name1 + '&phone=' + phone1 + '&email=' + email1 + '&more_information=' + more_information1 + '&capacity=' + capacity1;
        console.log(dataString);

        if (room_name1 == 'Select preferred room') {
            $('#display1').html('<div class="alert alert-danger" >Please select a room.</div>');
        } else if (room_name1 == '' || start_date1 == '' || end_date1 == '' || start_time1 == '' || end_time1 == '' || company_name1 == '' || phone1 == '' || email1 == '' || capacity1 == '' || more_information1 == '') {
            $('#display1').html('<div class="alert alert-danger" >Please fill all the fields.</div>');
        } else {
            $.ajax({
                type: "POST",
                url: "inc/processor.php",
                data: dataString,
                success: function(result) {
                    $('#display1').html(result);
                }
            });
            $('input,textarea,select').val('');
        }
        return false;
    });

    // cherengani
    $('#submit2').click(function(e) {
        e.preventDefault();
        var room_name2 = $('#room_name2 option:selected').val();
        var start_date2 = $('#start_date2').val();
        var end_date2 = $('#end_date2').val();
        var start_time2 = $('#start_time2').val();
        var end_time2 = $('#end_time2').val();
        var company_name2 = $('#company_name2').val();
        var phone2 = $('#phone2').val();
        var email2 = $('#email2').val();
        var capacity2 = $('#capacity2').val();
        var more_information2 = $('#more_information2').val();
        console.log(more_information2);

        var dataString = 'room_name=' + room_name2 + '&start_date=' + start_date2 + '&end_date=' + end_date2 + '&start_time=' + start_time2 + '&end_time=' + end_time2 + '&company_name=' + company_name2 + '&phone=' + phone2 + '&email=' + email2 + '&more_information=' + more_information2 + '&capacity=' + capacity2;
        console.log(dataString);

        if (room_name2 == 'Select preferred room') {
            $('#display2').html('<div class="alert alert-danger" >Please select a room.</div>');
        } else if (room_name2 == '' || start_date2 == '' || end_date2 == '' || start_time2 == '' || end_time2 == '' || company_name2 == '' || phone2 == '' || email2 == '' || capacity2 == '' || more_information2 == '') {
            $('#display2').html('<div class="alert alert-danger" >Please fill all the fields.</div>');
        } else {
            $.ajax({
                type: "POST",
                url: "inc/processor.php",
                data: dataString,
                success: function(result) {
                    $('#display2').html(result);
                }
            });
            $('input,textarea,select').val('');
        }
        return false;
    });

    // entertainment area
    $('#submit3').click(function(e) {
        e.preventDefault();
        var room_name3 = $('#room_name3 option:selected').val();
        var start_date3 = $('#start_date3').val();
        var end_date3 = $('#end_date3').val();
        var start_time3 = $('#start_time3').val();
        var end_time3 = $('#end_time3').val();
        var company_name3 = $('#company_name3').val();
        var phone3 = $('#phone3').val();
        var email3 = $('#email3').val();
        var capacity3 = $('#capacity3').val();
        var more_information3 = $('#more_information3').val();
        console.log(more_information3);

        var dataString = 'room_name=' + room_name3 + '&start_date=' + start_date3 + '&end_date=' + end_date3 + '&start_time=' + start_time3 + '&end_time=' + end_time3 + '&company_name=' + company_name3 + '&phone=' + phone3 + '&email=' + email3 + '&more_information=' + more_information3 + '&capacity=' + capacity3;
        console.log(dataString);

        if (room_name3 == 'Select preferred room') {
            $('#display3').html('<div class="alert alert-danger" >Please select a room.</div>');
        } else if (room_name3 == '' || start_date3 == '' || end_date3 == '' || start_time3 == '' || end_time3 == '' || company_name3 == '' || phone3 == '' || email3 == '' || capacity3 == '' || more_information3 == '') {
            $('#display3').html('<div class="alert alert-danger" >Please fill all the fields.</div>');
        } else {
            $.ajax({
                type: "POST",
                url: "inc/processor.php",
                data: dataString,
                success: function(result) {
                    $('#display3').html(result);
                }
            });
            $('input,textarea,select').val('');
        }
        return false;
    });

    // Back to top button
    $(window).scroll(function() {
        if ($(this).scrollTop() > 100) {
            $('.back-to-top').fadeIn('slow');
        } else {
            $('.back-to-top').fadeOut('slow');
        }
    });
    $('.back-to-top').click(function() {
        $('html, body').animate({
            scrollTop: 0
        }, 1500, 'easeInOutExpo');
        return false;
    });

    // Initiate the wowjs animation library
    new WOW().init();

    // Initiate superfish on nav menu
    $('.nav-menu').superfish({
        animation: {
            opacity: 'show'
        },
        speed: 400
    });

    // Mobile Navigation
    if ($('#nav-menu-container').length) {
        var $mobile_nav = $('#nav-menu-container').clone().prop({
            id: 'mobile-nav'
        });
        $mobile_nav.find('> ul').attr({
            'class': '',
            'id': ''
        });
        $('body').append($mobile_nav);
        $('body').prepend('<button type="button" id="mobile-nav-toggle"><i class="fa fa-bars"></i></button>');
        $('body').append('<div id="mobile-body-overly"></div>');
        $('#mobile-nav').find('.menu-has-children').prepend('<i class="fa fa-chevron-down"></i>');

        $(document).on('click', '.menu-has-children i', function(e) {
            $(this).next().toggleClass('menu-item-active');
            $(this).nextAll('ul').eq(0).slideToggle();
            $(this).toggleClass("fa-chevron-up fa-chevron-down");
        });

        $(document).on('click', '#mobile-nav-toggle', function(e) {
            $('body').toggleClass('mobile-nav-active');
            $('#mobile-nav-toggle i').toggleClass('fa-times fa-bars');
            $('#mobile-body-overly').toggle();
        });

        $(document).click(function(e) {
            var container = $("#mobile-nav, #mobile-nav-toggle");
            if (!container.is(e.target) && container.has(e.target).length === 0) {
                if ($('body').hasClass('mobile-nav-active')) {
                    $('body').removeClass('mobile-nav-active');
                    $('#mobile-nav-toggle i').toggleClass('fa-times fa-bars');
                    $('#mobile-body-overly').fadeOut();
                }
            }
        });
    } else if ($("#mobile-nav, #mobile-nav-toggle").length) {
        $("#mobile-nav, #mobile-nav-toggle").hide();
    }

    // Smooth scroll for the menu and links with .scrollto classes
    $('.nav-menu a, #mobile-nav a, .scrollto').on('click', function() {
        if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
            var target = $(this.hash);
            if (target.length) {
                var top_space = 0;

                if ($('#header').length) {
                    top_space = $('#header').outerHeight();

                    if (!$('#header').hasClass('header-fixed')) {
                        top_space = top_space - 20;
                    }
                }

                $('html, body').animate({
                    scrollTop: target.offset().top - top_space
                }, 1500, 'easeInOutExpo');

                if ($(this).parents('.nav-menu').length) {
                    $('.nav-menu .menu-active').removeClass('menu-active');
                    $(this).closest('li').addClass('menu-active');
                }

                if ($('body').hasClass('mobile-nav-active')) {
                    $('body').removeClass('mobile-nav-active');
                    $('#mobile-nav-toggle i').toggleClass('fa-times fa-bars');
                    $('#mobile-body-overly').fadeOut();
                }
                return false;
            }
        }
    });

    // Header scroll class
    $(window).scroll(function() {
        if ($(this).scrollTop() > 100) {
            $('#header').addClass('header-scrolled');
        } else {
            $('#header').removeClass('header-scrolled');
        }
    });

    // Intro carousel
    var introCarousel = $(".carousel");
    var introCarouselIndicators = $(".carousel-indicators");
    introCarousel.find(".carousel-inner").children(".carousel-item").each(function(index) {
        (index === 0) ?
        introCarouselIndicators.append("<li data-target='#introCarousel' data-slide-to='" + index + "' class='active'></li>"):
            introCarouselIndicators.append("<li data-target='#introCarousel' data-slide-to='" + index + "'></li>");

        $(this).css("background-image", "url('" + $(this).children('.carousel-background').children('img').attr('src') + "')");
        $(this).children('.carousel-background').remove();
    });

    $(".carousel").swipe({
        swipe: function(event, direction, distance, duration, fingerCount, fingerData) {
            if (direction == 'left') $(this).carousel('next');
            if (direction == 'right') $(this).carousel('prev');
        },
        allowPageScroll: "vertical"
    });

    // Skills section
    $('#skills').waypoint(function() {
        $('.progress .progress-bar').each(function() {
            $(this).css("width", $(this).attr("aria-valuenow") + '%');
        });
    }, {
        offset: '80%'
    });

    // jQuery counterUp (used in Facts section)
    $('[data-toggle="counter-up"]').counterUp({
        delay: 10,
        time: 1000
    });

    // Porfolio isotope and filter
    var portfolioIsotope = $('.portfolio-container').isotope({
        itemSelector: '.portfolio-item',
        layoutMode: 'fitRows'
    });

    $('#portfolio-flters li').on('click', function() {
        $("#portfolio-flters li").removeClass('filter-active');
        $(this).addClass('filter-active');

        portfolioIsotope.isotope({
            filter: $(this).data('filter')
        });
    });

    // Clients carousel (uses the Owl Carousel library)
    $(".clients-carousel").owlCarousel({
        autoplay: true,
        dots: true,
        loop: true,
        responsive: {
            0: {
                items: 2
            },
            768: {
                items: 4
            },
            900: {
                items: 6
            }
        }
    });

    // Testimonials carousel (uses the Owl Carousel library)
    $(".testimonials-carousel").owlCarousel({
        autoplay: true,
        dots: true,
        loop: true,
        items: 1
    });

});