# Write your MySQL query statement below
with cte as (
    SELECT ad_id, sum(case when action="Clicked" then 1 else 0 end) c, sum(case when action="Viewed" then 1 else 0 end) v
    FROM Ads
    GROUP BY 1
)

SELECT a.ad_id, ifnull(round((c.c/(c.c + c.v))*100,2),0) ctr
FROM Ads a
JOIN cte c
ON c.ad_id = a.ad_id
GROUP BY 1
ORDER BY 2 DESC, 1