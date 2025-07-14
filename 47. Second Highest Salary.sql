# https://leetcode.com/problems/second-highest-salary/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below

-- SELECT MAX(e1.salary) AS SecondHighestSalary 
-- FROM Employee e1
-- RIGHT JOIN
-- (
--     SELECT id , salary
--     FROM Employee 
--     GROUP BY salary
--     ORDER BY salary DESC LIMIT 1,1
-- ) AS e2
-- ON e1.id = e2.id


SELECT MAX(salary) AS SecondHighestSalary FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee) 
