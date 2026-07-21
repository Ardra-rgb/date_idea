// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import flatpickr from "flatpickr"


document.addEventListener("turbo:load", () => {
  flatpickr("#calendar", {
    inline: true,
    dateFormat: "Y-m-d",
    minDate: "2026-01-01",
    maxDate: "2026-12-31"
  });
});
