# https://leetcode.com/problems/confirmation-rate/description/?envType=study-plan-v2&envId=top-sql-50



# Write your MySQL query statement below

-- SELECT
--     temp.user_id,
--     ROUND(SUM(temp.action1) / COUNT(temp.action1), 2) AS confirmation_rate 
-- FROM
-- (
-- SELECT 
--     s.user_id, 
--     CASE
--     WHEN c.action  = 'timeout' then 0
--     WHEN c.action  = 'confirmed' then 1
--     ELSE 0
--     END AS action1
-- FROM Signups s
-- LEFT JOIN Confirmations c
--     ON s.user_id = c.user_id
-- ) AS temp
-- GROUP BY temp.user_id



SELECT
    s.user_id, 
    ROUND(IFNULL(SUM(c.action ='confirmed') / COUNT(c.action),0), 2) AS confirmation_rate 
FROM Signups s
LEFT JOIN Confirmations c
    ON s.user_id = c.user_id
GROUP BY s.user_id
