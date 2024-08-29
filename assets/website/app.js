/*
 * Welcome to your app's main JavaScript file!
 *
 * We recommend including the built version of this JavaScript file
 * (and its CSS file) in your base layout (base.html.twig).
 */

// any CSS you import will output into a single css file (app.css in this case)
import "./styles/app.scss";

import Splitting from "splitting";

Splitting();

import "./custom/aos";
import "./custom/custom-bootstrap";
import "./custom/form-validation";
import "./custom/glightbox";
import "./custom/header-sticky";
import "./custom/header-sticky-reverse";
import "./custom/isotope-layout";
import "./custom/jarallax";
import "./custom/preloader";
import "./custom/rellax";
import "./custom/smooth-scroll";
import "./custom/svgInjector";
import "./custom/topTop";
import "./custom/typed";

import Swiper from "swiper/bundle";

var swiper = new Swiper(".swiperFaqs", {
  effect: "cards",
  grabCursor: true,
  cardsEffect: {
    slideShadows: false,
  },
  pagination: {
    el: ".swiper-pagination",
    clickable: true,
  },
});

// Set the date we're counting down to
var countDownDate = new Date("Nov 02, 2023 10:00:00").getTime();

// Update the count down every 1 second
var x = setInterval(function () {
  // Get today's date and time
  var now = new Date().getTime();

  // Find the distance between now and the count down date
  var distance = countDownDate - now;

  // Time calculations for days, hours, minutes, and seconds
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);

  // Display the result in the element with id="days-value", "hours-value", etc.
  document.getElementById("days-value").innerHTML = days;
  document.getElementById("hours-value").innerHTML = hours;
  document.getElementById("minutes-value").innerHTML = minutes;
  document.getElementById("seconds-value").innerHTML = seconds;

  // If the count down is finished, write some text
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("countdown").innerHTML = `
    <div class="d-flex flex-column">
    <h1 class="display-1 text-danger" data-aos="fade-up" data-aos-duration="2000">WE DID IT!</h1>
    <p class="text-light" data-aos="fade-up" data-aos-duration="2000">
    DigiTrans Conference at Education Center in Novi Sad: <span class="text-success">Mission accomplished!</span>
    </p>
    </div>`;
  }
}); // Update every 1 second

const checkbox = document.getElementById("isFirma");
const firma = document.getElementById("nazivFirme");
const pib = document.getElementById("pibFirme");

checkbox.addEventListener("change", function () {
  if (this.checked) {
    firma.disabled = false;
    pib.disabled = false;
  } else {
    firma.disabled = true;
    pib.disabled = true;
  }
});
