// load .env data into process.env
require('dotenv').config();

// Web server config
const PORT = 4000;
const ENV = process.env.ENV || "development";
const express = require("express");
const bodyParser = require("body-parser");
const app = express();
const morgan = require('morgan');

// PG database client/connection setup
const { Pool } = require('pg');
const dbParams = require('./lib/db.js');
const db = new Pool(dbParams);
db.connect();

app.use(morgan('dev'));
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static("public"));

// Separated Routes for each Resource
const mainRoutes = require("./routes/main");

// Mount all resource routes
app.use("/api", mainRoutes(db));

app.listen(PORT, () => {
  console.log(`Example app listening on port ${PORT}`);
});


