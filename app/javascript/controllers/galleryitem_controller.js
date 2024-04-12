import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="galleryitem"
export default class extends Controller {
  static targets = ["selectedelement"]
  static values = {
    userstatus: Boolean
  }

  fire() {
    // display the border
    console.log(this.userstatusValue)
    if (this.userstatusValue === true) {
      this.selectedelementTarget.classList.toggle("active-border")

      var button = document.getElementById('btn-delete');
      button.classList.remove('d-none')

      // check if there is still a 'active-border'
      const selectedItems = document.querySelectorAll('.active-border')
      if (selectedItems.length === 0) {
        button.classList.add('d-none')
      }
    }
  }
}
