# Write your MySQL query statement below
# Product table:
# +------------+--------------+------------+
# | product_id | product_name | unit_price |
# +------------+--------------+------------+
# | 1          | S8           | 1000       |
# | 2          | G4           | 800        |
# | 3          | iPhone       | 1400       |
# +------------+--------------+------------+

# Sales table:
# +-----------+------------+----------+------------+----------+-------+
# | seller_id | product_id | buyer_id | sale_date  | quantity | price |
# +-----------+------------+----------+------------+----------+-------+
# | 1         | 1          | 1        | 2019-01-21 | 2        | 2000  |
# | 1         | 2          | 2        | 2019-02-17 | 1        | 800   |
# | 2         | 1          | 3        | 2019-06-02 | 1        | 800   |
# | 3         | 3          | 3        | 2019-05-13 | 2        | 2800  |
# +-----------+------------+----------+------------+----------+-------+

with cte as (
    SELECT buyer_id, product_name
    FROM Sales s
    JOIN product p
    ON s.product_id = p.product_id
)

SELECT DISTINCT buyer_id
FROM SALES s
JOIN product p
ON s.product_id = p.product_id
WHERE product_name Like 'S8'
AND s.buyer_id NOT IN (SELECT buyer_id FROM cte WHERE product_name LIKE'iPhone')