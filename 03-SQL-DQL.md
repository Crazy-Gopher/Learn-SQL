# DQL (retrieve data from the DB using SQL queries)
SELECT


## SQL Queries
https://www.scaler.com/topics/sql/types-of-subqueries-in-sql/Single-row 

subquery, 
multiple row subquery, 
multiple column subquery, 
correlated subquery, 
nested subquery. 
Corelated subquery
inline query
Sub queries
Inner Queries


1. Subquery in select
2. Subquery with partition by
3. Subquery in from
4. Sub query in where
5. Subquery in where

Comments in SQL
single line
multiline
USE databse_name;


SELECT wh.event_date, kph.portfolio_id, sum(wh.cost)FROM day_click_campaign_agg whJOIN campaigns c using (user_id, campaign_id)JOIN cid_pid_history kphOn kph.event_date = wh.event_date and kph.campain_id = c.campaign_id and kph.user_id = c.user_idWHERE c.user_id = 3085AND wh.event_date >='Nov 1' and wh.event_date <= 'Nov 3'AND c.portfolio_id in ('P1', 'P2')GROUP BY wh.event_date, kph.portfolio_id


Subqueries are queries that are nested inside another SQL query. They help us target specific rows to perform various operations in SQL. They are used to SELECT, UPDATE, INSERT and DELETE records in SQL. There are different types of SQL subquery, like Single-row subquery, multiple row subquery, multiple column subquery, correlated subquery, and nested subquery. Each type performs different roles, and their result is used depending on the user's requirement. 

Second highest salary -SELECT MAX(Salary) FROM Employees
WHERE Salary NOT IN (SELECT MAX(Salary) FROM Employees )








## Joins - inner join , outer join (left ,full, right ), self join, cross join, 

1.	Equi Join- Select  emp_id, sal       From emp, dept
                                  Where emp.dept_id = dept . dept_id(=,<,>,<=,>= etc)
2.	Natural join -    Select  emp_id,sal,dept_name
                                           From emp natural join dept
3.	Non Equi Join - Select  emp_id, sal    From emp, dept
                                           Where emp.dept_id > dept . dept_id(<,  >,  <=,  >=   etc.)

4.	Cartesion Product -    select emp_id, dept_name
                                                      from emp,dept
5.	Outer Join – 
1.	Left Outer Join - select emp_id,dept_name
                                                                  from emp e,dept d
                                                                  where e.dept_id(+)=d.dept_id
2.	Right Outer Join - select emp_id,dept_name
                                                                    from emp e right outer join dept d
                                                                    on(e.dept_id=d.dept_id)
3.	Full Outer Join -   select emp_id,dept_name
                                                                   from emp e full outer join dept d
                                                                  on(e.dept_id=d.dept_id)


## Unions - Union, Union ALL, Intersect, Except

## Subquery
-- Subquery in Select
SELECT EmployeeID, Salary, (SELECT AVG(Salary) FROM
EmployeeSalary) AS AllAvgSalary
FROM EmployeeSalary

-- with Partition By
SELECT EmployeeID, Salary, AVG(Salary) OVER () AS
AllAvgSalary
FROM EmployeeSalary

-- Subquery in From
SELECT a.EmployeeID, AllAvgSalary
FROM (SELECT EmployeeID, Salary, AVG(Salary) OVER () AS
AllAvgSalary
 FROM EmployeeSalary) a
ORDER BY a.EmployeeID

-- Subquery in Where
SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE EmployeeID in (SELECT EmployeeID FROM
EmployeeDemographics
 WHERE Age > 30)
 
SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE Salary in (SELECT Max(Salary) FROM EmployeeSalary)

https://www.geeksforgeeks.org/difference-between-nested-subquery-correlated-subquery-and-join-operation/?ref=rp
https://www.geeksforgeeks.org/sql-correlated-subqueries/
