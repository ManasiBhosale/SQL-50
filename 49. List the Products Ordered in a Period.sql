# https://leetcode.com/problems/list-the-products-ordered-in-a-period/description/?envType=study-plan-v2&envId=top-sql-50


# Write your MySQL query statement below

SELECT p1.product_name, p2.unit 
FROM Products p1
RIGHT JOIN
(
SELECT product_id, SUM(unit) AS unit  
FROM Orders 
WHERE order_date LIKE '%2020-02-%'
GROUP BY product_id
) AS p2
    ON p1.product_id  = p2.product_id  
WHERE p2.unit>=100
