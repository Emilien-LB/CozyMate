import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {
  connect() {
    console.log("coucou")
  }

//   weekSelection(event) {
//     event.preventDefault()
//     console.log(this.daySelectionTarget)
// }
}
