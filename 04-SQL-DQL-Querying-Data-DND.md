# DQL (retrieve data from the DB using SQL queries)

## SELECT ALL Column

```
SELECT * FROM employeetracker.employee;
```
---

## Only Required Colummns

`SELECT id, email, salary FROM employeetracker.employee;`

---

## DISTINCT Unique Values

`SELECT DISTINCT SALARY FROM employeetracker.employee;`

`SELECT DISTINCT first_name, department_id FROM employeetracker.employee`

---

## Select current_date, Some value

`SELECT CURRENT_DATE;`

```
SELECT
	ID,
	NULL AS MOBILE,
	0 AS INCREAMENT
FROM
	EMPLOYEETRACKER.EMPLOYEE
```

---

## Alias
`SELECT first_name || ' ' || last_name AS full_name, salary FROM employeetracker.employee`

---

## Concatination
`SELECT first_name || ' ' || last_name, salary FROM employeetracker.employee`

  fullname  | salary
------------+--------
 kapil Jain |  50000



`SELECT first_name || ' ' || last_name AS "full name", salary FROM employeetracker.employee;`

```
SELECT
	'The employee id ' || ID || ' is of ' || FIRST_NAME || ' whose salary was ' || SALARY EMPLOYEE_DETAIL,
	SALARY
FROM
	EMPLOYEETRACKER.EMPLOYEE;
```

-------------------------------------------------------------+---------
|                      employee_detail                       | salary |
-------------------------------------------------------------+---------
| The employee id 1 is of John whose salary was 50000        |  50000 |
-------------------------------------------------------------+---------


---

## LIMIT
```
SELECT
	*
FROM
	EMPLOYEETRACKER.EMPLOYEE
LIMIT 10
```

---

## OFFSET - kind of slice list[offset:] 
```
SELECT
	*
FROM
	EMPLOYEETRACKER.EMPLOYEE
OFFSET 10
```

---

## ORDER BY - sorting - by default is ascending
Ascending
```
SELECT
	*
FROM
	EMPLOYEETRACKER.EMPLOYEE
ORDER BY email -- ASC this is optional
```

Descending
```
SELECT
	*
FROM
	EMPLOYEETRACKER.EMPLOYEE
ORDER BY email DESC
```

department_id Descending, email Ascending

```
SELECT
	*
FROM
	EMPLOYEETRACKER.EMPLOYEE
ORDER BY department_id DESC, email ASC
```

Order By Based on column no. without typing column name
```
SELECT
	*
FROM
	EMPLOYEETRACKER.EMPLOYEE
ORDER BY 9 DESC, 2 ASC
```