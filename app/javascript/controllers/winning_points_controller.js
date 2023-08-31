import { Controller } from "@hotwired/stimulus"
import Swal from "sweetalert2"

// Connects to data-controller="winning-points"
export default class extends Controller {
//   // connect() { console.log("coucou")
//   // }
  static targets = ["validate"]
  alertPoints(event) {
    event.preventDefault()
    // Show a confirmation dialog using SweetAlert
    Swal.fire({
      title: "Are you sure?",
      text: "This will validate task ",
      icon: "question",
      showCancelButton: true,
      confirmButtonText: "Yes, validate it!",
      cancelButtonText: "Cancel"
    })
    .then((result) => {
      if (result.isConfirmed) {
        this.sendTurboUpdate(event)
        // Continue with Turbo Stream update
        const url = this.element.querySelector("form").action
        console.log(url)
        fetch(url, {
            method: "PATCH",
            headers: { "Accept": "text/plain" },
            body: new FormData(this.element.querySelector("form"))
        })
          .then(response => response.text())
          .then((data) => {
            this.element.outerHTML = data
          })
      }
    })
  }

  sendTurboUpdate(event) {
    event.preventDefault()

    // Perform Turbo Stream update

    // Show success message using SweetAlert
    Swal.fire({
      title: "Points Validated!",
      text: "Congrats ! You win points.",
      icon: "success"
    });

    // Trigger the actual validation action
  }
}
