# https://leetcode.com/problems/count-salary-categories/description/?envType=study-plan-v2&envId=top-sql-50


-- # Write your MySQL query statement below

WITH fixed_values (category) AS (
    SELECT 'High Salary'
    UNION ALL
    SELECT 'Low Salary'
    UNION ALL
    SELECT 'Average Salary'
)

SELECT
    DISTINCT f.category,
    COALESCE(COUNT(temp.category),0) AS accounts_count 
FROM 
(
    SELECT account_id , 
        (
            CASE 
            WHEN income > 50000 THEN "High Salary"
            WHEN income < 20000 THEN "Low Salary"
            ELSE "Average Salary"
            END
        ) AS category
    FROM Accounts 
) as temp

RIGHT JOIN fixed_values f
    ON temp.category = f.category

GROUP BY category
