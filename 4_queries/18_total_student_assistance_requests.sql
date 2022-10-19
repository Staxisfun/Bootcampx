SELECT students.name, count(assistance_requests.*)
FROM students
JOIN assistance_requests ON students.id = student_id
GROUP BY students.name
HAVING students.name = 'Elliot Dickinson';