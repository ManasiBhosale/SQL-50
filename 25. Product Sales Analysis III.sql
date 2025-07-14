# https://leetcode.com/problems/product-sales-analysis-iii/description/?envType=study-plan-v2&envId=top-sql-50


# Write your MySQL query statement below


SELECT
    product_id,
    year AS first_year,
    quantity ,
    price
FROM Sales
where (product_id, year) in
(
SELECT 
    product_id,
    min(year) AS year
FROM Sales 
GROUP BY product_id 
)


