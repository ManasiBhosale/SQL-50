# https://leetcode.com/problems/restaurant-growth/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below

-- WITH CTE AS
-- (SELECT c1.visited_on AS visit1, c2.visited_on AS visit2
-- FROM Customer c1
-- JOIN Customer c2
-- ON DATEDIFF(c1.visited_on, c2.visited_on) = 6  
-- GROUP BY c1.visited_on)

-- SELECT c1.visited_on , SUM(c1.amount) AS amount, ROUND(AVG(c1.amount), 2) AS average_amount 
-- FROM (  SELECT 
--         visited_on,
--         SUM(amount) as amount
--         FROM Customer 
--         GROUP BY visited_on) AS c1
-- JOIN CTE c2 
-- WHERE c1.visited_on BETWEEN c2.visit2 AND c2.visit1
-- GROUP BY c2.visit1
-- ORDER BY c1.visited_on ASC



with cte as
(select visited_on, sum(amount) as amount from customer group by 1)

select visited_on, sum(amount) over (order by visited_on rows between 6 preceding and current row) as amount,round(avg(amount) over (order by visited_on rows between 6 preceding and current row),2) as average_amount
from cte
limit 9999 offset 6
