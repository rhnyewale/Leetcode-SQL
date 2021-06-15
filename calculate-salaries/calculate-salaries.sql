# Write your MySQL query statement below
With cte as (
    SELECT Company_id ,
    CASE WHEN Max(Salary) < 1000 then 1
         WHEN Max(Salary) <=10000 then 0.76
         Else 0.51 
         END AS Tax
    FROM Salaries
    GROUP BY Company_id
)

SELECT s.company_id,s.employee_id,s.employee_name, round((s.salary*c.tax),0) as salary
FROM Salaries s
JOIN cte c
ON s.company_id = c.company_id
