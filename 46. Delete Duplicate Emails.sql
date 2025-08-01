# https://leetcode.com/problems/delete-duplicate-emails/description/?envType=study-plan-v2&envId=top-sql-50


# Write your MySQL query statement below

DELETE p1 FROM Person p1
JOIN
(
    SELECT MIN(id) AS id, email
    FROM Person
    GROUP BY email
) AS p2
ON p1.email = p2.email AND p1.id > p2.id
