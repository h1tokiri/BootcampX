-- SELECT
-- FROM TABLE1
-- JOIN TABLE2 ON TABLE1.column = TABLE2.column
-- WHERE
-- GROUP BY
-- HAVING
-- ORDER BY
-- LIMIT

SELECT cohorts.name AS name, AVG(completed_at-started_at) AS average_assistance_time
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assistance_time ASC;