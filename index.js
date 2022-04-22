//! import dotenv
require("dotenv").config();

//! import express
const express = require("express");
const app = express();
const database = require("./app/data/database");

//! import router and error Page
const router = require("./app/router");
const { errorPage } = require("./app/middlewares/notFoundMiddleware");

app.use(express.static("public"));

app.use(express.urlencoded({ extended: true }));

app.set("view engine", "ejs");
app.set("views", "app/views");

//& session for cookie
// const session = require("express-session");

//& configurer Express pour qu'il utilise les sessions.
// app.use(
//     session({
//         secret: process.env.SECRET_SESSION,
//         resave: true,
//         saveUninitialized: true,
//         cookie: {
//             secure: false,
//         },
//     })
// );

let i = 0;
app.get("*", (req, res, next)=>{
    const url = req.url;
    const ip = req.ip;
    i++;
    database.query(`INSERT INTO log(id, url, ip, time) 
                    VALUES (${i}, '${url}', '${ip}', current_timestamp(0))`);

    next();
});

//! router
app.use(router);

//! error Page
app.use(errorPage);

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
    console.log(`Listening on http://localhost:${PORT}`);
});
