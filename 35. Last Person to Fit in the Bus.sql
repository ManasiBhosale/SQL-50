# https://leetcode.com/problems/last-person-to-fit-in-the-bus/description/?envType=study-plan-v2&envId=top-sql-50


# Write your MySQL query statement below


WITH cte AS (
	SELECT person_name , turn,
    SUM(Weight) OVER (ORDER BY Turn) AS x
	FROM Queue 
	)
SELECT person_name 
FROM cte
WHERE x <= 1000
ORDER BY turn DESC
LIMIT 1
