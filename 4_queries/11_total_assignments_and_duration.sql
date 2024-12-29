-- SELECT
-- FROM TABLE1
-- JOIN TABLE2 ON TABLE1.column = TABLE2.column
-- WHERE
-- GROUP BY
-- HAVING
-- ORDER BY
-- LIMIT

SELECT day, count(day) AS number_of_assignments, sum(duration)
FROM assignments
GROUP BY day
ORDER BY day ASC;



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