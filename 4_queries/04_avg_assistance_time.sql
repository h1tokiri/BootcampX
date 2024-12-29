-- SELECT
-- FROM TABLE1
-- JOIN TABLE2 ON TABLE1.column = TABLE2.column
-- WHERE
-- GROUP BY
-- HAVING
-- ORDER BY
-- LIMIT


-- get the avg time of an asssitance request

SELECT AVG(completed_at-started_at) AS average_assistance_request_duration
FROM assistance_requests;
