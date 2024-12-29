-- SELECT
-- FROM TABLE1
-- JOIN TABLE2 ON TABLE1.column = TABLE2.column
-- WHERE
-- GROUP BY
-- HAVING
-- ORDER BY
-- LIMIT

SELECT teachers.name AS teacher, cohorts.name AS cohort, COUNT(assistance_requests.*) AS total_assistances
FROM teachers 
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;


-- TEXTBOOK ANSWER
-- SELECT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests) as total_assistances
-- FROM teachers
-- JOIN assistance_requests ON teacher_id = teachers.id
-- JOIN students ON student_id = students.id
-- JOIN cohorts ON cohort_id = cohorts.id
-- WHERE cohorts.name = 'JUL02'
-- GROUP BY teachers.name, cohorts.name
-- ORDER BY teacher;