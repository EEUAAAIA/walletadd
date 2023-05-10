import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("burger controller connecté")
  }

  openBurger(){
    console.log("clic du button burger")
    const menuLinks = document.querySelector(".menu-links")
    const burgerButton = document.querySelector(".burger_icon")
    const closeButton = document.querySelector(".burger_close")
    menuLinks.style.display="flex"
    burgerButton.style.display="none"
    closeButton.style.display= "flex"
  }

  closeBurger(){
    console.log("clic du button close burger")
    const menuLinks = document.querySelector(".menu-links")
    const burgerButton = document.querySelector(".burger_icon")
    const closeButton = document.querySelector(".burger_close")
    menuLinks.style.display="none"
    burgerButton.style.display="flex"
    closeButton.style.display= "none"
  }

  globalResize(){
    console.log("la fenêtre a été resize")
    const menuLinks = document.querySelector(".menu-links")
    let menuLinksOpen = menuLinks.style.display="flex"
    const width = window.innerWidth

    if(menuLinksOpen && width <= 460 || menuLinksOpen && (width >= 460 && width <= 1079)){
      this.closeBurger()
    }
    /*
    if(menuLinksOpen && (width >= 0 && width <= 1079)){
      this.closeBurger()
    }
    */
  }
}
