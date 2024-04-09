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

4.	concatination - Select 'The employee id' ||  emp_id  ||'  is of  '||emp_name||  ' whose salary was '|| sal temp1 from employee

10.	Eliminate the duplicate row – temporary eliminate
select distinct * from employee  
11. Select TOP


Second highest salary -SELECT MAX(Salary) FROM Employees
WHERE Salary NOT IN (SELECT MAX(Salary) FROM Employees )


-- Incremental data
-- new data will always be the latest data, like click data