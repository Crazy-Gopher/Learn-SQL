# Structured Query Language(SQL)
- Case insensitive (upper lower both are same)
- Query endswith semicolon;
- String value should be in single quotes ('kapil')
- Column name should be double quotes ("kapil")


## SQL clause Writing Order
In SQL, the order in which you write clauses in a query matters for readability and clarity. While SQL is flexible in terms of syntax, following a standardized order can make your queries easier to understand and maintain. Here's a common order in which you can write clauses in a SQL query:

1. **SELECT**: Start by specifying the columns you want to retrieve from the database. This clause is almost always the first one in a query.

2. **DISTINCT**: If you want to remove duplicate rows from the result set, use the DISTINCT clause immediately after the SELECT clause.

3. **FROM**: Next, specify the tables or views from which you want to retrieve data. This clause indicates the data source for the query.

4. **JOIN**: If you need to combine data from multiple tables, use the JOIN clause to specify how the tables should be linked together. This may include INNER JOIN, LEFT JOIN, RIGHT JOIN, or FULL JOIN.

5. **WHERE**: Use the WHERE clause to filter the rows returned by the query based on specific conditions. This clause typically follows the FROM and JOIN clauses.

6. **GROUP BY**: If you need to group the rows returned by the query based on certain columns, use the GROUP BY clause. This clause is followed by aggregate functions like SUM, AVG, COUNT, etc., if needed.

7. **HAVING**: If you need to filter the groups produced by the GROUP BY clause, use the HAVING clause. This clause is similar to the WHERE clause but is applied after the data has been grouped.

8. **ORDER BY**: If you want to sort the rows returned by the query, use the ORDER BY clause. This clause specifies the columns by which the result set should be sorted and the sort order (ascending or descending).

9. **LIMIT/OFFSET**: Finally, if you want to limit the number of rows returned by the query or skip a certain number of rows, use the LIMIT and OFFSET clauses, respectively. These clauses are used for pagination purposes.

```
SELECT DISTINCT column1, column2
FROM table1
JOIN table2 ON table1.id = table2.id
WHERE condition1
GROUP BY column1
HAVING condition2
ORDER BY column1 ASC
LIMIT 10 OFFSET 20;
```

## Execution order of SQL Query

In PostgreSQL (psql), the execution order of SQL queries generally follows the same logical sequence as in standard SQL. However, it's important to note that the PostgreSQL query optimizer may optimize the query execution plan based on various factors such as indexes, statistics, and query complexity. Here's the typical sequence of operations in SQL query execution in PostgreSQL:

1. **FROM**: The first step is to identify the tables or views from which data will be retrieved. This includes joining multiple tables if necessary.

2. **JOIN**: If there are multiple tables involved in the query, PostgreSQL performs any necessary joins based on the specified join conditions.

3. **WHERE**: Next, PostgreSQL applies any conditions specified in the WHERE clause to filter the rows returned from the tables/views identified in the FROM clause.

4. **GROUP BY**: If the query includes a GROUP BY clause, PostgreSQL groups the rows that have the same values in specified columns.

5. **HAVING**: If the query includes a HAVING clause (usually used in conjunction with GROUP BY), PostgreSQL applies the specified conditions to the grouped rows.

6. **SELECT**: After filtering and grouping (if applicable), PostgreSQL selects the columns specified in the SELECT clause.

7. **DISTINCT**: If the query includes the DISTINCT keyword, PostgreSQL eliminates duplicate rows from the result set.

8. **ORDER BY**: If the query includes an ORDER BY clause, PostgreSQL sorts the result set based on the specified column(s) and sort order.

9. **LIMIT/OFFSET**: If the query includes the LIMIT and OFFSET clauses (or equivalent), PostgreSQL restricts the number of rows returned and/or skips a certain number of rows.

PostgreSQL's query optimizer may rearrange the order of execution or apply various optimization techniques to improve query performance. Therefore, while the logical sequence of operations remains the same, the actual execution plan may differ based on optimization decisions made by the PostgreSQL query planner.


## SQL Comments

1. **Single Line Comment**

```
SELECT 
    DISTINCT first_name, department_id -- single line comment
FROM employee;
```

2. **Multi line comment**

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

## Alias - AS (Column, Table, Inline View)

status as "CA_STATUS"

status "CA_STATUS"

salary + 3000 AS NewSalary

## Literals in SQL
'kapil'
123
true, t
null
