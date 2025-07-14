# https://leetcode.com/problems/movie-rating/description/?envType=study-plan-v2&envId=top-sql-50


-- # Write your MySQL query statement below

(
SELECT u.name AS results
FROM MovieRating mr
JOIN Users u ON mr.user_id = u.user_id
GROUP BY u.name
ORDER BY COUNT(u.name) DESC, u.name
LIMIT 1
)
UNION ALL
(
SELECT m.title AS results
FROM MovieRating mr
JOIN Movies m ON mr.movie_id = m.movie_id
WHERE created_at BETWEEN '2020-02-01' AND '2020-02-28'
GROUP BY m.title 
ORDER BY AVG(rating) DESC , m.title ASC
LIMIT 1
)
