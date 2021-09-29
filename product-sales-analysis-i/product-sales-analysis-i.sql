# Write your MySQL query statement below
with cte as (
    SELECT S.sale_id, S.product_id, S.year, S.price, P.product_name
    FROM Sales S
    JOIN Product P
    ON S.product_id = P.product_id
)

SELECT c.product_name, c.year, c.price
FROM cte c