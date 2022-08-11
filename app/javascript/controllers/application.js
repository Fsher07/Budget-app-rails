import { Application } from "@hotwired/stimulus" 

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

const menuBar = document.querySelector('.menu-bar');
const mobileMenu = document.querySelector('.mobile-menu');
menuBar.addEventListener('click', () => {
  menuBar.classList.toggle('change');
  mobileMenu.classList.toggle('show');
  if (menuBar.classList.contains('menu-bar-fix')) {
    menuBar.classList.remove('menu-bar-fix');
  } else {
    menuBar.classList.add('menu-bar-fix');
  }
});

export { application }

