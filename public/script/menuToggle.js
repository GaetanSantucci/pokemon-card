const toggleMenu = document.querySelector(".ham");
const menu = document.querySelector(".toggle-menu");
// const mainBody = document.querySelector("#main");


toggleMenu.addEventListener("click", () => {
    menu.classList.toggle("toggle-click");
});
