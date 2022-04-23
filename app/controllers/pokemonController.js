const res = require("express/lib/response");
const { fecthAllTrainer, fecthAllPokemon, fecthOnePokemon} = require("../data/dataMapper");

async function getAllTrainer(req, res) {
    const allTrainer = await fecthAllTrainer();

    res.render("pages/home", { allTrainer });
}

async function getAllPokemon(req, res) {
    const allPokemon = await fecthAllPokemon();
    res.render("pages/pokemon", { allPokemon });
}

async function getOnePokemon(req, res){
    const pokemonId = req.params.id
    const onePokemon = await fecthOnePokemon(pokemonId);
    res.render("pages/pokemonCard", { onePokemon })
}

module.exports = { getAllTrainer, getAllPokemon, getOnePokemon}