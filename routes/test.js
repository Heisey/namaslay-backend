const express = require('express');
const router = express.Router();


module.exports = (db) => {

  router.get('/', async (req, res) => {
    try {
      const response = await db.query(`delete from passes`)
      res.send({ message: 'success' })
    }
    catch (err) {
      res.send({ message: 'failed' })
    }
  })

  return router;
}
