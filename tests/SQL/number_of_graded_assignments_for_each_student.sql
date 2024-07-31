-- Write query to get number of graded assignments for each student:
SELECT id, COUNT(*) AS graded_assignments_count FROM assignments WHERE grade IS NOT NULL GROUP BY id;