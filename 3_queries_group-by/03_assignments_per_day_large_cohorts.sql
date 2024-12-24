-- SELECT day, count(*) AS total_assignments
-- FROM assignments
-- GROUP BY day
-- HAVING count(*) >=10
-- ORDER BY day;

-- cohorts greater or equal to 18
-- order by total students from smallest to greatest

SELECT cohorts.name AS cohort_name, count(students.*) AS student_count
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING COUNT(students.*) >= 18
ORDER BY student_count;