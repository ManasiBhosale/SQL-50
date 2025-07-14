# https://leetcode.com/problems/managers-with-at-least-5-direct-reports/?envType=study-plan-v2&envId=top-sql-50


# Write your MySQL query statement below

SELECT temp.name
from
(
select E1.id, E1.name
from Employee E1
join Employee E2
where E1.id= E2.managerId 
group by E1.id
having  count(*) >=5
) as temp

