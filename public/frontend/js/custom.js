$(document).ready(function () {
    "use strict";



    // Slider Banner Active
    $(".slider_banner_active").owlCarousel({
        loop: true,
        animateOut: "fadeOut",
        animateIn: "fadeIn",
        margin: 14,
        nav: false,
        smartSpeed: 500,
        autoplay: true,
        autoplayTimeout: 2000,
        navText: [
            '<i class="icon fa fa-angle-left"></i>',
            '<i class="icon fa fa-angle-right"></i>',
        ],
        responsive: {
            0: {
                items: 1,
            },
            576: {
                items: 1,
            },
            768: {
                items: 1,
            },
            992: {
                items: 1,
            },
            1200: {
                items: 1,
            },
        },
    });

    // Category Active
    $(".category_active").owlCarousel({
        // loop: true,
        animateOut: "fadeOut",
        animateIn: "fadeIn",
        margin: 14,
        nav: false,
        smartSpeed: 500,
        autoplay: true,
        autoplayTimeout: 7000,
        navText: [
            '<i class="icon fa fa-angle-left"></i>',
            '<i class="icon fa fa-angle-right"></i>',
        ],
        responsive: {
            0: {
                items: 2,
            },
            576: {
                items: 3,
            },
            768: {
                items: 4,
            },
            992: {
                items: 5,
            },
            1200: {
                items: 6,
            },
            1400: {
                items: 7,
            },
            1600: {
                items: 8,
            },
            1700: {
                items: 9,
            },
        },
    });

    // zooming image start
    document.querySelectorAll('.zooming_show_image').forEach(elem => {
        let x, y, width, height;
        elem.onmouseenter = () => {
            const size = elem.getBoundingClientRect();

            x = size.x;
            y = size.y;

            width = size.width;
            height = size.height;
        };

        elem.onmousemove = e => {
            const horizontal = (e.clientX - x) / width * 100;
            const vertical = (e.clientY - y) / height * 100;

            elem.style.setProperty('--x', horizontal + '%');
            elem.style.setProperty('--y', vertical + '%');
        };
    });
    // zooming image end

    // active image start
    var zoomingImageList = document.querySelectorAll("ul li");


    zoomingImageList.forEach(i => {
        i.addEventListener("click", () => {
            resetLinks();
            i.classList.add("active");
        })
    });

    function resetLinks() {
        zoomingImageList.forEach(i => {
            i.classList.remove("active")
        })
    };

      
   
    // active image end

    //end for design js

   


}(jQuery));