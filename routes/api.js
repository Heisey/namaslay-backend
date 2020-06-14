const express = require('express');
const router = express.Router();

// ?? Routes mounted on /api

const {
  selectAllClassesByMonth,
  selectAllClassesByDay,
  selectAllDaysofMonth,
  selectAllTeachers,
  selectAllDisciplines,
  selectAllPrograms,
  selectAllDifficulties,
  selectClassesByDay,
  getRandomQuote,
  getNumberOfQuotes
} = require('../queries/filteringQueries');

module.exports = (db) => {

  router.get('/quote', async (req, res) => {
    try {
      function getRandomInt(max) {
        return Math.floor(Math.random() * Math.floor(max) + 1);
      }
      const quoteCountResponse = await db.query(getNumberOfQuotes)
      const quoteCount = Number(quoteCountResponse.rows[0].count)
      const randomQuoteID = getRandomInt(quoteCount - 1)
      const quote = await db.query(getRandomQuote, [randomQuoteID])
      res.send(quote.rows)
    }
    catch (error) {
      throw error
    }
  })

  router.get("/:month_id", async (req, res) => {
    try {
      const id = req.params.month_id
      const responseObject = {}
      const teachers = await db.query(selectAllTeachers)
      responseObject.teachers = teachers.rows
      const disciplines = await db.query(selectAllDisciplines)
      responseObject.disciplines = disciplines.rows
      const programs = await db.query(selectAllPrograms)
      responseObject.programs = programs.rows
      const difficulties = await db.query(selectAllDifficulties)
      responseObject.difficulties = difficulties.rows

      const classes = await db.query(selectAllClassesByMonth, [id])
      const days = await db.query(selectAllDaysofMonth, [id])
      responseObject.daysLegend = days.rows

      responseObject.classes = classes.rows
      res.send(responseObject);


    }
    catch (error) {
      throw error
    }
  });

  return router;
};
