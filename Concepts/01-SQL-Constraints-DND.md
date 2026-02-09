## Constraints – 
1. Check
2. Not Null
3. Primary Key
4. Unique Key
5. Foreign Key - can be duplicate and null
6. Default
7. AutoIncreament - SERIAL
8. Composite Key – PRIMARY KEY(userid, sid, event_date, s_kwcid)


## Example
```
CREATE TABLE employeetracker.department (
    dept_id      SERIAL PRIMARY KEY,
    dept_name    VARCHAR(50) UNIQUE NOT NULL
);


CREATE TABLE employeetracker.employee (
    emp_id          SERIAL PRIMARY KEY,                -- Auto-increment + PK
    email           VARCHAR(100) UNIQUE NOT NULL,      -- Unique + Not Null
    first_name      VARCHAR(50) NOT NULL,              -- Not Null
    last_name       VARCHAR(50),                       
    salary          NUMERIC(10,2) NOT NULL 
                     CHECK (salary > 0),               -- CHECK + Not Null
    status          VARCHAR(20) DEFAULT 'active'
                     CHECK (status IN ('active', 'inactive', 'blocked')), -- DEFAULT + CHECK
    dept_id         INT NOT NULL 
                     REFERENCES employeetracker.department(dept_id),       -- Foreign Key
    join_date       DATE DEFAULT CURRENT_DATE NOT NULL -- DEFAULT + NOT NULL
);
```