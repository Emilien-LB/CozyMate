import { Controller } from "@hotwired/stimulus"
import Swal from "sweetalert2"

// Connects to data-controller="delete-event"
export default class extends Controller {
  static targets = ["deleteElement", "eventDescription", "deleteButton"]
  // connect() {
  //   console.log("coucou")
  // }

  alerteDelete(event) {
    event.preventDefault()
    // console.log("yessss")
    Swal.fire({
      title: "ARE YOU SURE ?",
      html: `If you validate, this will delete event </br><span class="swal2-task-name">${this.eventDescriptionTarget.innerHTML}</span>.`,
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
        console.log(this.element)
        setTimeout(() => {
          this.deleteButtonTarget.click()
        }, 2000);
      }
    })
  }


  sendTurboUpdate(event) {
    event.preventDefault()

    // Perform Turbo Stream update

    // Show success message using SweetAlert
    Swal.fire({
      title: "Event deleted !",
      showCloseButton: true,
      html: `The event has been successfully deleted.`,
      icon: "success",
      confirmButtonText: '<a class="ranking-link" href="#"> <i class="fa fa-thumbs-up fa-bounce"></i></i>OK</a>',
      confirmButtonColor: "#a2cdb0",
    });

    // Trigger the actual validation action
  }
}
