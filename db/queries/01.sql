SELECT classes.id, classes.name, program_id, start_time, spotsAvailable, teacher_id, discipline_id, classes.difficulty
FROM classes
JOIN days ON days.id = day_id
WHERE monthNumber = 7
