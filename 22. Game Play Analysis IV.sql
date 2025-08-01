# https://leetcode.com/problems/game-play-analysis-iv/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below


-- SELECT 
--     ROUND(COUNT(DISTINCT a.player_id) / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) AS fraction 
-- FROM Activity a
-- INNER JOIN
-- (SELECT 
--     player_id , min(event_date) as event_date
-- FROM Activity
-- GROUP BY player_id
-- ) AS temp
--     ON a.player_id = temp.player_id
-- AND
--     DATEDIFF(a.event_date, temp.event_date) = 1


SELECT 
    ROUND(COUNT( CASE WHEN DATEDIFF(a.event_date, temp.event_date) = 1 THEN a.player_id END) / COUNT(DISTINCT a.player_id), 2) AS fraction 
FROM Activity a
INNER JOIN
(SELECT 
    player_id , min(event_date) as event_date
FROM Activity
GROUP BY player_id
) AS temp
    ON a.player_id = temp.player_id
    
