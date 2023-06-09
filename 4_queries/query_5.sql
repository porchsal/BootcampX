SELECT cohorts.name AS  name, AVG(completed_at-started_at) AS average_assistance_time
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP by cohorts.name
ORDER by average_assistance_time;