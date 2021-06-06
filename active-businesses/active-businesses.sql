# Write your MySQL query statement below
With ct AS (
  SELECT event_type, avg(occurences) as average
  FROM Events
  GROUP BY 1
)

SELECT e.business_id 
FROM Events e
JOIN ct as c
ON e.event_type = c.event_type
WHERE e.occurences > c.average
GROUP BY e.business_id
HAVING COUNT(*) > 1

