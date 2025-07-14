# https://leetcode.com/problems/investments-in-2016/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below

SELECT ROUND(sum(tiv_2016),2) AS tiv_2016 
FROM Insurance
WHERE  
    tiv_2015 IN 
    (SELECT  tiv_2015
    FROM Insurance 
    GROUP BY tiv_2015 
    HAVING count(tiv_2015) > 1) 

AND 
    (lat,lon) IN 
    (SELECT lat,lon 
    FROM Insurance 
    GROUP BY lat,lon
    HAVING count(concat(lat,lon)) = 1)
