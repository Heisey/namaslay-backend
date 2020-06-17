const axios = require('axios')
const fs = require('fs')
const nodemailer = require('nodemailer')


function makeID(length) {
  var result = '';
  var characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789~!@#$%^&*()_+`';
  var charactersLength = characters.length;
  for (var i = 0; i < length; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return result;
}

const getImage = (name, path) => {
  const downloadImage = async () => {
    try {
      const url = `http://api.qrserver.com/v1/create-qr-code/?data=NamaSlayAstroDomine${name}&size=500x500&bgcolor=ef6101&color=000000`;

      const writer = fs.createWriteStream(path)
      const response = await axios({
        url,
        method: 'GET',
        responseType: 'stream'
      })

      response.data.pipe(writer)

      return new Promise((res, rej) => {
        writer.on('finish', res)
        writer.on('error', rej)
      })
    }
    catch (err) {
      res.send({ status: 'failed' })
      throw err
    }
  }
  return downloadImage();
}

const sendEmail = (classname, filepath) => {
  const randomString = makeID(36);
  async function main() {
    try {
      let transport = nodemailer.createTransport({
        host: 'smtp.mailtrap.io',
        port: 2525,
        auth: {
          user: 'b4f6788c2c7367',
          pass: '446834ead51cc2'
        }
      });
      let message = {
        from: 'NamaSlay@TheDragon.com',
        to: '"Astro Domine 👻" <piper@thegatesofdawn.com>',
        subject: `You're registered for ${classname}!`,
        text: "",
        html: `<h1>Here is your Sign In Code</h1><br><p>Please scan this code from your phone when you arrive, or come to the front desk to check in.</p><img src="cid:${randomString}"/>`,
        attachments: [{
          filename: 'code.jpg',
          path: filepath,
          cid: `${randomString}`
        }]
      }
      await transport.sendMail(message, (e, info) => {
        if (e) {
          throw e
        } else {
          console.log("Message sent: %s", info.messageId, '\n', "Preview URL: %s", nodemailer.getTestMessageUrl(info));
        }
      });
    }
    catch (e) {
      throw e
    }
  }
  return main();
}

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

function getSessionsRemaining(type) {
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
  return limit;
}


module.exports = {
  makeID,
  getImage,
  sendEmail,
  getSessionsRemaining
}
