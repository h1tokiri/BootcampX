SELECT COUNT(assistance_requests.assignment_id) AS total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = assistance_requests.teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;