import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sharedgallery"
export default class extends Controller {
  static targets = ["gallerycheckbox"]

  static values = {
    gid: Number
  }

  updatesharing(event) {
    const checkbox_status = this.gallerycheckboxTarget.checked

    this.#share_the_gallery(this.gidValue, checkbox_status)
  }

  #share_the_gallery(gallery_id, checkbox_status) {
    const data = {
      id: gallery_id,
      status: checkbox_status
    };

    const csrfToken = document.querySelector('meta[name="csrf-token"]').content

    const request = new Request(`/usergalleries/share`, {
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

  #unshare_the_gallery() {

  }
}
