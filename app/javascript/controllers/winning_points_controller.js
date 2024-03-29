import { Controller } from "@hotwired/stimulus"
import Swal from "sweetalert2"

// Connects to data-controller="winning-points"
export default class extends Controller {
//   // connect() { console.log("coucou")
//   // }
  static targets = ["validate", "taskname", "points"]
  alertPoints(event) {
    event.preventDefault()
    // Show a confirmation dialog using SweetAlert
    Swal.fire({
      title: "ARE YOU SURE ?",
      html: `Do you want to validate </br><span class="swal2-task-name">${this.tasknameTarget.innerHTML}</span> ?`,
      showCancelButton: true,
      buttons: {
        cancel : "Cancel",
        confirm : "Confirm",
      },
      confirmButtonText:'<i class="fa fa-thumbs-up fa-bounce"></i> Yes, validate it!',
      confirmButtonColor: "#a2cdb0",
      cancelButtonColor: "#8d5ba5",
      cancelButtonText: '<i class="fa-solid fa-thumbs-down fa-beat"></i> No, cancel'
    })
    .then((result) => {
      if (result.isConfirmed) {
        this.sendTurboUpdate(event)
        // Continue with Turbo Stream update
        const url = this.element.querySelector("form").action
        // console.log(url)
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
      showCloseButton: true,
      html: `Congrats, you just win <span class="swal2-points">${this.pointsTarget.innerHTML.replace('+', '')}</span> points !`,
      icon: "success",
      confirmButtonText: '<a class="ranking-link" href="/ranking"> <i class="fa-solid fa-ranking-star fa-beat"></i> Check your ranking</a>',
      confirmButtonColor: "#a2cdb0",
    });

    // Trigger the actual validation action
  }
}
