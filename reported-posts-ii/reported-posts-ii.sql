# Write your MySQL query statement below
SELECT ROUND(AVG(Daily_Percent),2) as average_daily_percent
FROM (
    SELECT ROUND(COUNT(DISTINCT r.post_id)/COUNT(DISTINCT a.post_id)*100,2) as Daily_Percent
    FROM Actions a
    LEFT JOIN removals r
    ON a.post_id = r.post_id
    WHERE extra like 'spam' AND action like 'report'
    GROUP BY action_date
) t