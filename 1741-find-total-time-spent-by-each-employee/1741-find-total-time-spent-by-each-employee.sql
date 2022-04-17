# Write your MySQL query statement below
WITH CTE AS (
    SELECT event_day as day, emp_id, (out_time - in_time) AS total_time
    FROM Employees
)

SELECT day, emp_id, SUM(total_time) AS total_time
FROM CTE 
GROUP BY day, emp_id