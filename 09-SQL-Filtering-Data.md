## WHERE 
Add condition to filter the data.

`SELECT * FROM employee WHERE salary = 50000;`


## Operators
1. Comparision operator (<, >, <=, >=, <>, !=, =)

`SELECT * FROM employee WHERE salary >= 60000;`

2. IN, NOT IN

`SELECT * FROM employee WHERE salary IN (50000, 60000);`

`SELECT * FROM employee WHERE salary NOT IN (50000, 60000);`

3. IS NULL, IS NOT NULL

`SELECT * FROM employee WHERE last_name IS NULL;`

`SELECT * FROM employee WHERE last_name IS NOT NULL;`

4. BETWEEN (both values are inclusive)

`SELECT * FROM employee WHERE salary BETWEEN 50000 AND 60000;`

5. LIKE, iLIKE - 
Single Character - underscore(_)
Zero or One or Multi Character - percentage(%)

Startswith-

`SELECT * FROM employee WHERE first_name LIKE 'ka%';`

`SELECT * FROM employee WHERE first_name iLIKE 'ka%';`

Endswith-
`SELECT * FROM employee WHERE first_name iLIKE '%yu';`

Contains-
`SELECT * FROM employee WHERE first_name iLIKE '%y%';`

6. Logical Operator (AND, OR, NOT)


LIMIT

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