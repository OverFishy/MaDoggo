import { Controller } from "@hotwired/stimulus"
import consumer from "../channels/consumer"

export default class extends Controller {
  static values = {
    id: String
  }
  static targets = [
    'trait', 'form', 'traitInput', 'traitValues',
    'gender', 'size'
  ]

  connect() {
    console.log('Hello,', this.element);
    this.femaleButton = document.getEleme
  }

  traitElementClicked(evt) {
    console.log(evt, evt.target, this.idValue);
    const traitName = evt.target.innerText;
    console.log(traitName, this.formTarget, this.traitInputTarget);
    evt.target.classList.toggle('trait-picked');
    // create new input
    const newTrait = `<input placeholder="" type="trait" name="traits[]" value="${this.idValue}">`
    // add new input to traitValues div as HTML ELEMNENT ( right now being rendered as strings )
    this.traitValuesTarget.append(newTrait);




  }

  genderElementClicked(evt) {
    // add value to each gender icon ( data-value from stimulous )
    const genders = evt.target.getAttribute('data-gender');
    // remove both actives
    this.genderTargets[1].classList.remove('gender-active');
    this.genderTargets[0].classList.remove('gender-active');
    // Add active class to chosen target
    evt.target.classList.add('gender-active');

    // assign clicked value to gender input
    // this.genderInputTarget.value = gender;
  }

  sizeElementClicked(evt) {
    console.log(evt, evt.target);
    const sizes = evt.target.getAttribute('data-size');
    // remove 3 active
    this.sizeTargets[2].classList.remove('size-active');
    this.sizeTargets[1].classList.remove('size-active');
    this.sizeTargets[0].classList.remove('size-active');
    // Add active class to chosen target
    evt.target.classList.add('size-active')
  }


}
