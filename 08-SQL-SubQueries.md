## Corelated and Non-Corelated Sub Quries
1. Single row subquery(Single column), 
2. Multiple row subquery(Single column), 
3. Multiple column subquery(Single or Multiple row), 
4. Corelated sub queries
5. nested subquery. 

---

## Inline View / Inline Query
```
SELECT emp.first_name, emp.last_name
FROM (
    SELECT first_name, last_name
    FROM employee
    WHERE joined_date > '2024-04-01'
) AS emp;
```

---

## Inner Queries
1. Subquery in select
2. Subquery with partition by
3. Subquery in from
4. Sub query in where

---

## ANY, ALL, EXISTS
IF EXISTS
IF NOT EXISTS


## SQL Sub Queries
https://www.scaler.com/topics/sql/types-of-subqueries-in-sql/Single-row 
https://www.geeksforgeeks.org/difference-between-nested-subquery-correlated-subquery-and-join-operation/?ref=rp
https://www.geeksforgeeks.org/sql-correlated-subqueries/



---

## 2nd Highest Salary
```
SELECT
	MAX(SALARY)
FROM
	EMPLOYEETRACKER.EMPLOYEE
WHERE
	SALARY NOT IN ( SELECT MAX(SALARY) FROM EMPLOYEETRACKER.EMPLOYEE)
```

---

## Nth Highest salary 
https://www.youtube.com/watch?v=fh4yBn0oTaM&ab_channel=GateSmashers
```
SELECT
	*
FROM
	EMPLOYEETRACKER.EMPLOYEE EMP1
WHERE
	(N - 1) = (
		SELECT
			COUNT(DISTINCT (EMP2.SALARY))
		FROM
			EMPLOYEETRACKER.EMPLOYEE EMP2
		WHERE
			EMP2.SALARY > EMP1.SALARY
	)
```

---

## ## Highest Salary of Each Department, Employee Name, Department Name
```
SELECT
    EMP.FIRST_NAME || ' ' || EMP.LAST_NAME AS "Employee Name",
    EMP.SALARY,
    DPT.DEPARTMENT_NAME
FROM EMPLOYEETRACKER.EMPLOYEE EMP
INNER JOIN (
        SELECT
            EMP.department_id,
            MAX(EMP.SALARY) AS max_sal
        FROM EMPLOYEETRACKER.EMPLOYEE EMP
        GROUP BY EMP.department_id
) AS MX 
    ON EMP.department_id = MX.department_id
    AND EMP.salary = MX.max_sal
INNER JOIN EMPLOYEETRACKER.DEPARTMENT DPT 
    ON EMP.department_id = DPT.ID;
```