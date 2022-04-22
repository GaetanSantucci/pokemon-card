const client = require("./database");

async function fecthAllTrainer() {
    try {
        const result = await client.query(`SELECT * FROM trainer`);
        return result.rows;
    } catch (error) {
        res.status(505).send("error database");
    }
};

async function fecthAllPokemon(){
    try{
      const result = await client.query(`SELECT * FROM pokemon`);
      return result.rows;
    }catch(error){
      res.status(500).send("error database")
    }
}

module.exports = { fecthAllTrainer, fecthAllPokemon };
