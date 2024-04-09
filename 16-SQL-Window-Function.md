RANK
DENSE_RANK
ROW_NUMBER

# RANK, DENSE_RANK, ROW_NUMBER
SELECT salary,
RANK() OVER (ORDER BY salary DESC) AS rank,
DENSE_RANK() OVER (ORDER BY salary DESC) AS denserank,
ROW_NUMBER() OVER (ORDER BY salary DESC) AS rownumber
FROM employee
LIMIT 10;

`DENSE_RANK() OVER (PARTITION BY firstname, doj, salary ORDER BY salary DESC) AS denserank`

select 
    DENSE_RANK() OVER (PARTITION BY first_name, joined_date, salary ORDER BY salary DESC) AS denserank,
    emp.*
FROM employee emp;

```
 salary | rank | denserank | rownumber
--------+------+-----------+-----------
  60000 |    1 |         1 |         1
  59000 |    2 |         2 |         2
  59000 |    2 |         2 |         3
  59000 |    2 |         2 |         4
  59000 |    2 |         2 |         5
  59000 |    2 |         2 |         6
  58000 |    7 |         3 |         7
  57000 |    8 |         4 |         8
  56000 |    9 |         5 |         9
  55000 |   10 |         6 |        10
```

# SUM()
```
project budget = 5,00,000
SELECT 
    first_name || ' ' || last_name AS Fullname,
    email,
    joined_date,
    salary,
    SUM(salary) OVER (ORDER BY id) AS total_salary 
FROM Employee;
```

# Output
```
      fullname      |       email       | joined_date | salary | total_salary
--------------------+-------------------+-------------+--------+--------------
 John Doe           | John@example.com  | 2024-04-07  |  50000 |        50000
 John Doe           | emp1@example.com  | 2024-04-07  |  50000 |       100000
 Jane Smith         | emp2@example.com  | 2024-04-07  |  60000 |       160000
 Michael Johnson    | emp3@example.com  | 2024-04-07  |  55000 |       215000
 Emily Brown        | emp4@example.com  | 2024-04-07  |  52000 |       267000
 David Williams     | emp5@example.com  | 2024-04-07  |  53000 |       320000
 Sarah Jones        | emp6@example.com  | 2024-04-07  |  54000 |       374000
```

# MAX() / MIN()
```
project budget = 5,00,000
SELECT 
    first_name || ' ' || last_name AS Fullname,
    email,
    joined_date,
    salary,
    MIN(salary) OVER (ORDER BY id) AS min_salary,
    MAX(salary) OVER (ORDER BY id) AS max_salary 
FROM Employee;
```

# LEAD() AND LAG()

/*
Input: 
Seat table:
+----+---------+
| id | student |
+----+---------+
| 1  | Abbot   |
| 2  | Doris   |
| 3  | Emerson |
| 4  | Green   |
| 5  | Jeames  |
+----+---------+
Output: 
+----+---------+
| id | student |
+----+---------+
| 1  | Doris   |
| 2  | Abbot   |
| 3  | Green   |
| 4  | Emerson |
| 5  | Jeames  |
+----+---------+
Write a solution to swap the seat id of every two consecutive students. If the number of students is odd, the id of the last student is not swapped.
*/
SELECT
    id,
    CASE
        WHEN id % 2 = 1 AND LEAD(student) OVER(ORDER BY id) IS NULL THEN student
        WHEN id % 2 = 1 THEN LEAD(student) OVER(ORDER BY id)
        ELSE LAG(student) OVER(ORDER BY id)
    END AS student
FROM Seat;