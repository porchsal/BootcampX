SELECT cohorts.name AS  name, SUM(completed_at-started_at) AS total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP by cohorts.name
ORDER by total_duration;