Index
Views
TEMP Table
Common table expression CTE 
Duplicate table
Stored Procedure - CREATE PROCEDURE
No count on , no count off
Triggers


Partition ing 
Sharding
Replication 
Transaction
Hashing (Consistent Hashing)
CAP theoram
ACID Properties 
Normalisation
DataBase Modeling
Schema
micro partition, 
auto cluster, 
time travel 
Isolation Level 

How to decide which database is suiltable for which application
Backup - create table emp as select * from employee 

DDL
DML
DCl
TCL
DQL

## Store Procedure

CREATE PROCEDURE Temp_Employee
@JobTitle nvarchar(100)
AS
DROP TABLE IF EXISTS #temp_employee
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
