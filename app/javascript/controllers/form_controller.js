import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {
  static targets = ["dayselection", "monthselection", "radio", "divCountingTaskName", "divCountingDescription"]
  connect() {
    console.log("coucou")
  }

  frequencySelection(event) {
    event.preventDefault()
    console.log(this.radioTarget.value)
    console.log(event.currentTarget.value)
    if (event.currentTarget.value === "Weekly") {
      this.dayselectionTarget.classList.remove('d-none')
      this.monthselectionTarget.classList.add('d-none')
    } else {
      if (event.currentTarget.value === "Monthly") {
      this.monthselectionTarget.classList.remove('d-none')
      this.dayselectionTarget.classList.add('d-none')
      } else {
      this.dayselectionTarget.classList.add('d-none')
      this.monthselectionTarget.classList.add('d-none')
      }
    }
  }

  countingLettersTaskName(event) {
    event.preventDefault()
    const characters = event.currentTarget.value.length;
    const grammar = characters > 1 ? 's' : '';
    let countingBox = `${characters}/30 character${grammar}`;
    this.divCountingTaskNameTarget.innerText = countingBox
  }

  countingLettersDescription(event) {
    event.preventDefault()
    const characters = event.currentTarget.value.length;
    const grammar = characters > 1 ? 's' : '';
    let countingBox = `${characters}/220 character${grammar}`;
    this.divCountingDescriptionTarget.innerText = countingBox
  } 
}
