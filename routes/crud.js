const express = require('express');
const router = express.Router();

// ?? Routes mounted on /classes

const {
  updateClassSpots,
  getClassSpots
} = require('../queries/bookingQueries');

module.exports = (db) => {

  //going to need to add student_id param & turn this into sessions once we have students
  router.post('/:class_id/book', async (req, res) => {
    const id = req.params.class_id

    try {
      let response = await db.query(getClassSpots, [id])
      let spots = response.rows[0].spotsavailable
      console.log('initial spots:', spots);
      spots--
      console.log('new spots:', spots);
      response = await db.query(updateClassSpots, 23, 10)
      console.log('hello');

      // response = await db.query(getClassSpots, [id])
      // console.log(response.rows[0].spotsavailable);

      // spots = response.rows[0].spotsavailable
      // console.log('updated spots:', spots);
    }
    catch (error) {
      throw error
    }
  })

  router.post('/:class_id/cancel', async (req, res) => {
    const id = req.params.class_id
    try {
      let response = await db.query(getClassSpots, [id])
      let spots = response.rows[0].spotsavailable
      console.log('initial spots:', spots);
      spots++
      await db.query(updateClassSpots, [spots], [id])
      response = await db.query(getClassSpots, [id])
      spots = response.rows[0].spotsavailable
      console.log('updated spots:', spots);
    }
    catch (e) {
      throw e
    }
  })
  return router;
}
