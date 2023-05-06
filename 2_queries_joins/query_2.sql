
-- SELECT SUM(duration) AS total_duration
-- FROM assignment_submissions
-- JOIN students
-- ON students.id = assignment_submissions.student_id
-- WHERE assignment_submissions.student_id = (
--     SELECT cohorts.id FROM cohorts
--     RIGHT JOIN students
--     ON cohorts.id = cohort_id
--     WHERE cohorts.name = 'FEB12');

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';