-- SELECT
-- FROM TABLE1
-- JOIN TABLE2 ON TABLE1.column = TABLE2.column
-- WHERE
-- GROUP BY
-- HAVING
-- ORDER BY
-- LIMIT
SELECT
  AVG(total_duration) as average_total_duration
FROM
  (
    SELECT
      cohorts.name AS cohort,
      SUM(completed_at - started_at) AS total_duration
    FROM
      assistance_requests
      JOIN students ON student_id = students.id
      JOIN cohorts ON students.cohort_id = cohorts.id
    GROUP BY
      cohorts.name
  ) AS cohort_total_durations;

-- not complete, just copied and pasted to start