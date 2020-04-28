// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'slick-carousel/slick/slick';

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


document.addEventListener("turbolinks:load", () => {

  console.log("hey");

  $('#images_carousel').slick({
    infinite: true,
    slidesToShow: 4,
    variableWidth: true,
    slidesToShow: 1,
    centerMode: true,
    arrows: true,
    nextArrow: '<i class="fas fa-chevron-right"></i>',
    prevArrow: '<i class="fas fa-chevron-left"></i>',
    swipeToSide: true,
    initialSlide: 1,
    responsive: [{
      breakpoint: 1024,
      settings: {
        arrows: false,
        autoplay: true,
        autoplaySpeed: 5000,
      }
    }]
  });


});
