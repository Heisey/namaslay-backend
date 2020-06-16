const selectAllClassesByMonth = `
SELECT classes.id, teacher_id, name, program_id, start_time, spotsavailable, discipline_id, difficulty, day_id, year, monthNumber, dayNumber FROM classes
JOIN days ON days.id = day_id
WHERE monthNumber = $1
`

const getRandomQuote = `
SELECT * FROM quotes
WHERE id = $1
LIMIT 1;
`

const selectAllClassesByDay = `
SELECT classes.id, classes.name, program_id, start_time, spotsAvailable, teacher_id, discipline_id, classes.difficulty
FROM classes
JOIN days ON days.id = day_id
WHERE dayNumber = $1;
`

const selectAllDaysofMonth = `
SELECT * FROM days WHERE monthNumber = $1;
`

const selectAllTeachers = `
SELECT id, name, bio, imageurlsquare, imageurlcutout FROM teachers;
`

const selectAllDisciplines = `
SELECT id, name, description, imageurlsquare, imageurlcutout FROM disciplines;
`

const selectAllPrograms = `
SELECT id, name, description, imageurlsquare, imageurlcutout FROM programs;
`

const selectAllDifficulties = `
SELECT id, description, imageurlsquare, imageurlcutout FROM difficulties;
`

const selectClassesByDay = `
SELECT * FROM classes
WHERE day_id = $1;
`

const getNumberOfQuotes = `
select count(*) from quotes
`

module.exports = {
  selectAllTeachers,
  selectAllClassesByMonth,
  selectAllClassesByDay,
  selectAllDaysofMonth,
  selectAllDisciplines,
  selectAllPrograms,
  selectAllDifficulties,
  selectClassesByDay,
  getRandomQuote,
  getNumberOfQuotes
}
