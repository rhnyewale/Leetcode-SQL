# Write your MySQL query statement below
SELECT DISTINCT p1.email as Email
FROM person p1, person p2
WHERE p1.email = p2.email AND p1.id != p2.id
