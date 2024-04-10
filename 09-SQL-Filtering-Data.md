WHERE
AND
OR
NOT
LIMIT
IN, NOT IN
BETWEEN
LIKE, iLIKE - underscore(_), percentage(%)
IS NULL, IS NOT NULL


5.	WHERE clause - select * from employee where emp_id='1001'
or 
select * from employee where sal>30001
or
select *  from employee where emp_name is null
6.	Between - select * from employee  where sal  between 25000 and 32000(32000>=sal>=25000)
7.	In - select * from employee  where emp_id in('1001','1003')
8.	Like (Wildcards) – underscore means single character and % mean’s zero or more.
select * from employee  where emp_name like ('_a%')
select * from employee  where emp_id like ('%3')
9.	Logical operater – and, or, not
select * from employee  where emp_id='1003' and sal=25000