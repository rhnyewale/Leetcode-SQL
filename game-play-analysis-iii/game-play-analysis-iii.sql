/* Write your T-SQL query statement below */
SELECT player_id, event_date, SUM(games_played) OVER(partition by player_id order by event_date) as games_played_so_far
FROM activity