# https://leetcode.com/problems/immediate-food-delivery-ii/description/?envType=study-plan-v2&envId=top-sql-50


# Write your MySQL query statement below


SELECT 
    ROUND(SUM(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END) * 100 / COUNT(*), 2)
    AS immediate_percentage 

FROM Delivery

WHERE (customer_id, order_date ) IN
    (   
    SELECT customer_id, min(order_date)
    FROM Delivery
    GROUP BY customer_id
    )
