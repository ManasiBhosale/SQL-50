# https://leetcode.com/problems/employees-whose-manager-left-the-company/?envType=study-plan-v2&envId=top-sql-50


# Write your MySQL query statement below


SELECT employee_id 
FROM Employees 
WHERE salary < 30000 
AND manager_id 
NOT IN (SELECT DISTINCT employee_id FROM Employees)
ORDER by employee_id
