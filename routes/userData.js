const express = require('express');
const router = express.Router();

const { getTopClasses, getAllClasses } = require('../queries/userDataQueries');

module.exports = (db) => {

  router.get('/:student_id', async (req, res) => {
    try {
      const id = req.params.student_id
      let response = await db.query(getAllClasses, [id])
      const allClasses = response.rows
      console.log(allClasses);

      response = await db.query(getTopClasses, [id])
      const topClasses = response.rows
      const responseObject = { allClasses, topClasses }
      res.send(responseObject)
    }
    catch (error) {
      throw error
    }
  })

  return router;
};
