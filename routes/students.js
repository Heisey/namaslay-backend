const express = require('express');
const router = express.Router();
// const dotenv = require('dotenv');
const stripe = require('stripe')(process.env.STRIPE_SECRET_KEY);

const { getStudentInfo,
  getStudentPasses,
  createPassPurchase,
  getStudentPassesCount } = require('../queries/studentsQueries');

module.exports = (db) => {

  router.post('/login', async (req, res) => {
    try {
      const password = req.body.password
      console.log(password);

      const email = req.body.email
      console.log(email);

      let responseObject = await db.query(getStudentInfo, [email])
      const data = responseObject.rows[0];
      if (responseObject.rows.length && data.password === password) {
        responseObject = { status: 'success', data }
        res.send(responseObject)
      }
      else {
        res.send({ status: 'failed because password' })
      }
    }
    catch (error) {
      res.send({ status: 'failed' })
      throw error
    }
  });

  router.post('/:student_id/passes', async (req, res) => {
    try {
      const type = req.body.type
      const id = req.params.student_id

      function getExpiration() {
        let expiration;
        const dateToday = new Date()
        let day = dateToday.getDate()
        let month = dateToday.getMonth() + 1
        let year = dateToday.getFullYear()
        if (month !== 12) {
          expiration = [month + 1, day, year]
        } else {
          expiration = [1, day, year + 1]
        }
        return expiration
      }

      let limit;
      switch (type) {
        case 'single':
          limit = 1;
          break;
        case '5-pack':
          limit = 5;
          break;
        case '25-pack':
          limit = 25
          break;
        case 'monthly':
          limit = getExpiration();
          break;
        default:
          limit = 1;
      }

      let responseObj = await db.query(getStudentPassesCount, [id, limit])
      const initPassCount = responseObj.rows[0].count
      console.log(initPassCount);

      await db.query(createPassPurchase, [type, id, limit])

      responseObj = await db.query(getStudentPassesCount, [id, limit])
      const updatedPassCount = responseObj.rows[0].count
      console.log(updatedPassCount);

      if (Number(updatedPassCount) === Number(initPassCount) + 1) {
        res.send({ status: 'success' })
      } else {
        res.send({ status: 'failed' })
      }
    }
    catch (error) {
      res.send({ status: 'failed error' })
      throw error
    }
  });

  router.get('/:student_id/secret', async (req, res) => {
    const intent = await stripe.paymentIntents.create({
      amount: 1099,
      currency: 'cad',
      metadata: { integration_check: 'accept_a_payment' }
    });

    res.json({ client_secret: intent.client_secret });
  })

  return router;
}
