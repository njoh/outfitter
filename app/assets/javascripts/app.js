// jQuery to collapse the navbar on scroll
// $(window).scroll(function() {
//     if ($(".navbar").offset().top > 50) {
//         $(".navbar-fixed-top").addClass("top-nav-collapse");
//     } else {
//         $(".navbar-fixed-top").removeClass("top-nav-collapse");
//     }
// });

// jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});

// Closes the Responsive Menu on Menu Item Click
$('.navbar-collapse ul li a').click(function() {
    $('.navbar-toggle:visible').click();
});

var sourceSwap = function () {
    var $this = $(this);
    var newSource = $this.data('alt-src');
    $this.data('alt-src', $this.attr('src'));
    $this.attr('src', newSource);
}

$(function() {
    $('.thumb img[data-alt-src]').each(function() {
        new Image().src = $(this).data('alt-src');
    }).hover(sourceSwap, sourceSwap);
});

$(document).ready(function() {
    $("a.fancybox").fancybox({
        prevEffect  : 'none',
        nextEffect  : 'none',
        padding : 0,
        loop: false,
        helpers : {
            title   : {
                type: 'outside',
                position: 'top'
            },
            overlay: {
              locked: false,
              css : {
                    'background' : 'rgba(45, 46, 54, 0.95)'
                }
            }
        }
    });
});
