SELECT
DISTINCT
Alias - AS (Column, Table)
ORDER BY

Select * from employee
Select emp_id, emp_name, sal, sal+300,doj,phn_no from employee 
Select emp_id, emp_name, sal+300  temp1,doj,phn_no from employee 
-- where temp1 is an alternative name of sal+300  or

Select emp_id, emp_name,sal ,sal+300 AS "new salary",doj,phn_no from employee