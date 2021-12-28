# Write your MySQL query statement below
SELECT ROUND(IFNULL(COUNT(DISTINCT requester_id, accepter_id)/COUNT(DISTINCT sender_id, send_to_id),0),2) as accept_rate
FROM FriendRequest, RequestAccepted