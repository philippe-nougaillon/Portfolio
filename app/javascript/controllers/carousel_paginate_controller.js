import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  connect() {
    // console.log("Hello from carousel controller")
  }

  activate(event) {
    this.deactivate_all_buttons();
    event.target.classList.remove('btn-outline','btn-primary')
    event.target.classList.add("btn-accent")
  }

  deactivate_all_buttons() {
    let elements = document.getElementsByClassName("carousel-page")
    for (var i = 0; i < elements.length; i++) {
      elements[i].classList.add('btn-outline', 'btn-primary');
      elements[i].classList.remove('btn-accent');
    }
  }
}
