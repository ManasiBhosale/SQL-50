# https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/?envType=study-plan-v2&envId=top-sql-50


# Write your MySQL query statement below


select Visits.customer_id, count(customer_id) as 'count_no_trans' from Visits
where visit_id not in (select visit_id from Transactions) GROUP by customer_id
