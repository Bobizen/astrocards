import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="avatar"
export default class extends Controller {
  static targets = ["avatar", "avatarpreview"]

  loadavatar(event) {
    const avatarInput = this.avatarTarget
    const avatarPreview = this.avatarpreviewTarget

    const file = event.target.files[0]
    const reader = new FileReader()

    reader.onload = function(event) {
      const imageUrl = event.target.result
      console.log(imageUrl)
      avatarPreview.style.backgroundImage = `url('${imageUrl}')`
      avatarPreview.textContent = ''
    }

    reader.readAsDataURL(file);
  }
}
