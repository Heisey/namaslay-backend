const express = require('express');
const router = express.Router();
const path = require('path')
const stripe = require('stripe')(process.env.STRIPE_SECRET_KEY);
const nodemailer = require('nodemailer')
const { getImage, sendEmail } = require('../helpers/routerFunctions')

// ?? Routes mounted on /classes

const {
  updateClassSpots,
  getClassSpots,
  getClassName,
  getClassDetails
} = require('../queries/bookingQueries');
const { getStudentInfo,
  getStudentPasses,
  createPassPurchase,
  createStudentSession,
  getStudentPassesCount } = require('../queries/studentsQueries');

module.exports = (db) => {

  router.post('/:class_id/book', async (req, res) => {
    try {
      console.log(req.body.class_id);

      const class_id = req.body.class_id;
      const student_id = req.body.student_id;
      const filePath = path.resolve(__dirname, '../lib', 'code.jpg')

      // ?? make sure the class isn't full
      const initSpotsRes = await db.query(getClassSpots, [class_id])
      let spots = initSpotsRes.rows[0].spotsavailable

      if (spots === 0) {
        res.send({ message: 'failed no spots' });
      } else {

        // ?? add a single pass and immediately decrement it so that if it's cancelled, there's something there to reinstate

        await db.query(createPassPurchase, ['single', student_id, 0])

        // ?? check for an active session

        // ?? create a session - for some reason need to grab the latest ID first...

        let response = await db.query(`select id from sessions order by id desc limit 1`)
        const lastSession = response.rows[0].id

        await db.query(createStudentSession, [lastSession + 1, student_id, class_id, 'reserved'])

        // ?? get new sessions data
        response = await db.query(`select * from sessions where student_id = ${student_id} and status = 'reserved';`)
        const sessionsData = response.rows

        // ?? get latest passCount
        const passes = await db.query(getStudentPasses, [student_id])
        const passCount = passes.rows.reduce((acc, pass) => {
          return acc + pass.sessions_remaining
        }, 0)

        // ?? decrement spots in the class

        spots--
        await db.query(updateClassSpots, [spots, class_id])
        response = await db.query(getClassDetails, [class_id])
        const classDetails = response.rows[0]
        const className = response.rows[0].name

        // ?? email confirmation/qr

        await getImage(className, filePath)
        await sendEmail(className, filePath)

        // ?? process stripe payment

        const intent = await stripe.paymentIntents.create({
          amount: 1099,
          currency: 'cad',
          metadata: { integration_check: 'accept_a_payment' }
        });
        res.send({ message: 'success', passCount, classDetails, sessionsData, client_secret: intent.client_secret });
      }
    }
    catch (err) {
      console.log(err)
      res.send({ status: 'failed error' })

    }
  })

  // router.post('/:class_id/book-test', async (req, res) => {
  //   try {
  //     const class_id = req.body.class_id;
  //     const student_id = req.body.student_id;
  //     const filePath = path.resolve(__dirname, '../lib', 'code.jpg')

  //     // ?? make sure the class isn't full
  //     const initSpotsRes = await db.query(getClassSpots, [class_id])
  //     let spots = initSpotsRes.rows[0].spotsavailable

  //     if (spots === 0) {
  //       res.send({ message: 'failed no spots' });
  //     } else {

  //       // ?? get latest passCount
  //       let passes = await db.query(getStudentPasses, [student_id])
  //       let passCount = passes.rows.reduce((acc, pass) => {
  //         return acc + pass.sessions_remaining
  //       }, 0)

  //       // ?? check for an active session

  //       // ?? create a session - for some reason need to grab the latest ID first...

  //       let response = await db.query(`select id from sessions order by id desc limit 1`)
  //       const lastSession = response.rows[0].id

  //       await db.query(createStudentSession, [lastSession + 1, student_id, class_id, 'reserved'])

  //       // ?? get new sessions data
  //       response = await db.query(`select * from sessions where student_id = ${student_id} and status = 'reserved';`)
  //       const sessionsData = response.rows

  //       // ?? decrement spots in the class

  //       spots--
  //       await db.query(updateClassSpots, [spots, class_id])
  //       response = await db.query(getClassDetails, [class_id])
  //       const classDetails = response.rows[0]
  //       const className = response.rows[0].name

  //       // ?? email confirmation/qr

  //       // await getImage(className, filePath)
  //       // await sendEmail(className, filePath)

  //       // ?? process stripe payment

  //       const intent = await stripe.paymentIntents.create({
  //         amount: 1099,
  //         currency: 'cad',
  //         metadata: { integration_check: 'accept_a_payment' }
  //       });

  //       // ?? if they didn't have a pass already
  //       if (passCount === 0) {
  //         // ?? add a single pass and immediately decrement it so that if it's cancelled, there's something there to reinstate

  //         await db.query(createPassPurchase, ['single', student_id, 0])
  //       } else {
  //         // ?? if they did

  //       }

  //       // ?? get latest passCount
  //       const passes = await db.query(getStudentPasses, [student_id])
  //       let passCount = passes.rows.reduce((acc, pass) => {
  //         return acc + pass.sessions_remaining
  //       }, 0)
  //       res.send({ message: 'success', passCount, classDetails, sessionsData, client_secret: intent.client_secret });
  //     }
  //   }
  //   catch (err) {
  //     console.log(err)
  //     res.send({ status: 'failed error' })

  //   }
  // })

  router.post('/:class_id/cancel', async (req, res) => {
    const class_id = req.body.class_id;
    const student_id = req.body.student_id;
    try {

      // ?? update the spots in the class

      let response = await db.query(getClassSpots, [class_id])
      let spots = response.rows[0].spotsavailable
      spots++
      await db.query(updateClassSpots, [spots, class_id])
      response = await db.query(getClassSpots, [class_id])
      spots = response.rows[0].spotsavailable

      // ?? update student sessions

      // ?? update sessions set status = 'cancelled' where student_id = $1 and class_id = $
      await db.query(`update sessions set status = 'cancelled' where student_id = ${student_id} and class_id = ${class_id}`)

      // ?? get new sessions data
      response = await db.query(`select * from sessions where student_id = ${student_id} and status = 'reserved';`)
      const sessionsData = response.rows

      // ?? update student passCount

      // ?? check if they have an active passcard -
      response = await db.query(getStudentPasses, [student_id])

      if (!response.rows[0]) {

        // ?? if not, create a single
        await db.query(createPassPurchase, ['single', student_id, 1])
        console.log('hello');

      } else {
        // ?? if they do, increment passcount
        const passID = response.rows[0].id
        await db.query(`update passes set sessions_remaining = 1 where id = ${passID}`)
      }

      // ?? get latest passcount data

      const passes = await db.query(getStudentPasses, [student_id])
      const passCount = passes.rows.reduce((acc, pass) => {
        return acc + pass.sessions_remaining
      }, 0)

      res.send({ message: 'success', passCount, sessionsData });

    }
    catch (e) {
      res.send({ status: 'failed' })
      throw e
    }
  })

  return router;
}
