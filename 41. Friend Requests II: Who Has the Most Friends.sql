# https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below

WITH CTE AS
(
    SELECT requester_id as id FROM RequestAccepted
    UNION ALL
    SELECT accepter_id FROM RequestAccepted
)
SELECT id, COUNT(id) as num FROM CTE GROUP BY id ORDER BY num DESC LIMIT 1
