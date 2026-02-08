# DML (manipulate data present in the DB)
INSERT - Single rows, multiple rows
DELETE
UPDATE

---

## INSERT INTO
```
INSERT INTO employeetracker.department VALUES (6, 'UK');
INSERT INTO employeetracker.department (department_name) VALUES ('IT');
INSERT INTO employeetracker.department (department_name) VALUES ('HR'), ('ADMIN'), ('ES'), ('SECURITY');
```

---

## UPDATE
Update only 1 field
```
UPDATE EMPLOYEETRACKER.EMPLOYEE
SET
	LAST_NAME = 'jain'
WHERE
	ID = 1
```

Update multiple fields
```
UPDATE EMPLOYEETRACKER.EMPLOYEE
SET
	LAST_NAME = 'Jain',
	salary = 40000
WHERE
	ID = 1
```

Update multiples rows in multiple fields
```
UPDATE EMPLOYEETRACKER.EMPLOYEE
SET
	LAST_NAME = 'Jain',
	salary = 40000
WHERE
	ID IN (1, 2)
```

---

## DELETE 
1. Delete monly specific row
```
DELETE FROM employeetracker.department WHERE id = 1
DELETE FROM employeetracker.department WHERE id IN (1, 2)
```

2. Delete all row
```
DELETE FROM employeetracker.department
```
