# Write your MySQL query statement below
SELECT ROUND(SUM(order_date=customer_pref_delivery_date)*100/COUNT(*),2) as immediate_percentage
FROM Delivery