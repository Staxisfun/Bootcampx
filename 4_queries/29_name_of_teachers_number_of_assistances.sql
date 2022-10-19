SELECT DISTINCT teachers.name as teacher, cohorts.name as cohorts, count(assistance_requests.*) as total_assistances
FROM Students
JOIN cohorts ON cohort_id = cohorts.id
JOIN assistance_requests ON student_id = students.id
JOIN teachers ON teacher_id = teachers.id
WHERE cohorts.name = 'JUL02'
GROUP BY cohorts.name, teachers.name
ORDER BY teachers.name;