/* Write your T-SQL query statement below */
SELECT d.dept_name as dept_name,COUNT(s.student_id) as student_number
FROM department d
Left JOIN student s
ON d.dept_id = s.dept_id
GROUP BY d.dept_name
ORDER BY student_number DESC