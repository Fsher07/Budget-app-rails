import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menuBar", "mobileMenu"];

  connect() {
    
  }

  layout() {
    this.menuBarTarget.classList.toggle('change');
    this.mobileMenuTarget.classList.toggle('show');
    if (this.menuBarTarget.classList.contains('menu-bar-fix')) {
      this.menuBarTarget.classList.remove('menu-bar-fix');
    } else {
      this.menuBarTarget.classList.add('menu-bar-fix');
    }
  }
}
