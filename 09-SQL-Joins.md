## Type of joins based on number of tables:
1. Multi table join (Joins)
2. Single table join (Self Join)

We can use below joins with single or multi tables.

---

## Type of Joins - 
1. Inner join
2. Outer join 
  * Left outer join or Left join
  * Full outer join or Full join
  * Right outer join or Right join
3. Cross join (Cartesion Product or Cartesion Join, N X M)
4. Natural join (Automatically matching column comparision (without ON) with equality)

---

## Type of Join based on operator
1.	Equi Join: =
2.	Non Equi Join: <,  >,  <=,  >=, !=, <>

---

## Difference between INNER JOIN and NATURAL JOIN
An INNER JOIN and a NATURAL JOIN are both types of joins in SQL, but they have some key differences in how they determine the columns to join on and how they behave:

1. Column Matching:
* INNER JOIN: Requires you to explicitly specify the columns to join on using the ON keyword. You specify the condition that determines how rows from two tables are
matched.
* NATURAL JOIN: Automatically matches columns with the same name in both tables. It joins the tables based on all columns that have the same name in both tables.

2. Behavior:
* INNER JOIN: Returns only the rows where there is a match between the columns specified in the ON condition. It filters out rows where there is no match.
* NATURAL JOIN: Returns only the rows where the values in all columns with the same name in both tables are equal. It automatically performs an equijoin on all columns
with the same name.

3. Control:
* INNER JOIN: Provides more control over the join condition because you explicitly specify the columns to join on. You can use any condition to match rows from two
 tables.
* NATURAL JOIN: Provides less control because it automatically matches columns based on their names. If you have columns with the same name but you don't want to join on all of them, a natural join might not be suitable.

4. Readability:
* INNER JOIN: Offers better readability and explicitness because you can see exactly which columns are being used to join the tables.
* NATURAL JOIN: Might be less readable in complex queries, especially if you have many columns with the same name and it's not immediately clear which columns are being used for the join.


---

## Cross join (Cartesion Product
```
SELECT 
	emp.first_name,
	emp.last_name,
	dpt.department_name
FROM employeetracker.employee emp, employeetracker.department dpt
```

---

## NATURAL JOIN
```
SELECT
	EMP.FIRST_NAME,
	EMP.LAST_NAME,
	DPT.DEPARTMENT_NAME
FROM
	EMPLOYEETRACKER.EMPLOYEE EMP
	NATURAL JOIN EMPLOYEETRACKER.DEPARTMENT DPT;
```

---

## INNER JOIN
```
SELECT
	EMP.FIRST_NAME,
	EMP.LAST_NAME,
	DPT.DEPARTMENT_NAME
FROM
	EMPLOYEETRACKER.EMPLOYEE EMP
	INNER JOIN EMPLOYEETRACKER.DEPARTMENT DPT ON EMP.DEPARTMENT_ID = DPT.ID
```

---

## LEFT JOIN or LEFT OUTER JOIN
```
SELECT 
	emp.first_name,
	emp.last_name,
	dpt.department_name
FROM employeetracker.employee emp LEFT JOIN employeetracker.department dpt
ON emp.department_id = dpt.id
```

---

## RIGHT JOIN or RIGHT OUTER JOIN
```
SELECT 
	emp.first_name,
	emp.last_name,
	dpt.department_name
FROM employeetracker.employee emp RIGHT JOIN employeetracker.department dpt
ON emp.department_id = dpt.id
```

---

## FULL JOIN or FULL OUTER JOIN
```
SELECT 
	emp.first_name,
	emp.last_name,
	dpt.department_name
FROM employeetracker.employee emp FULL JOIN employeetracker.department dpt
ON emp.department_id = dpt.id
```

---

In summary, while both INNER JOIN and NATURAL JOIN are used to combine data from multiple tables, INNER JOIN provides more control over the join condition and is generally considered safer and more explicit, whereas NATURAL JOIN automatically matches columns based on their names, which can be convenient but may lead to unexpected results if the column names are not carefully managed.

-- UPDATE Join, DELETE Join ()
-- FULL JOIN employee convempersions USING ()