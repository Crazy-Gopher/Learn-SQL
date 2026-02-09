# DDL (define database schema in DBMS)
* CREATE, (TABLE, SCHEMA, DATABASE or CATALOG)
* ALTER, (TABLE, COLUMN, Constraints)
* DROP, (COLUMN, TABLE, Constraint)
* TRUNCATE (TABLE)
* RENAME (COLUMN, TABLE)


# CREATE

## CREATE DATABSE
```
CREATE DATABASE employeetracker_db;
```

## CREATE SCHEMA
```
CREATE SCHEMA IF NOT EXISTS employeetracker;
```

## CREATE TABLE
```
CREATE TABLE IF NOT EXISTS employeetracker.department(
    id SERIAL PRIMARY KEY,
    department_name VARCHAR(50) UNIQUE NOT NULL
);
```

```
CREATE TABLE IF NOT EXISTS employeetracker.employee (
    id SERIAL PRIMARY KEY,
    email VARCHAR(100) UNIQUE NOT NULL,
    joined_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30),
    salary NUMERIC NOT NULL CHECK(salary > 0),
    is_active BOOLEAN DEFAULT TRUE,
    create_ts TIMESTAMP,
    department_id INTEGER,
    manager_id INTEGER,
    CONSTRAINT fk_dpt
    FOREIGN KEY(department_id) 
    REFERENCES employeetracker.department(id)
);
```

---

## CREATE TABLE AS
Does not copy the constraints
```
CREATE TABLE EMPLOYEETRACKER.EMPLOYEE_BACKUP AS
SELECT
	*
FROM
	EMPLOYEETRACKER.EMPLOYEE
```
OR
```
CREATE TABLE EMPLOYEETRACKER.EMPLOYEE_BACKUP_2 AS TABLE EMPLOYEETRACKER.EMPLOYEE
```

---

## DEEP CLONE
```
CREATE TABLE EMPLOYEETRACKER.EMPLOYEE_BACKUP_3 (LIKE EMPLOYEETRACKER.EMPLOYEE INCLUDING ALL);

INSERT INTO
	EMPLOYEETRACKER.EMPLOYEE_BACKUP_3
SELECT
	*
FROM
	EMPLOYEETRACKER.EMPLOYEE;
```

---

## TRUNCATE
```
TRUNCATE TABLE employeetracker.department
```

---

##	DROP
### DROP COLUMN
```
ALTER TABLE employeetracker.employee
DROP COLUMN mobile;
```
s
---

### DROP TABLE
It delete all the data and schema of the table
```
DROP TABLE employeetracker.employee 
DROP TABLE employeetracker.department
```

---

### DROP CONTRAINTS - default_contraints_name <table_name>_<column_name>_check
```
ALTER TABLE employeetracker.employee
DROP CONSTRAINT employee_salary_check;
```


## ALTER
###	Add new column
```
ALTER TABLE employeetracker.employee
ADD COLUMN mobile VARCHAR(14)
```

###	Modify a column
```
ALTER TABLE employeetracker.employee
ALTER COLUMN mobile TYPE VARCHAR(13);
```

## Adding Constraints - 
```
ALTER TABLE employeetracker.employee
ADD CONSTRAINT chk_salary_positive CHECK (salary > 0);
```

---

## RENAME
### RENAME TABLE NAME
```
ALTER TABLE employeetracker.employee_backup_3
RENAME TO employee_backup_4;
```

### RENAME COLUMN
```
ALTER TABLE employeetracker.employee
RENAME COLUMN mobile TO phone_number;
```
