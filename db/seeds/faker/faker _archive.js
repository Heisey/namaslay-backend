require('dotenv').config();
const faker = require('faker');
const { Pool } = require('pg');
const dbParams = require('./db');
const db = new Pool(dbParams);

let students = [];
let teachers = [];
const disciplines = [
  {
    name: 'Vinyasa',
    description: faker.lorem.paragraphs(1)
  },
  {
    name: 'Hatha',
    description: faker.lorem.paragraphs(1)
  },
  {
    name: 'Ashtanga',
    description: faker.lorem.paragraphs(1)
  },
  {
    name: 'Yin',
    description: faker.lorem.paragraphs(1)
  },
  {
    name: 'Hot',
    description: faker.lorem.paragraphs(1)
  },
  {
    name: 'Anusara',
    description: faker.lorem.paragraphs(1)
  },
]
let programs = [];
let classes = [];
let program_teachers = [];
let teacher_reviews = [];
let session_reviews = [];
let sessions = [];

let subscriptions = [];
let program_dates = [];
let dates = [];
let days = [];
let times = [];
let day_times = [];

const difficulty = [
  'Beginner 1',
  'Beginner 2',
  'Intermediate',
  'Advanced',
  'All Levels',
]

// 30 students
for (let i = 0; i < 30; i++) {
  let name = faker.name.firstName() + ' ' + faker.name.lastName();
  let ob = {
    name: name,
  }
  students.push(ob);
}
const insertStudents = (data) => {
  const statement = `INSERT INTO students(name) VALUES `;
  let values = '';
  let row = {};

  for (let i = 0; i < data.length - 1; i++) {
    row = data[i];
    row.name = row.name.replace("'", "''");
    let value = `(\'${row.name}\')`;
    value += ', ';
    values += value;
  }

  row = data[data.length - 1];
  row.name = row.name.replace("'", "''");
  values += `(\'${row.name}\')`;
  values += ';';
  return { statement, values };
}

// 10 teachers
for (let i = 0; i < 10; i++) {
  let name = faker.name.firstName() + ' ' + faker.name.lastName();
  let ob = {
    name: name,
  }
  teachers.push(ob);
}
const insertTeachers = (data) => {
  const statement = `INSERT INTO teachers(name) VALUES `;
  let values = '';
  let row = {};

  for (let i = 0; i < data.length - 1; i++) {
    row = data[i];
    row.name = row.name.replace("'", "''");
    let value = `(\'${row.name}\')`;
    value += ', ';
    values += value;
  }

  row = data[data.length - 1];
  row.name = row.name.replace("'", "''");
  values += `(\'${row.name}\')`;
  values += ';';
  return { statement, values };
}

//7 disciplines
const insertDisciplines = (data) => {
  const statement = `INSERT INTO disciplines(name, description) VALUES `;
  let values = '';
  let row = {};

  for (let i = 0; i < data.length - 1; i++) {
    row = data[i];
    let value = `('${row.name}', '${row.description}')`;
    value += ', ';
    values += value;
  }

  row = data[data.length - 1];
  values += `('${row.name}', '${row.description}')`;
  values += ';';
  return { statement, values };
}

// 30 programs
//current
for (let i = 0; i <= 5; i++) {
  let obj = {
    name: faker.random.words(Math.ceil(Math.random() * 3)),
    description: faker.lorem.paragraphs(1),
    difficulty: difficulty[faker.random.number(5)],
    end_date: faker.date.soon(faker.random.number(45))
  }
  programs.push(obj)
}

// past
for (let i = 0; i <= 15; i++) {
  // let start_date = faker.date.past(faker.random.number(3))
  let obj = {
    name: faker.random.words(Math.ceil(Math.random() * 3)),
    description: faker.lorem.paragraphs(1),
    difficulty: difficulty[faker.random.number(5)],
    end_date: faker.date.past(faker.random.number(3))
  }
  programs.push(obj)
}

//recent past
for (let i = 0; i <= 10; i++) {
  let obj = {
    name: faker.random.words(Math.ceil(Math.random() * 3)),
    description: faker.lorem.paragraphs(1),
    difficulty: difficulty[faker.random.number(5)],
    end_date: faker.date.recent(faker.random.number(250))
  }
  programs.push(obj)
}

const insertPrograms = (data) => {
  const statement = `INSERT INTO programs(name, description, difficulty, end_date) VALUES `;
  let values = '';
  let row = {};

  for (let i = 0; i < data.length - 1; i++) {
    row = data[i];
    let value = `('${row.name}', '${row.description}', '${row.difficulty}', '${row.end_date}')`;
    value += ', ';
    values += value;
  }

  row = data[data.length - 1];
  values += `('${row.name}', '${row.description}', '${row.difficulty}', '${row.end_date}')`;
  values += ';';
  return { statement, values };
};

//5 classes in programs, 10 other classes
// 5 in programs
for (let i = 0; i <= 5; i++) {
  let obj = {
    difficulty: difficulty[faker.random.number(5)],
    teacher_id: teachers[faker.random.number(5)],
    spots: faker.random.number(15),
    program_id: programs[faker.random.number(5)],
    discipline_id: disciplines[faker.random.number(7)],
  }
  classes.push(obj)
}
//10 other
for (let i = 0; i <= 5; i++) {
  let obj = {
    difficulty: difficulty[faker.random.number(5)],
    teacher_id: teachers[faker.random.number(5)],
    spots: faker.random.number(15),
    program_id: null,
    discipline_id: disciplines[faker.random.number(7)],
  }
  classes.push(obj)
}

const insertClasses = (data) => {
  const statement = `INSERT INTO classes(difficulty, teacher_id, spots, program_id, discipline_id) VALUES `;
  let values = '';
  let row = {};

  for (let i = 0; i < data.length - 1; i++) {
    row = data[i];
    let value = `('${row.difficulty}', '${row.teacher_id}', '${row.spots}', '${row.program_id}', '${row.discipline_id}')`;
    value += ', ';
    values += value;
  }

  row = data[data.length - 1];
  values += `('${row.difficulty}', '${row.teacher_id}', '${row.spots}', '${row.program_id}', '${row.discipline_id}')`;
  values += ';';
  return { statement, values };
};

//program_teachers
for (let i = 0; i <= 45; i++) {
  let obj = {
    teacher_id: faker.random.number(10),
    program_id: faker.random.number(30),
  }
  program_teachers.push(obj)
}

const insertProgramTeachers = (data) => {
  const statement = `INSERT INTO program_teachers(teacher_id, program_id) VALUES `;
  let values = '';
  let row = {};

  for (let i = 0; i < data.length - 1; i++) {
    row = data[i];
    let value = `('${row.teacher_id}', '${row.program_id}')`;
    value += ', ';
    values += value;
  }

  row = data[data.length - 1];
  values += `('${row.teacher_id}', '${row.program_id}')`;
  values += ';';
  return { statement, values };
}

//40 teacher reviews
for (let i = 0; i <= 40; i++) {
  let obj = {
    student_id: faker.random.number(30),
    content: faker.lorem.paragraphs(faker.random.number(2)),
    teacher_id: faker.random.number(10),
    rating: Math.random() * (5 - 3) + 3,
    date: faker.date.recent(faker.random.number(450))
  }
  teacher_reviews.push(obj);
}

const insertTeacherReviews = (data) => {
  const statement = `INSERT INTO teacher_reviews(student_id, content, teacher_id, rating, date) VALUES `;
  let values = '';
  let row = {};

  for (let i = 0; i < data.length - 1; i++) {
    row = data[i];
    let value = `('${row.student_id}', '${row.content}', '${row.teacher_id}', '${row.rating}', '${row.date}')`;
    value += ', ';
    values += value;
  }

  row = data[data.length - 1];
  values += `('${row.student_id}', '${row.content}', '${row.teacher_id}', '${row.rating}', '${row.date}')`;
  values += ';';
  return { statement, values };
}

//80 session reviews
for (let i = 0; i <= 80; i++) {
  let obj = {
    student_id: faker.random.number(30),
    content: faker.lorem.paragraphs(faker.random.number(1)),
    rating: Math.random() * (5 - 3) + 3,
    date: faker.date.recent(faker.random.number(450)),
    session_id: faker.random.number(900)
  }
  session_reviews.push(obj);
}

const insertSessionReviews = (data) => {
  const statement = `INSERT INTO session_reviews(student_id, content, rating, date, session_id,) VALUES `;
  let values = '';
  let row = {};

  for (let i = 0; i < data.length - 1; i++) {
    row = data[i];
    let value = `('${row.student_id}', '${row.content}', '${row.rating}', '${row.date}', '${row.session_id}')`;
    value += ', ';
    values += value;
  }

  row = data[data.length - 1];
  values += `('${row.student_id}', '${row.content}', '${row.rating}', '${row.date}', '${row.session_id}')`;
  values += ';';
  return { statement, values };
}

const prepSessions = () => {

  const status = [
    'reserved',
    'checked_in',
    'complete',
    'cancelled',
    'no_show'
  ]

  //complete past sessions
  for (let i = 0; i < 900, i++) {
    let obj = {
      date: faker.date.recent(faker.random.number(900)),
      student_id: faker.random.number(30),
      paid: true,
      status: 'complete',
      class_id: faker.random.number(15),
    }
    sessions.push(obj)
  }

  //incomplete
  for (let i = 0; i < 200, i++) {
    let obj = {
      date: faker.date.recent(faker.random.number(900)),
      student_id: faker.random.number(30),
      paid: false,
      status: status[Math.random() * (4 - 3) + 3],
      class_id: faker.random.number(15),
    }
    sessions.push(obj)
  }

  //future sessions
  for (let i = 0; i < 1200, i++) {
    let obj = {
      date: faker.date.soon(faker.random.number(12)),
      student_id: faker.random.number(30),
      paid: faker.random.boolean(),
      status: status[Math.random() * (4 - 3) + 3],
      class_id: faker.random.number(15),
    }
    sessions.push(obj)
  }
}

const insertSessions = (data) => {
  const statement = `INSERT INTO session_reviews(date, student_id, paid, status, class_id,) VALUES `;
  let values = '';
  let row = {};

  for (let i = 0; i < data.length - 1; i++) {
    row = data[i];
    let value = `('${row.date}', '${row.student_id}', '${row.paid}', '${row.status}', '${row.class_id}')`;
    value += ', ';
    values += value;
  }

  row = data[data.length - 1];
  values += `('${row.date}', '${row.student_id}', '${row.paid}', '${row.status}', '${row.class_id}')`;
  values += ';';
  return { statement, values };
}

const ob0 = insertStudents(students);
const ob1 = insertTeachers(teachers);
const ob2 = insertDisciplines(disciplines);
const ob3 = insertPrograms(programs);
const ob4 = insertClasses(classes);
const ob5 = insertProgramTeachers(program_teachers);
const ob6 = insertTeacherReviews(teacher_reviews);
const ob7 = insertSessionReviews(session_reviews);
const ob8 = insertSessions(sessions);

console.log("Query statement is constructed");


db.connect()
  .then(db => {
    console.log("Connected to DB...");
    db.query(ob0.statement + ob0.values);
    db.query(ob1.statement + ob1.values);
    db.query(ob2.statement + ob2.values);
    db.query(ob3.statement + ob3.values);
    db.query(ob4.statement + ob4.values);
    db.query(ob5.statement + ob5.values);
    db.query(ob6.statement + ob6.values);
    db.query(ob7.statement + ob7.values);
    db.query(ob8.statement + ob8.values);
  }).catch(err => {
    console.log(err);
  });
