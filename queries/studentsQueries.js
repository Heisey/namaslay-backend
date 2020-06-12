const getStudentInfo = `
SELECT * FROM students WHERE email = $1;
`

module.exports = {
  getStudentInfo
};
