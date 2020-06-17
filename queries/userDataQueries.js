const getTopClasses = `
select count(classes.name), disciplines.name AS discipline, classes.name AS class from classes
join sessions on classes.id = class_id
join disciplines on classes.discipline_id = disciplines.id
join students on sessions.student_id = students.id
where students.id = $1
group by classes.name, disciplines.name
order by count(classes.name) desc
limit 5;
`

const getTopClassesByYear = `
select count(classes.name), days.year, disciplines.name AS discipline, classes.name AS class from classes
join sessions on classes.id = class_id
join days on day_id = days.id
join disciplines on classes.discipline_id = disciplines.id
join students on sessions.student_id = students.id
where students.id = $1 and year = $2
group by classes.name, disciplines.name, days.year
order by count(classes.name) desc
limit 5;
`

const getAllClasses = `
select classes.name, teachers.name as teacher, programs.name as program, disciplines.name as disc, days.id as day_id, monthNumber, year from classes
join days on day_id = days.id
join disciplines on disciplines.id = discipline_id
join programs on programs.id = program_id
join teachers on teachers.id = teacher_id
join sessions on classes.id = class_id
join students on students.id = student_id
where student_id = $1 and status = 'complete'
group by monthNumber, classes.name, year, days.id, disciplines.name, teachers.name, programs.name
order by year, monthNumber;
`
module.exports = {
  getTopClasses,
  getTopClassesByYear,
  getAllClasses
}
