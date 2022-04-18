# Write your MySQL query statement below
SELECT s.product_id, ROUND(SUM(price*units)/ SUM(units),2) as average_price
FROM Prices p
JOIN UnitsSold s
ON p.product_id = s.product_id
WHERE s.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY product_id