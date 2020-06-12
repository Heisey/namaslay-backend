const express = require('express');
const router = express.Router();

const { getStudentInfo } = require('../queries/studentsQueries');

module.exports = (db) => {

  router.post('/:student_id/login', async (req, res) => {
    try {
      const password = req.body.password
      const email = req.body.email
      let responseObject = await db.query(getStudentInfo, ["piper@thegatesofdawn.com"])
      const data = responseObject.rows[0];
      if (responseObject.rows.length && data.password === password) {
        responseObject = { status: 'success', data }
        res.send(responseObject)
      }
      else {
        res.send({ status: 'failed' })
      }
    }
    catch (error) {
      throw error
    }
  });

  return router;
}
