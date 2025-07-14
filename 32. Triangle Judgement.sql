# https://leetcode.com/problems/triangle-judgement/description/?envType=study-plan-v2&envId=top-sql-50


# Write your MySQL query statement below

SELECT x, y, z, 
    (
        CASE 
        WHEN (x + y) > z AND (x + z) > y AND (y + z) > x 
        THEN 'Yes' 
        ELSE 'No' 
        END
    ) AS triangle
FROM Triangle 

    

