# Write your MySQL query statement below
SELECT customer_number
FROM (SELECT customer_number, DENSE_RANK() OVER(ORDER BY COUNT(*) DESC) as rnk
      FROM Orders
      GROUP BY customer_number) t
WHERE rnk = 1

