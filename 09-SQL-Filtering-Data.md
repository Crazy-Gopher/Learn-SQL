## WHERE 
Add condition to filter the data.

`SELECT * FROM employee WHERE salary = 50000;`


## Operators
1. Comparision operator (<, >, <=, >=, <>, !=, =)

`SELECT * FROM employee WHERE salary >= 60000;`

2. IN, NOT IN

`SELECT * FROM employee WHERE salary IN (50000, 60000);`

`SELECT * FROM employee WHERE salary NOT IN (50000, 60000);`

3. IS NULL, IS NOT NULL

`SELECT * FROM employee WHERE last_name IS NULL;`

`SELECT * FROM employee WHERE last_name IS NOT NULL;`

4. BETWEEN (both values are inclusive) value1 <= col AND col <= value2

`SELECT * FROM employee WHERE salary BETWEEN 50000 AND 60000;`

`SELECT * FROM employee WHERE 50000 <= salary AND salary <= 60000;`

5. LIKE, iLIKE - 
Single Character - underscore(_)
Zero or One or Multi Character - percentage(%)

Startswith-

`SELECT * FROM employee WHERE first_name LIKE 'ka%';`

`SELECT * FROM employee WHERE first_name iLIKE 'ka%';`

Endswith-
`SELECT * FROM employee WHERE first_name iLIKE '%yu';`

Contains-
`SELECT * FROM employee WHERE first_name iLIKE '%y%';`

6. Logical Operator (AND, OR, NOT)
When you have multiple contions to add.

`SELECT * FROM employee WHERE department_id = 1 AND salary > 50000;`

`SELECT * FROM employee WHERE first_name = 'John' OR salary > 60000;`
