# https://leetcode.com/problems/product-price-at-a-given-date/description/?envType=study-plan-v2&envId=top-sql-50


-- SELECT DISTINCT p1.product_id, COALESCE(t2.new_price, 10) AS price

-- FROM Products p1
-- LEFT JOIN
-- (
-- SELECT * FROM 
-- (
-- SELECT product_id , new_price , change_date,
-- rank() OVER ( partition by product_id order by change_date desc ) AS 'rank1'
-- FROM Products 
-- WHERE change_date <= '2019-08-16'

-- ) AS t1
-- WHERE rank1 = 1 ) AS t2

--     ON p1.product_id = t2.product_id

WITH rank_tbl AS (
    SELECT product_id , new_price , change_date,
    rank() OVER ( partition by product_id order by change_date desc ) AS 'rank1'
    FROM Products WHERE change_date <= '2019-08-16'
) 

SELECT Distinct p.product_id , COALESCE(rank_tbl.new_price, 10) AS 'price' 
FROM Products p
LEFT JOIN rank_tbl
ON p.product_id = rank_tbl.product_id AND rank1=1
