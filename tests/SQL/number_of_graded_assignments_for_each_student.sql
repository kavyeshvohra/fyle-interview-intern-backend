-- Write query to get number of graded assignments for each student:
SELECT student_id, COUNT(*)
FROM assignments
WHERE state IS 'GRADED'
GROUP BY student_id