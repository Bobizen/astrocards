import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="galleryitem"
export default class extends Controller {
  static targets = ["selectedelement"]
  static values = {
    userstatus: Boolean
  }

  fire() {
    // display the border
    if (this.userstatusValue === true) {
      this.selectedelementTarget.classList.toggle("active-border")
    }
  }
}
