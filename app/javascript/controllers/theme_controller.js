import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = [ 'source' ]

    initialize() {
      // this.selectorTarget.style.display = 'none';
    }

    connect() {
      // console.log("Hello, Stimulus!", this.element);
    }
    click() {
      let theme = this.sourceTargets[0].id
      let html = document.querySelector('html');
      html.setAttribute('data-theme', theme)
    }
}