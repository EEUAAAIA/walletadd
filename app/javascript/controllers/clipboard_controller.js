import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "source" ]

  connect() {
    console.log("clipboard controller connecté")
  }

  copy() {
    console.log("copy faite")
    const address = document.querySelector(".span_address")
    const address_value = address.innerHTML
    console.log(address_value)
    navigator.clipboard.writeText(address_value)
  }

}
