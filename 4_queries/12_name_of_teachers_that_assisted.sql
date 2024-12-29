-- SELECT
-- FROM TABLE1
-- JOIN TABLE2 ON TABLE1.column = TABLE2.column
-- WHERE
-- GROUP BY
-- HAVING
-- ORDER BY
-- LIMIT

SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
FROM teachers 
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;


-- curious, textbook solution reverses the joins in certain ways, but still works
-- SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
-- FROM teachers
-- JOIN assistance_requests ON teacher_id = teachers.id
-- JOIN students ON student_id = students.id
-- JOIN cohorts ON cohort_id = cohorts.id
-- WHERE cohorts.name = 'JUL02'
-- ORDER BY teacher;

-- TEMPLATE
-- SELECT
--   assignments.id AS id,
--   assignments.name AS name,
--   assignments.day AS day,
--   assignments.chapter AS chapter,
--   count(assistance_requests.*) AS total_requests
-- FROM
--   assignments
--   JOIN assistance_requests ON assignments.id = assistance_requests.assignment_id
-- GROUP BY
--   assignments.id,
--   assignments.name,
--   assignments.day,
--   assignments.chapter
-- ORDER BY
--   total_requests DESC;