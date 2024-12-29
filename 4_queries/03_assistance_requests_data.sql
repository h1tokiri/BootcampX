-- SELECT
-- FROM TABLE1
-- JOIN TABLE2 ON TABLE1.column = TABLE2.column
-- WHERE
-- GROUP BY
-- HAVING
-- ORDER BY
-- LIMIT


SELECT teachers.name AS teacher, students.name AS students, assignments.name AS assignment, (assistance_requests.completed_at - assistance_requests.started_at) AS duration
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN assignments ON assignment_id = assignments.id
ORDER BY duration ASC;

--textbook solution
-- SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at-started_at) as duration
-- FROM assistance_requests
-- JOIN teachers ON teachers.id = teacher_id
-- JOIN students ON students.id = student_id
-- JOIN assignments ON assignments.id = assignment_id
-- ORDER BY duration;