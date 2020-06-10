/*const selectAllStories = `
SELECT content, title, genres.name, users.name, to_char(AVG (rating),'9D9') AS average_rating
FROM stories
JOIN story_ratings ON story_ratings.story_id = stories.id
JOIN story_genres ON story_genres.story_id = stories.id
JOIN genres ON genre_id = genres.id
JOIN users ON author_id = users.id
GROUP BY content, title, genres.name, users.name
LIMIT $1;
`

*/


const selectAllClassesByMonth = `
SELECT classes.id, classes.name, program_id, start_time, spotsAvailable, teacher_id, discipline_id, classes.difficulty
FROM classes
JOIN days ON days.id = day_id
WHERE monthNumber = $1
LIMIT 15;
`

const selectAllClassesByDay = `
SELECT classes.id, classes.name, program_id, start_time, spotsAvailable, teacher_id, discipline_id, classes.difficulty
FROM classes
JOIN days ON days.id = day_id
WHERE dayNumber = $1;
`

const selectAllDaysofMonth = `
SELECT year, monthNumber, dayNumber FROM days WHERE monthNumber = $1;
`

module.exports = {
  selectAllClassesByMonth,
  selectAllClassesByDay,
  selectAllDaysofMonth
}
