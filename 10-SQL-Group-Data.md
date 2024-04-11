# GROUP DATA
https://leetcode.com/problems/movie-rating/description/

# GROUP BY
Aggrigate function
max, min, count, sum, avg

Group by
Order by
Aggrigate function Max, min, avg, count, sum
Having

Group by - select sum(sal) ,emp_name from employee group by emp_name

Aggrigate Function -    sum,max,min,avg,count
                                        select count(emp_id) from employee

# HAVING
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