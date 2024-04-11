# DQL (retrieve data from the DB using SQL queries)

## SELECT
1. ALL Column

`SELECT * FROM employee;`

2. Required Colummns

`SELECT id, email, salary FROM employee;`

3. **DISTINCT** Unique Values

`SELECT DISTINCT salary FROM employee;`

`SELECT DISTINCT first_name, department_id FROM employee;`

4. Select current_date, Some value

`SELECT 'kapil' || ' ' || 'Jain' AS fullname, 50000 as salary;`

  fullname  | salary
------------+--------
 kapil Jain |  50000

`SELECT CURRENT_DATE;`

 current_date
--------------
 2024-04-11

NULL as name
0 AS salary

## Operations on column (Concatinate, alias)
`SELECT  first_name || ' ' || last_name FROM employee;`

`SELECT  first_name || ' ' || last_name AS Fullname FROM employee;`

`SELECT  first_name || ' ' || last_name AS "Fullname" FROM employee;`

`SELECT 'The employee id ' ||  id  ||' is of '||first_name||  ' whose salary was '|| salary employee_detail, salary FROM employee;`

-------------------------------------------------------------+---------
|                      employee_detail                       | salary |
-------------------------------------------------------------+---------
| The employee id 1 is of John whose salary was 50000        |  50000 |
-------------------------------------------------------------+---------




## LIMIT/OFFSET




## ORDER BY

Order by – (Sorting)  select * from  employee order by doj  desc

select * from database_name.schema.table_name

--sort result (by default is ascending)
select customerfirstname, customerlastname from customer
order by customerlastname desc

select customerfirstname, customerlastname from customer
order by 4, 2, 3 desc -- Order By Based on column no. without typing column 
name



select 
    DENSE_RANK() OVER (PARTITION BY first_name, joined_date, salary ORDER BY salary DESC) AS denserank,
    emp.*
FROM employee emp;