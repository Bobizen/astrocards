import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="gallerydelete"
export default class extends Controller {
  static targets = ["selectedopt"]
  static values = {
    opt: String
  }

  deleteobj() {
    const selectedItems = document.querySelectorAll('.active-border')

    selectedItems.forEach(element => {
      // element.style.backgroundImage = `url(${selectedLi[0].dataset.imagepath}`
      if ( this.optValue === 'support') {
        element.style.backgroundImage = 'none'
      }
      element.classList.remove('active-border')

      // Get the id in the support
      const restOfStringUsercard = element.id.substring(1);
      // Convert the string into integer
      const usercard_id = parseInt(restOfStringUsercard, 10);

      this.#delete_obj(this.optValue, usercard_id, element.id)
    })
  }

  #delete_obj(option, id, card_id) {
    const data = {
      option_obj: option,
      usergallerycard_id: id
    };

    const csrfToken = document.querySelector('meta[name="csrf-token"]').content

    const request = new Request(`/usergallerycards/delete`, {
      method: 'POST',
      headers: {
        'X-CSRF-Token': csrfToken,
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(data)
    })

    fetch(request)
    .then(response => {
    })
    .then((data) => {
      if ( this.optValue === 'object') {
        const card = document.getElementById(card_id);
        if (card) {
          card.outerHTML = '';
        }
      }
    })

  }
}
