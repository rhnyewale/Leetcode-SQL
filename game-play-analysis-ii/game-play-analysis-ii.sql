/* Write your T-SQL query statement below */
SELECT player_id, device_id
FROM (SELECT player_id,device_id, RANK()over(partition by player_id order by event_date) as rnk FROM activity) a
WHERE rnk = 1
