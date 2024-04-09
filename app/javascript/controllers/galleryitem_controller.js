import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="galleryitem"
export default class extends Controller {
  static targets = ["selectedelement"]

  fire() {

    console.log("hello")
    // // const selectedElements = document.querySelectorAll('.g-card')
    // this.selectedContainerTarget.forEach(element => {
    //   element.classList.remove('active-border')
    //   console.log("hello",element)
    // })

    // display the border
    this.selectedelementTarget.classList.toggle("active-border")

  }
}
