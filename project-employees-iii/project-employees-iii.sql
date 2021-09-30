# Write your MySQL query statement below
SELECT project_id, employee_id
FROM (SELECT p.project_id,p.employee_id,RANK()over(partition by p.project_id order by e.experience_years DESC) as rnk
     FROM project p
     JOIN employee e
     ON p.employee_id=e.employee_id) t
WHERE rnk = 1