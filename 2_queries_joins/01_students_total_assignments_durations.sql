-- SELECT SUM(duration) AS total_duration
-- FROM assignment_submissions
-- WHERE student.id = 'Ibrahim Schimmel'
-- AND assignment_submissions.student_id = students.id;

SELECT SUM(assignment_submissions.duration) AS total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel'