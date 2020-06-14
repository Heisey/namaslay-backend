const express = require('express');
const router = express.Router();

const { getTopClasses, getTopClassesByYear, getAllClasses } = require('../queries/userDataQueries');

module.exports = (db) => {

  router.get('/:student_id', async (req, res) => {
    try {
      const id = req.params.student_id
      let response = await db.query(getAllClasses, [id])
      const allClasses = response.rows
      response = await db.query(getTopClasses, [id])
      const topClasses = response.rows
      response = await db.query(getTopClassesByYear, [id, 2019])
      const topClasses2019 = response.rows
      response = await db.query(getTopClassesByYear, [id, 2020])
      const topClasses2020 = response.rows
      const responseObject = { allClasses, topClasses, topClasses2019, topClasses2020 }
      res.send(responseObject)
    }
    catch (error) {
      throw error
    }
  })

  return router;
};
