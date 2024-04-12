import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

export default class extends Controller {
  static values = {
    frompage: String
  }

  connect() {
    const defaultDate = this.frompageValue // Get default date from data attribute
      flatpickr(this.element, {
        dateFormat: 'Y-m-d',
        maxDate: 'today',
        defaultDate: defaultDate
      });
    }
}
