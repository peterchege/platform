var current_fs, next_fs, previous_fs; //fieldsets
var left, opacity, scale; //field properties which we will animate

$(".next").click(function(){
    current_fs = $(this).parent();
    next_fs = $(this).parent().next();

    // activate next step on the progressbar using the index odf next_fs

    $("#progressbar li").eq($("#msform fieldset").index(next_fs)).addClass("active");

    // show the next fieldset
    next_fs.show();

    // hide the current fieldset with style
    current_fs.animated({opacity:0},{
        step: function(now, mx) {
        // as the opacity of current_fs reduces to 0-stored in "now"    
        
        //1. scale current_fs down to 80%
        scale = 1- (1- now) *0.2;
        
        //2. bring next_fs from the right (50%)
        left = (now*50)+"%";

        //3. increase opacity of the next_fs to 1 as it moves in
        opacity = 1 - now;
        current_fs.css({'transform':'scale("+ scale +")'});
        next_fs.css({'left':left,'opacity':opacity}); 

        },
        duration: 800,
        complete: function(){
            current_fs.hide();
        },
        // this comes from the custom easing plugin
        easing:'easeInOutBack'
    });
});

$(".previous").click(function(){
    current_fs = $(this).parent();
    next_fs = $(this).parent().next();

    // activate next step on the progressbar using the index odf next_fs

    $("#progressbar li").eq($("#msform fieldset").index(next_fs)).addClass("active");

    // show the next fieldset
    next_fs.show();

    // hide the current fieldset with style
    current_fs.animated({
        opacity: 0
    }, {
        step: function (now, mx) {
            // as the opacity of current_fs reduces to 0-stored in "now"    

            //1. scale current_fs down to 80%
            scale = 1 - (1 - now) * 0.2;

            //2. bring next_fs from the right (50%)
            left = (now * 50) + "%";

            //3. increase opacity of the next_fs to 1 as it moves in
            opacity = 1 - now;
            current_fs.css({
                'transform': 'scale("+ scale +")'
            });
            next_fs.css({
                'left': left,
                'opacity': opacity
            });

        },
        duration: 800,
        complete: function () {
            current_fs.hide();
        },
        // this comes from the custom easing plugin
        easing: 'easeInOutBack'
    });

});