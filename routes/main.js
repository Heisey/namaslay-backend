const express = require('express');
const router = express.Router();

const {
  selectAllClassesByMonth,
  selectAllClassesByDay,
  selectAllDaysofMonth
} = require('../queries/schedulingQueries');

module.exports = (db) => {
  router.get("/", (req, res) => {
    console.log('hello')
    res.send('wtf dude')
  });

  router.get("/:month_id", (req, res) => {
    const id = req.params.month_id
    const responseAry = []
    db.query(selectAllClassesByMonth, [id])
      .then((data) => {
      })
    db.query(selectAllDaysofMonth, [id])
      // db.query(selectAllClassesByDay, [id])
      .then((data) => {

        res.send(data.rows);
      })
  });



  return router;
};
