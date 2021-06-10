# Write your MySQL query statement below
SELECT a.sale_date, (a.sold_num - o.sold_num) diff
FROM Sales a
JOIN Sales o
ON a.sale_date = o.sale_date AND a.fruit != o.fruit
WHERE a.fruit = "apples"