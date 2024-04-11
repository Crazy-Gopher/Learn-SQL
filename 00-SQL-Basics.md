# Structured Query Language(SQL)
- case insensitive (upper lower both are same)
- Query endswith semicolon;
- string value should be in single quotes ('kapil')
- column name should be double quotes ("kapil")

## Execution order of SQL Query

In PostgreSQL (psql), the execution order of SQL queries generally follows the same logical sequence as in standard SQL. However, it's important to note that the PostgreSQL query optimizer may optimize the query execution plan based on various factors such as indexes, statistics, and query complexity. Here's the typical sequence of operations in SQL query execution in PostgreSQL:

1. FROM: The first step is to identify the tables or views from which data will be retrieved. This includes joining multiple tables if necessary.

2. JOIN: If there are multiple tables involved in the query, PostgreSQL performs any necessary joins based on the specified join conditions.

3. WHERE: Next, PostgreSQL applies any conditions specified in the WHERE clause to filter the rows returned from the tables/views identified in the FROM clause.

4. GROUP BY: If the query includes a GROUP BY clause, PostgreSQL groups the rows that have the same values in specified columns.

5. HAVING: If the query includes a HAVING clause (usually used in conjunction with GROUP BY), PostgreSQL applies the specified conditions to the grouped rows.

6. SELECT: After filtering and grouping (if applicable), PostgreSQL selects the columns specified in the SELECT clause.

7. DISTINCT: If the query includes the DISTINCT keyword, PostgreSQL eliminates duplicate rows from the result set.

8. ORDER BY: If the query includes an ORDER BY clause, PostgreSQL sorts the result set based on the specified column(s) and sort order.

9. LIMIT/OFFSET: If the query includes the LIMIT and OFFSET clauses (or equivalent), PostgreSQL restricts the number of rows returned and/or skips a certain number of rows.

PostgreSQL's query optimizer may rearrange the order of execution or apply various optimization techniques to improve query performance. Therefore, while the logical sequence of operations remains the same, the actual execution plan may differ based on optimization decisions made by the PostgreSQL query planner.


Writing Order

## SQL Comments

### Single Line Comment
```
SELECT 
    DISTINCT first_name, department_id -- single line comment
FROM employee;
```

### Multi line comment
```
SELECT
    DISTINCT first_name, department_id
    /*
    This is multi
    line
    commment
    */
FROM employee;
```


## SELECT
1. ALL Column*

`SELECT * FROM employee;`

2. Required Colummns

`SELECT id, email, salary FROM employee;`

3. Unique Values

`SELECT DISTINCT salary FROM employee;`

`SELECT DISTINCT first_name, department_id FROM employee;`

4. Select current_date, new_value

`SELECT 'kapil' || ' ' || 'Jain' AS fullname, 50000 as salary;`

  fullname  | salary
------------+--------
 kapil Jain |  50000

`SELECT CURRENT_DATE;`

 current_date
--------------
 2024-04-11

`SELECT 'The employee id ' ||  id  ||' is of '||first_name||  ' whose salary was '|| salary employee_detail, salary FROM employee;`

-------------------------------------------------------------+---------
|                      employee_detail                       | salary |
-------------------------------------------------------------+---------
| The employee id 1 is of John whose salary was 50000        |  50000 |
-------------------------------------------------------------+---------

## Operations on column (Concatinate, alias)
SELECT  first_name || ' ' || last_name FROM employee;
SELECT  first_name || ' ' || last_name AS Fullname FROM employee;
SELECT  first_name || ' ' || last_name AS "Fullname" FROM employee;

Alias - cmpgn.status as "CA_STATUS"
from
LIKE, IN, not IN, operator, between AND , OR, NOT, is null, is not null
Group by
Order by
Aggrigate function Max, min, avg, count, sum
Having
Where




-- Incremental data
-- new data will always be the latest data, like click data