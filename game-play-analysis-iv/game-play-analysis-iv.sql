# Write your MySQL query statement below
with cte as (
    SELECT player_id, MIN(event_date) as "first_day"
    FROM Activity
    GROUP BY 1
)

SELECT Round(COUNT(DISTINCT(c.player_id))/(SELECT COUNT(DISTINCT player_id) FROM Activity),2) as "fraction"
FROM Activity a
JOIN cte c
ON a.player_id = c.player_id
WHERE datediff(a.event_date,c.first_day) = 1
                   