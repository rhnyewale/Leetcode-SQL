# Write your MySQL query statement below
SELECT student_id, course_id, grade
FROM (SELECT student_id, course_id, grade, ROW_NUMBER() over (partition by student_id order by grade DESC, course_id ASC) as rnk FROM Enrollments) e
WHERE e.rnk = 1
ORDER BY student_id