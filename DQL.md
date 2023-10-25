# DQL (retrieve data from the DB using SQL queries)

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



Display – 
1.	Select * from employee
select * from database_name.information_schema.table_name

2.	Select emp_id, emp_name, sal, sal+300,doj,phn_no from employee 

3.	Aliase - Select emp_id, emp_name, sal+300  temp,doj,phn_no from employee where temp is an alternative name of sal+300                                                                                                                          				or
 Select emp_id, emp_name,sal ,sal+300 as "new salary",doj,phn_no from employee

4.	concatination - Select 'The employee id' ||  emp_id  ||'  is of  '||emp_name||  ' whose salary was '|| sal temp from employee

5.	where clause - select * from employee where emp_id='1001'
                                             or 
select * from employee where sal>30001
                                             or
select *  from employee where emp_name is null

6.	Between - 
select * from employee  where sal  between 25000 and 32000(32000>=sal>=25000)

select * from sale 
where saleunitprice between 5 and 10 --not include 5 & 10

7.	In , not in- 
select * from employee  where emp_id in('1001','1003')

8. <>, <, > operator
select * from employee where sal>30001
select * from customer
where customerlastname <> 'Brown'

8.	Like 
Wildcards – underscore means single character and % mean’s zero or more. 

select * from employee  where emp_name like ('_a%')
select * from employee  where emp_id like ('%3')

-- (underscore sign) _ is only specific for one character only
-- (percent sign) % represents zero, one, or multiple characters
select * from customer
where customerlastname like '_r%'


9.	Logical operater – and, or, not
select * from employee  where emp_id='1003' and sal=25000

10.	distinct
Eliminate the duplicate row – temporary eliminate
select distinct * from employee  
--distinct: only show unique value
select distinct customerlastname from customer 
order by customerlastname


11. Select TOP
select top 2 * from customer
--top 40 percent: also means show the first two
select top 40 percent * from customer

12.  is null, is not null
-- check null values
select * from customer
where customerlastname IS NULL

select * from customer
where customerlastname IS NOT NULL

13. Order by
--sort result (by default is ascending)
select customerfirstname, customerlastname from customer
order by customerlastname desc

select customerfirstname, customerlastname from customer
order by 4, 2, 3 desc -- Order By Based on column no. without typing column 
name

14. Group by
Aggrigate function Max, min, avg, count, sum
-- returns the number of rows in a table
-- AS means aliasing, temporary giving name to a column/ table
select count(*) as [Number of Records] from customer 
where customerfirstname like 'B%'

select sale.employeeid ,EmployeeFirstName, EmployeeLastName , count(*) as
[Number of order] ,
sum(salequantity) as [Total Quantity] 
from sale,employee
where sale.employeeid = employee.employeeid
group by sale.employeeid ,EmployeeFirstName, EmployeeLastName 

SELECT MAX(Salary)
FROM EmployeeSalary

SELECT MIN(Salary)
FROM EmployeeSalary

SELECT AVG(Salary)
FROM EmployeeSalary

15. Having
SELECT JobTitle, COUNT(JobTitle)
FROM EmployeeDemographics ED
JOIN EmployeeSalary ES
 ON ED.EmployeeID = ES.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1


SELECT JobTitle, AVG(Salary)
FROM EmployeeDemographics ED
JOIN EmployeeSalary ES
 ON ED.EmployeeID = ES.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)

16. PARTITION BY
--returns a single value for each row

SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender 
FROM EmployeeDemographics ED
JOIN EmployeeSalary ES
ON ED.EmployeeID = ES.EmployeeID


17. EXISTS






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
