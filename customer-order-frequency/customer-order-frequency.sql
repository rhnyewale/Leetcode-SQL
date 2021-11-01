# Write your MySQL query statement below

SELECT c.customer_id, c.name
FROM Customers c 
JOIN Orders o
ON c.customer_id = o.customer_id
JOIN Product p
ON p.product_id = o.product_id
GROUP BY c.customer_id
HAVING SUM(CASE WHEN Month(o.order_date) = 6 THEN p.price*o.quantity ELSE 0 END) >= 100 AND
        SUM(CASE WHEN Month(o.order_date) = 7 THEN p.price*o.quantity ELSE 0 END) >= 100