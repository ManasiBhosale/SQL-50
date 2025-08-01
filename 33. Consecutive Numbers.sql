# https://leetcode.com/problems/consecutive-numbers/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below

SELECT DISTINCT num as ConsecutiveNums 
FROM
(   SELECT
        num,
        LAG(num, 1) OVER (ORDER BY id) as prev_num,
        LEAD(num, 1) OVER (ORDER BY id) as next_num
    FROM Logs
) as temp
WHERE 
    num = prev_num  
    AND prev_num = next_num
