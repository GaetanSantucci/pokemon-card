const express = require("express");
const router = express.Router();
// const { getAllPokemon, getAllTrainer } = require("./controllers/mainController");

router.get("/", (req, res) => {
    res.render("pages/home");
});
// router.get("/pokemon", getAllPokemon);

module.exports = router;
