const updateClassSpots = `
UPDATE classes
SET spotsavailable = $1
WHERE id = $2;
`

const getClassSpots = `
SELECT spotsAvailable FROM classes WHERE id = $1;
`

const getClassName = `
SELECT name FROM classes WHERE id = $1;
`

module.exports = {
  updateClassSpots,
  getClassSpots,
  getClassName
};
