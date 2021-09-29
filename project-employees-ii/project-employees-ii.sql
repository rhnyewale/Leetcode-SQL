# Write your MySQL query statement below
SELECT project_id
FROM Project
GROUP BY project_id
HAVING COUNT(employee_id) = (SELECT COUNT(project_id) as a
                   FROM Project
                   GROUP BY project_id
                   ORDER BY COUNT(*) DESC
                    LIMIT 1)