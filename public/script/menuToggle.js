const toggleMenu = document.querySelector(".ham");
const menu = document.querySelector(".toggle-menu");
const pokeball = document.querySelector(".center");
const red = document.querySelector(".red");
const pokemon = document.querySelector(".card-img");
const down = document.querySelector(".down");
// const mainBody = document.querySelector("#main");

toggleMenu.addEventListener("click", () => {
    menu.classList.toggle("toggle-click");
});

pokeball.addEventListener("click", () => {
    setTimeout(20000);
    pokeball.style.backgroundColor = "red";
    red.classList.toggle("open-up");
    pokemon.classList.toggle("apparition");
    down.classList.toggle("open-down");
    
});
