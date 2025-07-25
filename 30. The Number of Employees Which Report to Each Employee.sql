# https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below

-- select 
-- e.employee_id, 
-- e.name  ,
-- t.reports_count ,
-- t.average_age 
-- from Employees e
-- inner join
-- (
-- SELECT
--     ifnull(reports_to, 0) as id ,
--     COUNT(DISTINCT employee_id) AS reports_count,
--     round(AVG(age)) AS average_age
-- FROM Employees 
-- GROUP BY reports_to 
-- ) as t 
-- on e.employee_id = t.id

-- order by e.employee_id



SELECT 
    e1.employee_id,
    e1.name, 
    COUNT(e1.employee_id) AS reports_count, 
    ROUND(AVG(e2.age)) AS average_age
FROM Employees e1
JOIN Employees e2
    ON e1.employee_id = e2.reports_to
GROUP BY e1.employee_id
ORDER BY e1.employee_id
