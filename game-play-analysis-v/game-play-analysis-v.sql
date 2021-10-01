# Write your MySQL query statement below
with cte as (
    SELECT 
    player_id,
    event_date, 
    FIRST_VALUE(event_date)over(partition by player_id ORDER BY event_date) as first_login,
    DATEDIFF(event_date, FIRST_VALUE(event_date)over(partition by player_id order by event_date)) as retention
    FROM Activity
)

SELECT first_login as install_dt, COUNT(DISTINCT player_id) as installs,
ROUND (SUM(retention=1)/COUNT(DISTINCT player_id),2) as Day1_retention        
FROM cte
GROUP BY first_login

# WITH cte AS(
# SELECT player_id, event_date,
# FIRST_VALUE(event_date) OVER(PARTITION BY player_id ORDER BY event_date) AS first_login,
# DATEDIFF(event_date, FIRST_VALUE(event_date) OVER(PARTITION BY player_id ORDER BY event_date) ) AS ret

# FROM Activity)

# SELECT first_login as install_dt, COUNT(DISTINCT player_id) as installs,
# ROUND(SUM(ret =1)/COUNT(DISTINCT player_id),2) AS Day1_retention

# FROM cte
# GROUP BY first_login