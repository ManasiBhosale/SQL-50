# https://leetcode.com/problems/exchange-seats/description/?envType=study-plan-v2&envId=top-sql-50


# Write your MySQL query statement below

-- with cte as(
-- SELECT 
-- s1.id as id1, s1.student as student1, s2.id as id2, s2.student as student2
-- FROM Seat s1
-- RIGHT JOIN Seat s2
--     ON s1.id + 1 = s2.id
-- WHERE s2.id % 2 = 0
-- )

-- select id1 as id, student2 as student
-- from cte
-- union
-- select id2, student1
-- from cte

-- union
-- select id, student
-- from Seat 
-- where id not in (select id1 from cte union select id2 from cte)

-- order by id

SELECT
  ROW_NUMBER() OVER(ORDER BY IF(MOD(id, 2) = 0, id - 1, id + 1)) AS id,
  student
FROM Seat;
