# https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below

# ------Query 1-------
  
Select name from Customer where id not in 
(Select id from Customer where (referee_id= 2))

# ------Query 2-------

SELECT name 
FROM Customer 
WHERE referee_id != 2 OR ISNULL(referee_id) = True
