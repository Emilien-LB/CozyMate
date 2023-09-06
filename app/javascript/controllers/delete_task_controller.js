import { Controller } from "@hotwired/stimulus"
import Swal from "sweetalert2"

// Connects to data-controller="delete-task"
export default class extends Controller {
  // connect() {
  //   console.log("coucou")
  // }
  static targets = ["deleteTask", "deleteButton"]

  alerteDelete(event) {
    event.preventDefault()
    console.log(this.deleteTaskTarget)
    Swal.fire({
      title: "ARE YOU SURE ?",
      html: `If you validate, this will delete task </br><span class="swal2-task-name">${this.deleteTaskTarget.innerText}</span>`,
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
        console.log(this.deleteTaskTarget)
        console.log(this.deleteButtonTarget)
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
      title: "Task deleted !",
      showCloseButton: true,
      html: `The task has been successfully deleted.`,
      icon: "success",
      confirmButtonText: '<a class="ranking-link" href="#"> <i class="fa fa-thumbs-up fa-bounce"></i></i>OK</a>',
      confirmButtonColor: "#a2cdb0",
    });

    // Trigger the actual validation action
  }
}
