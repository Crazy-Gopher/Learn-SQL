DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS department;

CREATE TABLE IF NOT EXISTS employee(
    id SERIAL PRIMARY KEY,
    email VARCHAR(30) UNIQUE NOT NULL,
    joined_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    salary NUMERIC NOT NULL CHECK(salary > 0), -- employee_salary_check
    is_active BOOLEAN DEFAULT TRUE,
    create_ts TIMESTAMP,
    department_id INTEGER,
    CONSTRAINT fk_dpt
    FOREIGN KEY(department_id) 
    REFERENCES department(id)
);

CREATE TABLE IF NOT EXISTS department(
    id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO department (department_name) VALUES('IT');
INSERT INTO department (department_name) VALUES('HR'),('ADMIN'),('ES'),('SECURITY');


-- Valid
INSERT INTO employee (email, joined_date, first_name, last_name, salary, department_id, create_ts)
VALUES ('John@example.com', '2024-04-07', 'John', 'Doe', 50000, 1, NOW());

INSERT INTO employee (email, joined_date, first_name, last_name, salary, department_id, create_ts)
VALUES ('Sarah1@example.com', '2024-04-07', 'Sarah', 'Doe', 50000, 1, NOW());

INSERT INTO employee (email, joined_date, first_name, last_name, salary, department_id, create_ts)
VALUES 
('emp1@example.com', '2024-04-07', 'John', 'Doe', 50000, 1, NOW()),
('emp2@example.com', '2024-04-07', 'Jane', 'Smith', 60000, 2, NOW()),
('emp3@example.com', '2024-04-07', 'Michael', 'Johnson', 55000, 1, NOW()),
('emp4@example.com', '2024-04-07', 'Emily', 'Brown', 52000, 2, NOW()),
('emp5@example.com', '2024-04-07', 'David', 'Williams', 53000, 1, NOW()),
('emp6@example.com', '2024-04-07', 'Sarah', 'Jones', 54000, 2, NOW()),
('emp7@example.com', '2024-04-07', 'Christopher', 'Garcia', 58000, 1, NOW()),
('emp8@example.com', '2024-04-07', 'Amanda', 'Martinez', 56000, 2, NOW()),
('emp9@example.com', '2024-04-07', 'Matthew', 'Hernandez', 57000, 1, NOW()),
('emp10@example.com', '2024-04-07', 'Ashley', 'Lopez', 59000, 2, NOW());

-- Invalid Data
INSERT INTO employee (email, joined_date, first_name, last_name, salary, department_id, create_ts)
VALUES ('John@example.com', '2024-04-07', 'John', 'Doe', 50000, 1, NOW());

INSERT INTO employee (email, first_name, last_name, salary, department_id, create_ts)
VALUES ('John@example.com', 'John', 'Doe', 50000, 1, NOW());

INSERT INTO employee (email, joined_date, first_name, last_name, salary, department_id, create_ts)
VALUES ('Kaul@example.com', '2024-04-07', 'Kaul', 'Doe', 0, 1, NOW());

INSERT INTO employee (email, joined_date, first_name, last_name, salary, department_id, create_ts)
VALUES 
('emp11@example.com', '2024-04-07', 'John', 'Doe', 59000, 1, NOW()),
('emp12@example.com', '2024-04-07', 'Jane', 'Smith', 59000, 2, NOW()),
('emp13@example.com', '2024-04-07', 'Michael', 'Johnson', 59000, 1, NOW()),
('emp14@example.com', '2024-04-07', 'Emily', 'Brown', 59000, 2, NOW());






