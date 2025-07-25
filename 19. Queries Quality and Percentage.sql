# https://leetcode.com/problems/queries-quality-and-percentage/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below


SELECT
    query_name,
    ROUND(SUM(rating / position) / COUNT(query_name), 2) AS quality,
    (ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END ) * 100/ COUNT(query_name), 2)) AS poor_query_percentage 

FROM Queries 

GROUP BY query_name
