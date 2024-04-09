import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="gallery"
export default class extends Controller {
  static targets = ['selectedSupport']

  static values = {
    imagepath: String
  }

  changebg() {
    const selectedItems = document.querySelectorAll('.active-border')
    console.log(this.selectedSupportTarget)

    // Get the id in the support list dropdown button
    // const restOfString = this.midValue.substring(1);

    // Convert the string into integer
    // const integerValue = parseInt(restOfString, 10);


    selectedItems.forEach(element => {
      // element.style.backgroundImage = `url(${selectedLi[0].dataset.imagepath}`
      element.style.backgroundImage = `url(${this.selectedSupportTarget.dataset.imagepath})`
      element.classList.remove('active-border')
    })
    // this.selectedItemTarget.style.backgroundImage = `url(${selectedLi[0].dataset.imagepath}`

  }
}
