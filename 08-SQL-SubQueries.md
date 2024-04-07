subquery, 
multiple row subquery, 
multiple column subquery, 
correlated subquery, 
nested subquery. 
Corelated sub queries
inline query
Sub queries
Inner Queries
correlated nested queries

1. Subquery in select
2. Subquery with partition by
3. Subquery in from
4. Sub query in where
5. Subquery in where

ANY, ALL, EXISTS

Subqueries are queries that are nested inside another SQL query. They help us target specific rows to perform various operations in SQL. They are used to SELECT, UPDATE, INSERT and DELETE records in SQL. There are different types of SQL subquery, like Single-row subquery, multiple row subquery, multiple column subquery, correlated subquery, and nested subquery. Each type performs different roles, and their result is used depending on the user's requirement. 

## SQL Sub Queries
https://www.scaler.com/topics/sql/types-of-subqueries-in-sql/Single-row 


```
-- Highest Salary of Each Department, Employee Name, Department Name
Select 
    e.first_name || ' ' || e.last_name AS "Employee Name",
    e.salary,
    dpt.department_name
FROM employee e 
INNER JOIN (
    SELECT 
        e.department_id,
        MAX(salary) AS "max_sal"
    FROM employee e
    GROUP BY e.department_id
) AS max_salaries mx
ON e.department_id = max_salaries.department_id
AND e.salary = mx.max_sal
INNER JOIN department dpt
ON e.department_id = dpt.id;
```