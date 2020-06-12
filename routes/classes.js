const express = require('express');
const router = express.Router();

// ?? Routes mounted on /classes

const {
  updateClassSpots,
  getClassSpots,
} = require('../queries/bookingQueries');

module.exports = (db) => {
  //going to need to add student_id to request body and decrement passes (set to null if 0); do a check if monthly to see if today > expiration date (or if we can figure out how to passively set this to null once the date passes. Daily setTimout?)

  router.post('/:class_id/book', async (req, res) => {

    try {
      const id = req.body.class_id;
      // console.log('------------------');
      const initSpotsRes = await db.query(getClassSpots, [id])
      let spots = initSpotsRes.rows[0].spotsavailable
      // console.log('initial spots:', spots);
      if (spots === 0) {
        res.send({ message: 'failed' });
      } else {
        spots--
        await db.query(updateClassSpots, [spots, id])
        response = await db.query(getClassSpots, [id])
        spots = response.rows[0].spotsavailable
        // console.log('updated spots from db:', spots);
        res.send({ message: 'success' });
      }
    }
    catch (err) {
      res.send({ status: 'failed' })
      err
    }
  })

  router.post('/:class_id/cancel', async (req, res) => {
    const id = req.body.class_id;
    try {
      console.log('------------------');
      let response = await db.query(getClassSpots, [id])
      let spots = response.rows[0].spotsavailable
      // console.log('initial spots:', spots);
      spots++
      await db.query(updateClassSpots, [spots, id])
      response = await db.query(getClassSpots, [id])
      spots = response.rows[0].spotsavailable
      // console.log('updated spots from db:', spots);
      res.send({ message: 'success' });
    }
    catch (e) {
      res.send({ status: 'failed' })
      throw e
    }
  })

  return router;
}
