# Write your MySQL query statement below
WITH cte as (
    SELECT DISTINCT post_id,extra
    FROM Actions
    WHERE action_date = DATE_ADD('2019-07-05', INTERVAL -1 DAY)
    AND action like 'report'
)

SELECT extra as report_reason, COUNT(*) report_count
FROM cte
GROUP BY extra
