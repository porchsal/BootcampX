SELECT assignments.id, assignments.name, assignments.day, assignments.chapter, COUNT(created_at) AS total_requests
FROM assignments
JOIN assistance_requests ON assignment_id = assignments.id
GROUP BY assignments.id, assignments.name, assignments.day, assignments.chapter
ORDER BY total_requests DESC;
