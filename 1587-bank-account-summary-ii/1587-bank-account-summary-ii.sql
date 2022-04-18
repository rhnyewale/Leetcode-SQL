# Write your MySQL query statement below

SELECT name, SUM(amount) as balance
FROM Users u
Join Transactions t
ON u.account = t.account
GROUP BY t.account
HAVING SUM(t.amount) > 10000