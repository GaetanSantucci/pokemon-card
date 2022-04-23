const express = require("express");
const router = express.Router();
const { homePage } = require("./controllers/mainController");
const { getAllPokemon, getOnePokemon } = require("./controllers/pokemonController");

router.get("/", homePage);
router.get("/pokemon", getAllPokemon);
router.get("/pokemon/:id", getOnePokemon);

module.exports = router;
