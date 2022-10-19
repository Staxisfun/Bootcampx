SELECT avg(duration) as average_total_duration
FROM (SELECT cohorts.name as cohort, sum(assistance_requests.completed_at - assistance_requests.started_at) as duration
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assistance_requests ON students.id = student_id
GROUP BY cohorts.name
ORDER BY duration) as duration