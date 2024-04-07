Execution order of SQL Query
Writing Order

Comments in SQL
single line
multiline

Select
Alias - cmpgn.status as "CA_STATUS"
from
LIKE, IN, not IN, operator, between AND , OR, NOT, is null, is not null
Group by
Order by
Aggrigate function Max, min, avg, count, sum
Having
Where

Display – 
1.	Select * from employee
2.	Select emp_id, emp_name, sal, sal+300,doj,phn_no from employee 
3.	Aliase - Select emp_id, emp_name, sal+300  temp1,doj,phn_no from employee where temp1 is an alternative name of sal+300                                                                                                                          				or
 Select emp_id, emp_name,sal ,sal+300 as "new salary",doj,phn_no from employee
4.	concatination - Select 'The employee id' ||  emp_id  ||'  is of  '||emp_name||  ' whose salary was '|| sal temp1 from employee
5.	where clause - select * from employee where emp_id='1001'
                                             or 
select * from employee where sal>30001
                                             or
select *  from employee where emp_name is null
6.	Between - select * from employee  where sal  between 25000 and 32000(32000>=sal>=25000)
7.	In - select * from employee  where emp_id in('1001','1003')
8.	Wildcards Like – underscore means single character and % mean’s zero or more.
select * from employee  where emp_name like ('_a%')
select * from employee  where emp_id like ('%3')
9.	Logical operater – and, or, not
select * from employee  where emp_id='1003' and sal=25000
10.	Eliminate the duplicate row – temporary eliminate
select distinct * from employee  
11. Select TOP


Second highest salary -SELECT MAX(Salary) FROM Employees
WHERE Salary NOT IN (SELECT MAX(Salary) FROM Employees )
