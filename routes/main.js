const express = require('express');
const router = express.Router();

const {
  selectAllClassesByMonth,
  selectAllClassesByDay,
  selectAllDaysofMonth,
  selectAllTeachers,
  selectAllDisciplines,
  selectAllPrograms,
  selectAllDifficulties,
  selectClassesByDay
} = require('../queries/schedulingQueries');

module.exports = (db) => {
  router.get("/", async (req, res) => {
    try {
      const responseObject = {}
      const teachers = await db.query(selectAllTeachers)
      responseObject.teachers = teachers.rows
      const disciplines = await db.query(selectAllDisciplines)
      responseObject.disciplines = disciplines.rows
      const programs = await db.query(selectAllPrograms)
      responseObject.programs = programs.rows
      const difficulties = await db.query(selectAllDifficulties)
      responseObject.difficulties = difficulties.rows
      //this needs to be fixed
      const classes = await db.query(selectClassesByDay, [3])
      responseObject.classes = classes.rows
      res.send(responseObject);
    }
    catch (error) {
      throw error
    }

  });

  router.get("/:month_id", async (req, res) => {
    try {
      const id = req.params.month_id
      const response = await db.query(selectAllClassesByMonth, [id])
      res.send(response.rows)
    }
    catch (error) {
      throw error
    }
  });



  return router;
};
