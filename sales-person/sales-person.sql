# Write your MySQL query statement below
SELECT name
FROM salesperson
WHERE sales_id NOT IN ( SELECT DISTINCT o.sales_id
    FROM orders o 
    LEFT JOIN company c
    ON o.com_id = c.com_id                   
    WHERE c.name = 'RED')