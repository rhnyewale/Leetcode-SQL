# Write your MySQL query statement below

# Sales table:
# +-----------+------------+----------+------------+----------+-------+
# | seller_id | product_id | buyer_id | sale_date  | quantity | price |
# +-----------+------------+----------+------------+----------+-------+
# | 1         | 1          | 1        | 2019-01-21 | 2        | 2000  |
# | 1         | 2          | 2        | 2019-02-17 | 1        | 800   |
# | 2         | 2          | 3        | 2019-06-02 | 1        | 800   |
# | 3         | 3          | 4        | 2019-05-13 | 2        | 2800  |
# +-----------+------------+----------+------------+----------+-------+

SELECT seller_id
FROM Sales
GROUP BY seller_id
HAVING SUM(price)=(SELECT SUM(price) as price FROM Sales GROUP BY seller_id ORDER BY price DESC LIMIT 1 )