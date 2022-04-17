# Write your MySQL query statement below
SELECT employee_id, COUNT(*) over (partition by team_id) AS team_size
FROM Employee