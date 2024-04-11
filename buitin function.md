PostgreSQL COALESCE function syntax
The syntax of the COALESCE function is as follows:
1	COALESCE (argument_1, argument_2, …);
The COALESCE function accepts unlimited number of arguments. It returns the first argument that is not null. If all arguments are null, the COALESCE function will return null.
The COALESCE function evaluates arguments from left to right until it finds the first non-null argument. All the remaining arguments from the first non-null argument are not evaluated.
The COALESCE function provides the same functionality as NVL or IFNULL function provided by SQL-standard. MySQL has IFNULL function, while Oracle provides NVL function.


TO_CHAR
# Built in functions

## String - TRIM, RTRIM, LTRIM, REPLACE, SUBSTRING, LOWER, UPPER

-- Remove space
Select EmployeeID, TRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors 
Select EmployeeID, RTRIM(EmployeeID) as IDRTRIM
FROM EmployeeErrors 
Select EmployeeID, LTRIM(EmployeeID) as IDLTRIM
FROM EmployeeErrors 
-- Replace
Select LastName, REPLACE(LastName, '- Fired', '') as
LastNameFixed
FROM EmployeeErrors
-- Substring
Select Substring(err.FirstName,1,3),
Substring(dem.FirstName,1,3), Substring(err.LastName,1,3),
Substring(dem.LastName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
 on Substring(err.FirstName,1,3) =
Substring(dem.FirstName,1,3)
 and Substring(err.LastName,1,3) =
Substring(dem.LastName,1,3)
-- UPPER and LOWER CASE
Select firstname, LOWER(firstname)
from EmployeeErrors
Select Firstname, UPPER(FirstName)
from EmployeeErrors"


## math
## datetime

## CAST, Convert
-- CAST(expression AS datatype(length))
SELECT CAST('2017-08-25 00:00:00.000' AS date)

-- CONVERT(data_type(length), expression, style)
SELECT CONVERT(date,'2017-08-25 00:00:00.000')

# Window Function
ROW_NUMBER, RANK, DENSE_RANK, NTILE
partition

## Nth Highest salary https://www.youtube.com/watch?v=fh4yBn0oTaM&ab_channel=GateSmashers
SELECT * 
FROM Employee Emp1
WHERE (N-1) = ( 
SELECT COUNT(DISTINCT(Emp2.Salary))
FROM Employee Emp2
WHERE Emp2.Salary > Emp1.Salary)

###  Using DENSE_RANK
SELECT * FROM(
SELECT emp_name, salary, DENSE_RANK() 
over(ORDER BY salary DESC) AS ranking FROM employee) AS k
WHERE ranking=3;