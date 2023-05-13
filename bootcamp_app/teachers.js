'use strict';
const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});
console.log('connected');
const queryString = `
SELECT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students on student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name LIKE $1
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;
`;

const cohortName = process.argv[2];

const values = [`%${cohortName}%`];


pool.query(queryString, values)
.then(res => {
    res.rows.forEach(user => {
        
        console.log(user.cohort +": "+user.teacher);
    
})
})
.catch(err => console.error('query error', err.stack))