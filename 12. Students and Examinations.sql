# https://leetcode.com/problems/students-and-examinations/description/?envType=study-plan-v2&envId=top-sql-50



select temp.student_id, temp.student_name , temp.subject_name, 
COALESCE(COUNT(Examinations.subject_name), 0) as 'attended_exams'

from  
(
select *
from Students   
cross join Subjects
order by student_id, subject_name  
) AS temp

left join Examinations

on temp.student_id= Examinations.student_id and temp.subject_name  = Examinations.subject_name
group by temp.student_id , temp.student_name , temp.subject_name
order by temp.student_id ,temp.student_name, temp.subject_name

