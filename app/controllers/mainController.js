const { fecthAllTrainer, fecthAllPokemon } = require("../data/dataMapper");

// async function getAllTrainer(req, res) {
//     const allTrainer = await fecthAllTrainer();
//     res.render("pages/home", { allTrainer });
// }

async function getAllPokemon(req, res) {
    const allPokemon = await fecthAllPokemon();
    res.render("pages/pokemon", { allPokemon });
}

module.exports = { getAllTrainer, getAllPokemon }