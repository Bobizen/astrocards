import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="gallery"
export default class extends Controller {
  static targets = ['selectedSupport']

  static values = {
    imagepath: String
  }

  changebg() {
    const selectedItems = document.querySelectorAll('.active-border')

    // Get the id in the support
    const restOfString = this.selectedSupportTarget.id.substring(1);
    // Convert the string into integer
    const support_id = parseInt(restOfString, 10);

    selectedItems.forEach(element => {
      // element.style.backgroundImage = `url(${selectedLi[0].dataset.imagepath}`
      element.style.backgroundImage = `url(${this.selectedSupportTarget.dataset.imagepath})`
      element.classList.remove('active-border')

      // Get the id in the support
      const restOfStringUsercard = element.id.substring(1);
      // Convert the string into integer
      const usercard_id = parseInt(restOfStringUsercard, 10);

      console.log(support_id)
      this.#add_support_to_object(support_id,usercard_id)
    })
    // this.selectedItemTarget.style.backgroundImage = `url(${selectedLi[0].dataset.imagepath}`

  }

  #add_support_to_object(support_id, usercard_id) {
    // contruct the body
    const data = {
      gallerysupport_id: support_id,
      usergallerycard_id: usercard_id
    };

    const csrfToken = document.querySelector('meta[name="csrf-token"]').content

    const request = new Request(`/usersupports/`, {
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
      console.log("ok")
    })
  }
}
