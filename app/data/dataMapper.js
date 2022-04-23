const res = require("express/lib/response");
const database = require("./database");


async function fecthAllTrainer() {
    try {
        const result = await database.query(`SELECT * FROM trainer`);
        
        return result.rows;
    } catch (error) {
        res.status(500).send("error database");
    }
};

async function fecthAllPokemon(){
    try{
      const result = await database.query(`SELECT * FROM pokemon`);
      
      return result.rows;
    }catch(error){
      res.status(500).send("error database")
    }
}

async function fecthOnePokemon(id){
  try{
    const result = await database.query(`SELECT * FROM pokemon WHERE id = $1`, [id]);
    console.log(result.rows[0]);
    return result.rows[0];
  }catch(error){
    res.status(500).send("error database")
  }
}

async function insertLog(id, url, time, ip){
  try{
    await database.query(`INSERT TO log(id, url, time, ip) VALUES (${i}, ${url}, TIMESTAMP, ${ip})`)
  }catch(error){
    res.status(500).render("pages/error")
  }
}

module.exports = { fecthAllTrainer, fecthAllPokemon, fecthOnePokemon, insertLog };
