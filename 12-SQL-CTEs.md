# Common table expression CTE 
CTE stands for Common Table Expression. It's a temporary named result set that you can reference within a SELECT, INSERT, UPDATE, or DELETE statement. CTEs were introduced in SQL with the SQL:1999 standard and are supported by many relational database management systems (RDBMS) including PostgreSQL, SQL Server, MySQL, and Oracle.

When do we use CTEs?
CTEs are particularly useful in the following scenarios:

Improving Code Readability: CTEs can help improve the readability of complex queries by breaking them down into smaller, more manageable parts. This can make the query easier to understand and maintain.

Avoiding Code Duplication: If you need to reference the same subquery multiple times within a larger query, using a CTE can help you avoid duplicating code.

Recursive Queries: CTEs support recursion, which allows you to perform hierarchical queries such as traversing a tree structure or handling bill-of-materials data.

Window Functions: CTEs can be used in conjunction with window functions to perform complex analytical queries.

Query Optimization: In some cases, using a CTE can improve query performance by allowing the database optimizer to better understand the query structure.



# Recursive CTEs

# Example
```
Highest Salary of Each Department, Employee Name, Department Name
with max_salaries AS (
    SELECT 
        e.department_id,
        MAX(salary) AS "max_sal"
    FROM employee e
    GROUP BY e.department_id
)
Select 
    e.first_name || ' ' || e.last_name AS "Employee Name",
    e.salary,
    dpt.department_name
FROM employee e 
INNER JOIN max_salaries mx
ON e.department_id = mx.department_id
AND e.salary = mx.max_sal
INNER JOIN department dpt
ON e.department_id = dpt.id;
```