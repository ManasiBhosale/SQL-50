# https://leetcode.com/problems/not-boring-movies/submissions/1673111515/?envType=study-plan-v2&envId=top-sql-50


# Write your MySQL query statement below

select  * from Cinema 
where id%2=1 and description !='boring'
order by rating desc
