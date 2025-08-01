# https://leetcode.com/problems/customers-who-bought-all-products/description/?envType=study-plan-v2&envId=top-sql-50


# Write your MySQL query statement below


-- SELECT customer_id 
-- FROM
-- (
-- SELECT 
--     c.customer_id , COUNT(DISTINCT c.product_key ) as cnt
-- FROM Customer c
-- GROUP BY customer_id 
-- ) as temp

-- WHERE cnt = (SELECT COUNT(DISTINCT product_key) FROM Product)


SELECT c.customer_id
FROM Customer c
GROUP BY c.customer_id
HAVING (COUNT(DISTINCT c.product_key)) = (SELECT COUNT(DISTINCT product_key) FROM Product)
