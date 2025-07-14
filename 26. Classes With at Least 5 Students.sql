# https://leetcode.com/problems/classes-with-at-least-5-students/description/?envType=study-plan-v2&envId=top-sql-50


# Write your MySQL query statement below


SELECT class   
FROM Courses 
GROUP BY class
HAVING count(student) >=5
