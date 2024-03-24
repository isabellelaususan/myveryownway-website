// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

// app/assets/javascripts/application.js or inline script
document.addEventListener("DOMContentLoaded", function () {
    function Marquee(selector, speed) {
        const parentSelector = document.querySelector(selector);
        const clone = parentSelector.innerHTML;
        const firstElement = parentSelector.children[0];
        let i = 0;
        console.log(firstElement);
        parentSelector.insertAdjacentHTML('beforeend', clone);
        parentSelector.insertAdjacentHTML('beforeend', clone);

        setInterval(function () {
            firstElement.style.marginLeft = `-${i}px`;
            if (i > firstElement.clientWidth) {
                i = 0;
            }
            i = i + speed;
        }, 0);
    }

    //after window is completed load
    //1 class selector for marquee
    //2 marquee speed 0.2
    window.addEventListener('load', function () {
        Marquee('.marquee', 0.2);
    });
});
