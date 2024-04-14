import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flipcard"
export default class extends Controller {
  flip() {
    var flipContainer = document.querySelector('.flip-container');
    // Toggle the .flipped class
    flipContainer.querySelector('.flipper').classList.toggle('flipped');
  }
}
