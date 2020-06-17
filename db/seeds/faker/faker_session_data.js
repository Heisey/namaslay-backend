require('dotenv').config();
const faker = require('faker');
const { Pool } = require('pg');
const dbParams = require('./lib/db.js');
const db = new Pool(dbParams);

function getRandomInt(max, start) {
  return Math.floor(Math.random() * Math.floor(max) + start);
}

//days
const generateDays = () => {
  let statement = []
  let dayID = 1000
  //2019
  for (let m = 1; m <= 12; m++) {
    if (m === 1 || m === 3 || m === 5 || m === 7 || m === 8 || m === 10 || m === 12) {
      days = 31
    } else if (m === 2) {
      days = 28
    } else {
      days = 30
    }
    for (let d = 1; d <= days; d++) {

      statement.push({
        id: dayID,
        year: 2019,
        monthNumber: m,
        dayNumber: d
      }
      )
      dayID++
    }
  }

  //2020
  for (let m = 1; m <= 5; m++) {
    if (m === 1 || m === 3 || m === 5 || m === 7 || m === 8 || m === 10 || m === 12) {
      days = 31
    } else if (m === 2) {
      days = 29
    } else {
      days = 30
    }
    for (let d = 1; d <= days; d++) {
      statement.push({
        id: dayID,
        year: 2020,
        monthNumber: m,
        dayNumber: d
      }
      )
      dayID++
    }
  }
  return statement;
}

// const daysAry = generateDays()
const insertDays = (data) => {
  const statement = `INSERT INTO days(id, year, monthNumber, dayNumber) VALUES `;
  let values = '';
  let row = {};

  for (let i = 0; i < data.length - 1; i++) {
    row = data[i];
    let value = `('${row.id}', '${row.year}', '${row.monthNumber}', '${row.dayNumber}')`;
    value += ', ';
    values += value;
  }

  row = data[data.length - 1];
  values += `('${row.id}', '${row.year}', '${row.monthNumber}', '${row.dayNumber}')`;
  values += ';';
  return { statement, values };
}

//classes
const generateClasses = () => {
  let statement = []
  const classNames = [
    ['Headstands', 1, 'Extreme', 6],
    ['Yoga for MMA', 4, 'Advanced', 6],
    ['Headstands', 1, 'Extreme', 6],
    ['Yoga for MMA', 4, 'Advanced', 6],
    ['Yoga for MMA', 4, 'Advanced', 6],
    ['Energize Your Body & Mind', 5, 'All Levels', 1],
    ['Intro Yoga', 2, 'Beginner', 2],
    ['Headstands', 1, 'Extreme', 6],
    ['Optimal Back Health', 3, 'Intermediate', 3],
    ['Yoga for MMA', 4, 'Advanced', 6],
    ['Energize Your Body & Mind', 5, 'All Levels', 1],
    ['Intro Yoga', 2, 'Beginner', 2],
    ['Optimal Back Health', 3, 'Intermediate', 3],
    ['Optimal Back Health', 3, 'Intermediate', 3],
    ['Yoga for MMA', 4, 'Advanced', 6],
    ['Optimal Back Health', 3, 'Intermediate', 3],
    ['Headstands', 1, 'Extreme', 6],
    ['Yoga for MMA', 4, 'Advanced', 6],
    ['Energize Your Body & Mind', 5, 'All Levels', 1],
    ['Optimal Back Health', 3, 'Intermediate', 3],
    ['Intro Yoga', 2, 'Beginner', 2],
    ['Energize Your Body & Mind', 5, 'All Levels', 1],
    ['Headstands', 1, 'Extreme', 6],
    ['Headstands', 1, 'Extreme', 6],
    ['Intro Yoga', 2, 'Beginner', 2],
    ['Headstands', 1, 'Extreme', 6],
    ['Yoga for MMA', 4, 'Advanced', 6],
    ['Intro Yoga', 2, 'Beginner', 2],
    ['Yoga for MMA', 4, 'Advanced', 6],
    ['Intro Yoga', 2, 'Beginner', 2],
    ['Energize Your Body & Mind', 5, 'All Levels', 1],
    ['Headstands', 1, 'Extreme', 6],
    ['Optimal Back Health', 3, 'Intermediate', 3]
  ]

  // for (let i = 1000; i <= 1080; i++) {
  //   let cl = classNames[getRandomInt(classNames.length - 1, 0)]
  //   let obj = {
  //     id: i,
  //     teacher_id: getRandomInt(9, 1),
  //     name: cl[0],
  //     program_id: cl[1],
  //     start_time: getRandomInt(20 - 8, 8),
  //     spotsavailable: getRandomInt(20, 1),
  //     discipline_id: cl[3],
  //     difficulty: cl[2],
  //     day_id: getRandomInt(1516 - 1000, 1000)
  //   }
  //   statement.push(obj)
  // }

  // need january 2020 data
  // for (let i = 1081; i <= 1085; i++) {
  let cl = classNames[getRandomInt(classNames.length - 1, 0)]
  //   let obj = {
  //     id: i,
  //     teacher_id: getRandomInt(9, 1),
  //     name: cl[0],
  //     program_id: cl[1],
  //     start_time: getRandomInt(20 - 8, 8),
  //     spotsavailable: getRandomInt(20, 1),
  //     discipline_id: cl[3],
  //     difficulty: cl[2],
  //     day_id: getRandomInt(1395 - 1365, 1395)
  //   }
  //   statement.push(obj)
  // }

  //need two feb classes
  let obj1 = {
    id: 1086,
    teacher_id: getRandomInt(9, 1),
    name: cl[0],
    program_id: cl[1],
    start_time: getRandomInt(20 - 8, 8),
    spotsavailable: getRandomInt(20, 1),
    discipline_id: cl[3],
    difficulty: cl[2],
    day_id: getRandomInt(1058 - 1031, 1031)
  }
  statement.push(obj1)

  let obj2 = {
    id: 1087,
    teacher_id: getRandomInt(9, 1),
    name: cl[0],
    program_id: cl[1],
    start_time: getRandomInt(20 - 8, 8),
    spotsavailable: getRandomInt(20, 1),
    discipline_id: cl[3],
    difficulty: cl[2],
    day_id: getRandomInt(1058 - 1031, 1031)
  }
  statement.push(obj2)
  return statement;
}
// const classesAry = generateClasses();
const insertClasses = (data) => {
  const statement = `INSERT INTO classes(id, teacher_id, name, program_id, start_time, spotsavailable, discipline_id, difficulty, day_id) VALUES `;
  let values = '';
  let row = {};

  for (let i = 0; i < data.length - 1; i++) {
    row = data[i];
    let value = `('${row.id}', '${row.teacher_id}', '${row.name}', '${row.program_id}', '${row.start_time}', '${row.spotsavailable}', '${row.discipline_id}', '${row.difficulty}', '${row.day_id}')`;
    value += ', ';
    values += value;
  }

  row = data[data.length - 1];
  values += `('${row.id}', '${row.teacher_id}', '${row.name}', '${row.program_id}', '${row.start_time}', '${row.spotsavailable}', '${row.discipline_id}', '${row.difficulty}', '${row.day_id}')`;
  values += ';';
  return { statement, values };
};

const prepSessions = () => {
  let sessions = []

  // for (let i = 1000; i <= 1080; i++) {
  //   let obj = {
  //     id: i - 999,
  //     student_id: 1,
  //     class_id: i,
  //     status: 'complete',
  //   }
  //   sessions.push(obj)
  // }

  //future sessions
  // for (let i = 1; i < 15; i++) {
  //   let obj = {
  //     id: i + 81,
  //     student_id: 1,
  //     class_id: getRandomInt(45 - 20, 20),
  //     status: 'reserved',
  //   }
  //   sessions.push(obj)
  // }

  //past sessions June
  // for (let i = 1; i < 5; i++) {
  //   let obj = {
  //     id: i + 95,
  //     student_id: 1,
  //     class_id: getRandomInt(146, 1),
  //     status: 'complete',
  //   }
  //   sessions.push(obj)
  // }

  //past sessions April and May

  // let obj1 = {
  //   id: 100,
  //   student_id: 1,
  //   class_id: 1079,
  //   status: 'complete',
  // }
  // sessions.push(obj1)
  // let obj2 = {
  //   id: 101,
  //   student_id: 1,
  //   class_id: 1071,
  //   status: 'complete',
  // }
  // sessions.push(obj2)
  // let obj3 = {
  //   id: 102,
  //   student_id: 1,
  //   class_id: 1070,
  //   status: 'complete',
  // }
  // sessions.push(obj3)
  // let obj4 = {
  //   id: 103,
  //   student_id: 1,
  //   class_id: 1062,
  //   status: 'complete',
  // }
  // sessions.push(obj4)
  // let obj5 = {
  //   id: 104,
  //   student_id: 1,
  //   class_id: 1053,
  //   status: 'complete',
  // }
  // sessions.push(obj5)
  // let obj6 = {
  //   id: 105,
  //   student_id: 1,
  //   class_id: 1043,
  //   status: 'complete',
  // }
  // sessions.push(obj6)
  // let obj7 = {
  //   id: 106,
  //   student_id: 1,
  //   class_id: 1037,
  //   status: 'complete',
  // }
  // sessions.push(obj7)
  // let obj8 = {
  //   id: 107,
  //   student_id: 1,
  //   class_id: 1028,
  //   status: 'complete',
  // }
  // sessions.push(obj8)
  // let obj9 = {
  //   id: 108,
  //   student_id: 1,
  //   class_id: 1008,
  //   status: 'complete',
  // }
  // sessions.push(obj9)

  // January classes
  // let obj1 = {
  //   id: 109,
  //   student_id: 1,
  //   class_id: 1081,
  //   status: 'complete',
  // }
  // sessions.push(obj1)
  // let obj2 = {
  //   id: 110,
  //   student_id: 1,
  //   class_id: 1082,
  //   status: 'complete',
  // }
  // sessions.push(obj2)
  // let obj3 = {
  //   id: 111,
  //   student_id: 1,
  //   class_id: 1083,
  //   status: 'complete',
  // }
  // sessions.push(obj3)
  // let obj4 = {
  //   id: 112,
  //   student_id: 1,
  //   class_id: 1084,
  //   status: 'complete',
  // }
  // sessions.push(obj4)
  // let obj5 = {
  //   id: 113,
  //   student_id: 1,
  //   class_id: 1085,
  //   status: 'complete',
  // }
  // sessions.push(obj5)

  //feb 2019 classes
  let obj1 = {
    id: 114,
    student_id: 1,
    class_id: 1086,
    status: 'complete',
  }
  sessions.push(obj1)
  let obj2 = {
    id: 115,
    student_id: 1,
    class_id: 1087,
    status: 'complete',
  }
  sessions.push(obj2)

  return sessions
}
// const sessionsAry = prepSessions()
const insertSessions = (data) => {
  const statement = `INSERT INTO sessions(id, student_id, class_id, status) VALUES `;
  let values = '';
  let row = {};

  for (let i = 0; i < data.length - 1; i++) {
    row = data[i];
    let value = `('${row.id}', '${row.student_id}', '${row.class_id}', '${row.status}')`;
    value += ', ';
    values += value;
  }

  row = data[data.length - 1];
  values += `('${row.id}', '${row.student_id}', '${row.class_id}', '${row.status}')`;
  values += ';';
  return { statement, values };
}

// console.log(daysAry[15]);
// console.log(classesAry[15]);
// console.log(sessionsAry[15]);


// const ob1 = insertDays(daysAry)
// const ob2 = insertClasses(classesAry);
// const ob3 = insertSessions(sessionsAry);

console.log("Query statement is constructed");



db.connect()
  .then(db => {
    console.log("Connected to DB...");
    // db.query(ob1.statement + ob1.values);
    db.query(ob2.statement + ob2.values);
    db.query(ob3.statement + ob3.values);
  }).catch(err => {
    console.log(err);
  });
