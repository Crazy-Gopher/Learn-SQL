# Store Procedure
Stored Procedure - CREATE PROCEDURE - What, Why Where



CREATE PROCEDURE Temp_Employee
@JobTitle nvarchar(100)
AS
Drop TABLE #temp_employee
Create table #temp_employee (
JobTitle varchar(100),
EmployeesPerJob int ,
AvgAge int,
AvgSalary int
)
Insert into #temp_employee
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(salary)
FROM EmployeeDemographics emp
JOIN EmployeeSalary sal
 ON emp.EmployeeID = sal.EmployeeID
where JobTitle = @JobTitle --- make sure to change this in 
this script from original above
group by JobTitle
Select *
From #temp_employee
GO;
--- only need to run this on next time
EXEC Temp_Employee @JobTitle = 'Salesman'