import { Controller } from "@hotwired/stimulus"
import consumer from "../channels/consumer"

export default class extends Controller {
  static values = {
    id: String
  }
  static targets = [
    'trait', 'form', 'traitInput', 'traitValues',
    'gender',
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
    // console.log(evt, evt.target);
    // expect to see 2 gender button elements
    console.log(this.genderTargets);
    // add value to each gender icon ( data-value from stimulous )
    const genders = evt.target.getAttribute('data-gender');

    // remove both actives
    this.genderTargets[1].classList.remove('gender-active');
    this.genderTargets[0].classList.remove('gender-active');

    // Array.from(genders).forEach(el => {
    //   console.log({el});
    //   el.classList.remove('gender-active');
    // })

    evt.target.classList.toggle('gender-active');
    // add active to clicked

    // none active, press one
    // turn on

    // one active, press it
    // turn off

    // one active, press the the other
    // remove from other
    // add to you

    // evt.target.classList.toggle('');
    //

    // console.log(gender)
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
