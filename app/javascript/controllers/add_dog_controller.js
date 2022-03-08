import { Controller } from "@hotwired/stimulus"
import consumer from "../channels/consumer"

export default class extends Controller {
  static values = {
    id: String
  }
  static targets = ['trait', 'form', 'traitInput', 'traitValues']

  connect() {
    console.log('Hello');
  }

  traitElementClicked(evt) {
    console.log(evt, evt.target, this.idValue );
    const traitName = evt.target.innerText;
    console.log(traitName, this.formTarget, this.traitInputTarget);
    evt.target.classList.toggle('trait-picked');
    // create new input
    const newTrait = `<input placeholder="" type="trait" name="traits[]" value="${this.idValue}">`
    // add new input to traitValues div as HTML ELEMNENT ( right now being rendered as strings )
    this.traitValuesTarget.append(newTrait);




  }

  genderElementClicked(evt) {
    console.log(evt, evt.target);
    // add value to each gender icon ( data-value from stimulous )
    const gender = evt.target.getAttribute('data-gender');
    console.log(gender)
    // grab value from clicked icon
    // assign clicked value to gender input
    // this.genderInputTarget.value = gender;
  }

  sizeElementClicked(evt) {
    console.log(evt, evt.target);
    const size = evt.target.getAttribute('data-size');
    console.log(size)
  }


}
