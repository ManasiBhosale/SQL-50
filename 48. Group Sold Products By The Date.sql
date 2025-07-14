# https://leetcode.com/problems/group-sold-products-by-the-date/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below

SELECT sell_date , COUNT(DISTINCT product) AS num_sold ,  
GROUP_CONCAT(DISTINCT product) AS products
FROM Activities 
GROUP BY sell_date


-- SELECT sell_date , COUNT(DISTINCT product) AS num_sold ,  
-- GROUP_CONCAT(DISTINCT product ORDER BY product ASC SEPARATOR ',') AS products
-- FROM Activities 
-- GROUP BY sell_date
