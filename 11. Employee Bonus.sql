# https://leetcode.com/problems/employee-bonus/description/?envType=study-plan-v2&envId=top-sql-50


# Write your MySQL query statement below


SELECT Employee.name,  Bonus.bonus 
FROM Employee
LEFT JOIN Bonus 
ON 
    Employee.empId = Bonus.empId
WHERE 
    Bonus.bonus <1000 Or Bonus.bonus IS NULL 
