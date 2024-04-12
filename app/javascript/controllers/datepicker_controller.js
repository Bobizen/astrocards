import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {

  connect() {
    flatpickr(this.element, {
      dateFormat: 'Y-m-d',
      maxDate: new Date().toISOString().split("T")[0],
      defaultDate: 'today'
    });
  }
}
