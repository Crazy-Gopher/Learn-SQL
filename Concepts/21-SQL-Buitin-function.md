## COALESCE

## NULLIF

## NVL

## Aggregate Functions
SUM, MAX, MIN, AVG, COUNT



# Date and datetime function

## Convert
-- CONVERT(data_type(length), expression, style)
SELECT CONVERT(date,'2017-08-25 00:00:00.000')

## TO_CHAR
`SELECT TO_CHAR(NOW(), 'YYYY-MM-DD');`

## TO_DATE
`SELECT TO_DATE('2022-04-11', 'YYYY-MM-DD');`

## CAST
-- CAST(expression AS datatype(length))

`SELECT CAST('100.01' AS numeric);`

`SELECT CAST('2017-08-25 00:00:00.000' AS date)`


## EXTRACT
EXTRACT(YEAR FROM order_date)


## DATEADD
event_date > current_date - interval '30' day
SELECT DATEADD(day, 3, '2024-04-11');

## NOW
NOW()





## String - TRIM, RTRIM, LTRIM, REPLACE, SUBSTRING, LOWER, UPPER

## TRIM, RTRIM, LTRIM

Select EmployeeID, TRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors 
Select EmployeeID, RTRIM(EmployeeID) as IDRTRIM
FROM EmployeeErrors 
Select EmployeeID, LTRIM(EmployeeID) as IDLTRIM
FROM EmployeeErrors 

## Replace
SELECT REPLACE(description, 'blue', 'green') AS updated_description
FROM products;
Select LastName, REPLACE(LastName, '- Fired', '') as
LastNameFixed
FROM EmployeeErrors

## Substring
Select Substring(err.FirstName,1,3),
Substring(dem.FirstName,1,3), Substring(err.LastName,1,3),
Substring(dem.LastName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
 on Substring(err.FirstName,1,3) =
Substring(dem.FirstName,1,3)
 and Substring(err.LastName,1,3) =
Substring(dem.LastName,1,3)

## UPPER and LOWER CASE
Select firstname, LOWER(firstname)
from EmployeeErrors
Select Firstname, UPPER(FirstName)
from EmployeeErrors"


## math
## GREATEST

## ABS

## CEIL

## ROUND 
- round(running_sum*1.0/7,2)