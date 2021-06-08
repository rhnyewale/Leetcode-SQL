# Write your MySQL query statement below
with cte as(
    SELECT player_id, event_date, sum(games_played) over(partition by player_id order by event_date) as games_played_so_far
    FROM Activity
)

SELECT *
FROM cte