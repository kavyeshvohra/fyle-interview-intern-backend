-- Write query to find the number of grade A's given by the teacher who has graded the most assignments
WITH teacher as (
    SELECT teacher_id, COUNT(*) AS grade_A_count
    FROM assignments
    WHERE grade is NOT NULL AND teacher_id IS NOT NULL
    GROUP BY teacher_id
    ORDER BY grade_A_count DESC
    LIMIT 1
)

SELECT count(*) as grade_A_count
FROM teacher JOIN assignments using (teacher_id)
WHERE grade='A';