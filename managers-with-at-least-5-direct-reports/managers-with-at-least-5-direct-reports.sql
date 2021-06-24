# Write your MySQL query statement below
WITH CTE AS(SELECT ManagerId
FROM Employee
GROUP BY ManagerId
HAVING COUNT(*) > 4)

SELECT e.Name 
FROM Employee e
JOIN CTE c
ON e.ID = c.ManagerId