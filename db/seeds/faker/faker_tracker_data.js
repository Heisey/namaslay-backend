require('dotenv').config();
const faker = require('faker');
const { Pool } = require('pg');
const dbParams = require('../../../lib/db.js');
const db = new Pool(dbParams);

function getRandomInt(max, start) {
  return Math.floor(Math.random() * Math.floor(max) + start);
}

//days
const generateScores = () => {
  let statement = []
  let dayID = 1000
  //2019
  for (let m = 1; m <= 12; m++) {
    if (m === 1 || m === 3 || m === 5 || m === 7 || m === 8 || m === 10 || m === 12) {
      days = 31
    } else if (m === 2) {
      days = 28
    } else {
      days = 30
    }
    for (let d = 1; d <= days; d++) {

      statement.push({
        id: dayID,
        year: 2019,
        monthNumber: m,
        dayNumber: d
      }
      )
      dayID++
    }
  }

  return statement;
}

// const scoresAry = generateScores()
const insertScores = (data) => {
  const statement = `INSERT INTO days(id, year, monthNumber, dayNumber) VALUES `;
  let values = '';
  let row = {};

  for (let i = 0; i < data.length - 1; i++) {
    row = data[i];
    let value = `('${row.id}', '${row.year}', '${row.monthNumber}', '${row.dayNumber}')`;
    value += ', ';
    values += value;
  }

  row = data[data.length - 1];
  values += `('${row.id}', '${row.year}', '${row.monthNumber}', '${row.dayNumber}')`;
  values += ';';
  return { statement, values };
}

// console.log(scoresAry[15]);

// const ob1 = insertScores(scoresAry)


console.log("Query statement is constructed");
db.connect()
  .then(db => {
    console.log("Connected to DB...");
    // db.query(ob1.statement + ob1.values);
  }).catch(err => {
    console.log(err);
  });
