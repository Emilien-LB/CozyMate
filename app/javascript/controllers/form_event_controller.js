import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form-event"
export default class extends Controller {
  static targets = ["divCountingName", "divCountingEventDescription"]
  connect() {
  }

  countingLettersEventDescription(event) {
    event.preventDefault()
    console.log(event.currentTarget)
    const characters = event.currentTarget.value.length;
    console.log(characters)
    const grammar = characters > 1 ? 's' : '';
    let countingBox = `${characters}/150 character${grammar}`;
    this.divCountingEventDescriptionTarget.innerText = countingBox
  }

  countingLettersName(event) {
    event.preventDefault()
    const characters = event.currentTarget.value.length;
    const grammar = characters > 1 ? 's' : '';
    let countingBox = `${characters}/20 character${grammar}`;
    this.divCountingNameTarget.innerText = countingBox
  }
}
