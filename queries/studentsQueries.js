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

const getUpcomingClasses = `
select distinct teachers.name as teacher, classes.name as name, start_time, daynumber, monthnumber from classes
join days on days.id = day_id
join sessions on class_id = classes.id
join students on sessions.student_id = students.id
join teachers on teacher_id = teachers.id
join disciplines on disciplines.id = discipline_id
join programs on program_id = programs.id
where status = 'reserved'
and sessions.student_id = $1
order by monthnumber, daynumber, start_time
`

module.exports = {
  getStudentInfo,
  createPassPurchase,
  getStudentPasses,
  getStudentPassesCount,
  createStudentSession,
  getUpcomingClasses
};
