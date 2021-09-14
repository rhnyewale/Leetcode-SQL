# Write your MySQL query statement below
SELECT email
FROM Person
GROUP BY Email
Having COUNT(Email) > 1