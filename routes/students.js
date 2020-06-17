const express = require('express');
const router = express.Router();
const stripe = require('stripe')(process.env.STRIPE_SECRET_KEY);

const { getStudentInfo,
  getStudentPasses,
  createPassPurchase,
  getUpcomingClasses,
  getStudentPassesCount } = require('../queries/studentsQueries');

const { getSessionsRemaining } = require('../helpers/routerFunctions')

module.exports = (db) => {

  router.post('/login', async (req, res) => {
    try {
      const password = req.body.password
      const email = req.body.email

      // ?? verify credentials
      let responseObject = await db.query(getStudentInfo, [email])
      const data = responseObject.rows[0];
      const id = data.id


      if (responseObject.rows.length && data.password === password) {

        // ?? get latest passCount
        const passes = await db.query(getStudentPasses, [id])
        const passCount = passes.rows.reduce((acc, pass) => {
          return acc + pass.sessions_remaining
        }, 0)
        data.passCount = passCount

        // ?? sessions data
        let response = await db.query(`select * from sessions where student_id = ${id} and status = 'reserved';`)
        data.sessionsData = response.rows
        responseObject = { status: 'success', data }
        setTimeout(() => {
          res.send(responseObject)
        }, 1500);

      }
      else {
        res.send({ status: 'failed' })
      }
    }
    catch (error) {
      res.send({ status: 'failed' })
      throw error
    }
  });

  router.get('/:student_id', async (req, res) => {
    try {
      const id = req.params.student_id

      // ?? get pass data and latest passCount
      let response = await db.query(getStudentPasses, [id])
      const passes = response.rows
      const passCount = response.rows.reduce((acc, pass) => {
        return acc + pass.sessions_remaining
      }, 0)

      // ?? upcoming classes
      response = await db.query(getUpcomingClasses, [id])
      classSessions = response.rows

      res.send({ status: 'success', passes, passCount, classSessions });
    }
    catch (err) {
      throw err
    }
  });

  router.get('/:student_id/passes', async (req, res) => {
    try {
      const id = req.params.student_id
      const passes = await db.query(getStudentPasses, [id])
      const passCount = passes.rows.reduce((acc, pass) => {
        return acc + pass.sessions_remaining
      }, 0)
      res.send({ passCount });
    }
    catch (err) {
      throw err
    }
  })

  // ?? this is for purchasing a passcard
  router.post('/:student_id/passes', async (req, res) => {
    try {
      const type = req.body.type
      const id = req.params.student_id

      if (!type) {
        res.send({ status: 'failed no type' })
        return
      }

      const limit = getSessionsRemaining(type)

      // ?? get the updated Pass Count
      let responseObj = await db.query(getStudentPassesCount, [id, limit])
      const initPassCount = responseObj.rows[0].count
      await db.query(createPassPurchase, [type, id, limit])

      responseObj = await db.query(getStudentPassesCount, [id, limit])
      const updatedPassCount = responseObj.rows[0].count

      // ?? make sure it actually updated
      if (Number(updatedPassCount) === Number(initPassCount) + 1) {

        // ?? process the stripe payment
        const intent = await stripe.paymentIntents.create({
          amount: 1099,
          currency: 'cad',
          metadata: { integration_check: 'accept_a_payment' }
        });

        // ?? send back the data
        res.send({ status: 'success', updatedPassCount, client_secret: intent.client_secret })
      } else {
        res.send({ status: 'failed db' })
      }
    }
    catch (error) {
      res.send({ status: 'failed error' })
      throw error
    }
  });

  return router;
}
