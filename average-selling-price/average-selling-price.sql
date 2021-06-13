# Write your MySQL query statement below

with cte as (
    SELECT p.product_id, p.price, s.units, (p.price*s.units) as tsale
    FROM Prices p 
    Join UnitsSold s
    ON p.product_id = s.product_id
    WHERE s.purchase_date BETWEEN p.start_date AND p.end_date
)

SELECT product_id,round(SUM(tsale)/SUM(units),2) as "average_price"
FROM cte
GROUP BY 1