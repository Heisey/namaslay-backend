const updateClassSpots = `
UPDATE classes
SET spotsAvailable = $1
WHERE id = $2;
`

const getClassSpots = `
SELECT spotsAvailable FROM classes WHERE id = $1;
`

module.exports = {
  updateClassSpots,
  getClassSpots
};
