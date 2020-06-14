const express = require('express');
const router = express.Router();
const path = require('path')
const nodemailer = require('nodemailer')
const { makeID, getImage, sendEmail } = require('../helpers/routerFunctions')

// ?? Routes mounted on /classes

const {
  updateClassSpots,
  getClassSpots,
  getClassName
} = require('../queries/bookingQueries');

module.exports = (db) => {

  // !! update to generate a student session
  router.post('/:class_id/book', async (req, res) => {

    try {
      const id = req.body.class_id;
      const filePath = path.resolve(__dirname, '../lib', 'code.jpg')

      const initSpotsRes = await db.query(getClassSpots, [id])
      let spots = initSpotsRes.rows[0].spotsavailable

      if (spots === 0) {
        res.send({ message: 'failed' });
      } else {
        spots--
        await db.query(updateClassSpots, [spots, id])
        response = await db.query(getClassSpots, [id])
        spots = response.rows[0].spotsavailable
        response = await db.query(getClassName, [id])
        const className = response.rows[0].name
        await getImage(className, filePath)
        await sendEmail(className, filePath)
        res.send({ message: 'success' });
      }
    }
    catch (err) {
      console.log(err)
      res.send({ status: 'failed' })

    }
  })

  router.get('/:class_id/test', async (req, res) => {
    const id = req.params.class_id;

    try {

    }
    catch (e) {
      throw e
    }
  })


  router.post('/:class_id/cancel', async (req, res) => {
    const id = req.body.class_id;
    try {
      let response = await db.query(getClassSpots, [id])
      let spots = response.rows[0].spotsavailable
      spots++
      await db.query(updateClassSpots, [spots, id])
      response = await db.query(getClassSpots, [id])
      spots = response.rows[0].spotsavailable
      res.send({ message: 'success' });
    }
    catch (e) {
      res.send({ status: 'failed' })
      throw e
    }
  })

  return router;
}
