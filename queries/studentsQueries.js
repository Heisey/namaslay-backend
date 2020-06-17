const getStudentInfo = `
SELECT * FROM students WHERE email = $1;
`

const createPassPurchase = `
INSERT INTO passes (type, student_id, sessions_remaining) VALUES ($1, $2, $3);
`

const getStudentPasses = `
select * from passes where student_id = $1 and sessions_remaining != 0;
`

const getStudentPassesCount = `
select count(*) from passes where student_id = $1 and sessions_remaining = $2;
`

const createStudentSession = `
insert into sessions (id, student_id, class_id, status) values ($1, $2, $3, $4)
`

module.exports = {
  getStudentInfo,
  createPassPurchase,
  getStudentPasses,
  getStudentPassesCount,
  createStudentSession
};
