CREATE DATABASE employeetracker;

CREATE TABLE IF NOT EXISTS department(
    id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS employee(
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
    REFERENCES department(id)
);

-- Valid
INSERT INTO department (department_name) VALUES('IT');
INSERT INTO department (department_name) VALUES('HR'),('ADMIN'),('ES'),('SECURITY');


-- Valid
INSERT INTO employee (email, joined_date, first_name, last_name, salary, is_active, create_ts, department_id, manager_id)
VALUES ('KapilJain@example.com', '2024-04-01', 'Kapil', 'Jain', 50000, true, NOW(), 3, null);

INSERT INTO employee (email, joined_date, first_name, last_name, salary, is_active, create_ts, department_id, manager_id)
VALUES 
    ('john.doe@example.com', '2024-04-01', 'John', 'Doe', 60000, true, NOW(), 1, null),
    ('jane.smith@example.com', '2024-04-02', 'Jane', 'Smith', 55000, true, NOW(), 2, 1),
    ('michael.johnson@example.com', '2024-04-03', 'Michael', 'Johnson', 70000, true, NOW(), 1, 1),
    ('emily.brown@example.com', '2024-04-04', 'Emily', 'Brown', 62000, true, NOW(), 2, 2),
    ('david.williams@example.com', '2024-04-05', 'David', 'Williams', 58000, true, NOW(), 3, 2),
    ('sarah.jones@example.com', '2024-04-06', 'Sarah', 'Jones', 63000, true, NOW(), 3, 3),
    ('matthew.davis@example.com', '2024-04-07', 'Matthew', 'Davis', 65000, true, NOW(), 1, 4),
    ('jessica.miller@example.com', '2024-04-08', 'Jessica', 'Miller', 68000, true, NOW(), 2, 4),
    ('daniel.wilson@example.com', '2024-04-09', 'Daniel', 'Wilson', 59000, true, NOW(), 3, 5),
    ('elizabeth.taylor@example.com', '2024-04-10', 'Elizabeth', 'Taylor', 72000, true, NOW(), 1, 5),
    ('christopher.anderson@example.com', '2024-04-11', 'Christopher', 'Anderson', 64000, true, NOW(), 2, 6),
    ('ashley.martinez@example.com', '2024-04-12', 'Ashley', 'Martinez', 71000, true, NOW(), 3, 6),
    ('joshua.hernandez@example.com', '2024-04-13', 'Joshua', 'Hernandez', 60000, true, NOW(), 1, 7),
    ('amanda.lopez@example.com', '2024-04-14', 'Amanda', 'Lopez', 63000, true, NOW(), 2, 7),
    ('andrew.gonzalez@example.com', '2024-04-15', 'Andrew', 'Gonzalez', 67000, true, NOW(), 3, 8),
    ('megan.young@example.com', '2024-04-16', 'Megan', 'Young', 59000, true, NOW(), 1, 8),
    ('ryan.king@example.com', '2024-04-17', 'Ryan', 'King', 65000, true, NOW(), 2, 9),
    ('lauren.scott@example.com', '2024-04-18', 'Lauren', 'Scott', 69000, true, NOW(), 3, 9),
    ('kevin.adams@example.com', '2024-04-19', 'Kevin', 'Adams', 60000, true, NOW(), 1, 10),
    ('kevin@example.com', '2024-04-19', 'Kevin', null, 60000, true, NOW(), 1, 10),
    ('kayu.adams@example.com', '2024-04-19', 'Kayu', null, 60000, true, NOW(), 1, 10),
    ('nicole.cook@example.com', '2024-04-20', 'Nicole', 'Cook', 68000, true, NOW(), 2, 10),
    ('nicole.cook1@example.com', '2024-04-20', 'nicole', 'cook', 68000, true, NOW(), 2, 10);




-- Invalid Data
INSERT INTO employee (email, joined_date, first_name, last_name, salary, department_id, create_ts)
VALUES ('John@example.com', '2024-04-07', 'John', 'Doe', 50000, 1, NOW());

INSERT INTO employee (email, first_name, last_name, salary, department_id, create_ts)
VALUES ('John@example.com', 'John', 'Doe', 50000, 1, NOW());

INSERT INTO employee (email, joined_date, first_name, last_name, salary, department_id, create_ts)
VALUES ('Kaul@example.com', '2024-04-07', 'Kaul', 'Doe', 0, 1, NOW());

