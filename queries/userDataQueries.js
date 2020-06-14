const getTopClasses = `
select count(classes.name), disciplines.name AS discipline, classes.name AS class from classes
join sessions on classes.id = class_id
join disciplines on classes.discipline_id = disciplines.id
join students on sessions.student_id = students.id
where students.id = 1
group by classes.name, disciplines.name
order by count(classes.name) desc
`

