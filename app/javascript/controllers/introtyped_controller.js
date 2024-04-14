import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js'

// Connects to data-controller="introtyped"
export default class extends Controller {
  static targets = ["itema","itemb","itemc"]
  connect() {
    new Typed('#e1', {
      strings: [this.itemaTarget.dataset.todisplay],
      typeSpeed: 50,
    })

    new Typed('#e2', {
      strings: [this.itembTarget.dataset.todisplay],
      typeSpeed: 70,
    })

    new Typed('#e3', {
      strings: [this.itemcTarget.dataset.todisplay],
      typeSpeed: 90,
    })

  }
}
