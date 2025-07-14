# https://leetcode.com/problems/user-activity-for-the-past-30-days-i/description/?envType=study-plan-v2&envId=top-sql-50


# Write your MySQL query statement below


SELECT 
    activity_date AS day,
    COUNT(DISTINCT user_id) AS active_users
FROM Activity 
WHERE
    DATEDIFF('2019-07-27', activity_date)  < 30
    AND activity_date <= '2019-07-27'
GROUP BY activity_date 
