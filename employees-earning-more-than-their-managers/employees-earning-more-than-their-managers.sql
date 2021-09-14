# Write your MySQL query statement below
SELECT a.Name as Employee
FROM Employee a,Employee d
WHERE a.ManagerId=d.Id
AND a.salary > d.salary;
