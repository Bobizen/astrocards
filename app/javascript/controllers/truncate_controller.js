import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="truncate"
export default class extends Controller {
  static targets = ["fun"]

  connect() {
    this.#truncateFunfact(this.funTarget)
  }

  #truncateFunfact(element) {
    var text = element.textContent;
    var words = text.split(' ')
    if (words.length > 25) {
      var truncatedText = words.slice(0, 25).join(' ')
      element.textContent = truncatedText + '...'
      var seeMoreLink = document.createElement('a')
      seeMoreLink.textContent = ' [See more]'
      seeMoreLink.href = '#'
      element.insertAdjacentElement('afterend', seeMoreLink)
    }
  }
}
