SELECT teachers.name AS teacher, students.name as student, assignments.name AS assignment,  completed_at - started_at AS duration 
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments on assignments.id = assignment_id
GROUP by teacher, student, assignments.name, completed_at - started_at
ORDER BY duration;

-- SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at-started_at) as duration
-- FROM assistance_requests
-- JOIN teachers ON teachers.id = teacher_id
-- JOIN students ON students.id = student_id
-- JOIN assignments ON assignments.id = assignment_id
-- ORDER BY duration;