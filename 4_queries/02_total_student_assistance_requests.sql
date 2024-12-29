-- SELECT COUNT(assistance_requests.assignment_id) AS total_assistances, teachers.name
-- FROM assistance_requests
-- JOIN teachers ON teachers.id = assistance_requests.teacher_id
-- WHERE name = 'Waylon Boehm'
-- GROUP BY teachers.name;

SELECT COUNT(assistance_requests.*) AS total_assistances, students.name
FROM assistance_requests
JOIN students ON students.id = student_id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;