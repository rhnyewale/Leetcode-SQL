# Write your MySQL query statement below

SELECT activity_date as day,COUNT(DISTINCT user_id) active_users
FROM Activity
where activity_date between DATE_SUB('2019-07-27',INTERVAL 29 DAY) and '2019-07-27' 
and activity_type in  ('open_session', 'end_session', 'scroll_down', 'send_message') 
GROUP BY activity_date