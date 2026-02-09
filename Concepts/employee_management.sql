CREATE DATABASE employee_management;

CREATE TABLE Employee (
    employeeId SERIAL PRIMARY KEY,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    dateOfBirth DATE,
    gender VARCHAR(10),
    email VARCHAR(100),
    phoneNumber VARCHAR(20),
    address TEXT
);

CREATE TABLE Department (
    departmentId SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Designation (
    designationId SERIAL PRIMARY KEY,
    title VARCHAR(100),
    responsibilities TEXT,
    salary DECIMAL(10, 2),
    departmentId INT REFERENCES Department(departmentId)
);

CREATE TABLE Attendance (
    attendanceId SERIAL PRIMARY KEY,
    employeeId INT REFERENCES Employee(employeeId),
    date DATE,
    status VARCHAR(20),
    remarks TEXT
);

CREATE TABLE EmployeeType (
    typeId SERIAL PRIMARY KEY,
    typeName VARCHAR(50)
);

CREATE TABLE Project (
    projectId SERIAL PRIMARY KEY,
    name VARCHAR(100),
    departmentId INT REFERENCES Department(departmentId),
    startDate DATE,
    endDate DATE,
    status VARCHAR(20),
    remarks TEXT
);

CREATE TABLE Salary (
    salaryId SERIAL PRIMARY KEY,
    employeeId INT REFERENCES Employee(employeeId),
    amount DECIMAL(10, 2),
    fromDate DATE,
    toDate DATE
);

CREATE TABLE Leave (
    leaveId SERIAL PRIMARY KEY,
    employeeId INT REFERENCES Employee(employeeId),
    startDate DATE,
    endDate DATE,
    leaveType VARCHAR(50),
    status VARCHAR(20),
    remarks TEXT
);

INSERT INTO Employee (firstName, lastName, dateOfBirth, gender, email, phoneNumber, address) 
VALUES ('John', 'Doe', '1990-05-15', 'Male', 'john.doe@example.com', '1234567890', '123 Main St');

INSERT INTO Department (name) VALUES ('Human Resources'), ('Finance'), ('IT');

INSERT INTO Designation (title, responsibilities, salary, departmentId) 
VALUES ('HR Manager', 'Managing HR operations', 70000, 1),
       ('Accountant', 'Handling financial transactions', 50000, 2),
       ('Software Engineer', 'Developing software solutions', 80000, 3);

INSERT INTO Attendance (employeeId, date, status, remarks) 
VALUES (1, '2024-04-01', 'Present', 'Regular work day'),
       (1, '2024-04-02', 'Absent', 'Sick leave');

INSERT INTO EmployeeType (typeName) VALUES ('Full-Time'), ('Part-Time'), ('Contractor');

INSERT INTO Project (name, departmentId, startDate, endDate, status, remarks) 
VALUES ('Employee Management System', 3, '2024-04-01', '2024-12-31', 'Ongoing', 'Development phase'),
       ('Financial Audit', 2, '2024-05-01', '2024-06-30', 'Ongoing', 'Quarterly audit');

INSERT INTO Salary (employeeId, amount, fromDate, toDate) 
VALUES (1, 80000, '2024-01-01', '2024-12-31');

INSERT INTO Leave (employeeId, startDate, endDate, leaveType, status, remarks) 
VALUES (1, '2024-04-03', '2024-04-04', 'Sick Leave', 'Approved', 'Doctor''s prescription provided');


INSERT INTO Employee (firstName, lastName, dateOfBirth, gender, email, phoneNumber, address) 
VALUES 
('John', 'Doe', '1990-05-15', 'Male', 'john.doe@example.com', '1234567890', '123 Main St'),
('Jane', 'Smith', '1985-09-20', 'Female', 'jane.smith@example.com', '9876543210', '456 Elm St'),
('Michael', 'Johnson', '1988-03-10', 'Male', 'michael.johnson@example.com', '5555555555', '789 Oak St'),
('Emily', 'Brown', '1992-11-25', 'Female', 'emily.brown@example.com', '1112223333', '987 Pine St'),
('Daniel', 'Williams', '1984-07-18', 'Male', 'daniel.williams@example.com', '4447778888', '654 Birch St'),
('Sarah', 'Jones', '1991-01-30', 'Female', 'sarah.jones@example.com', '3336669999', '321 Cedar St'),
('Christopher', 'Martinez', '1987-06-05', 'Male', 'christopher.martinez@example.com', '2223334444', '789 Maple St'),
('Jessica', 'Garcia', '1989-12-12', 'Female', 'jessica.garcia@example.com', '8889990000', '567 Pine St'),
('David', 'Hernandez', '1986-08-22', 'Male', 'david.hernandez@example.com', '7778889999', '234 Oak St'),
('Ashley', 'Lopez', '1993-04-02', 'Female', 'ashley.lopez@example.com', '9990001111', '876 Cedar St'),
('James', 'Gonzalez', '1983-10-08', 'Male', 'james.gonzalez@example.com', '6667778888', '543 Elm St'),
('Amanda', 'Rodriguez', '1990-02-14', 'Female', 'amanda.rodriguez@example.com', '5556667777', '765 Maple St'),
('John', 'Doe', '1990-05-15', 'Male', 'john.doe@example.com', '1234567890', '123 Main St'),
('Jane', 'Smith', '1985-09-20', 'Female', 'jane.smith@example.com', '9876543210', '456 Elm St'),
('Michael', 'Johnson', '1988-03-10', 'Male', 'michael.johnson@example.com', '5555555555', '789 Oak St'),
('Emily', 'Brown', '1992-11-25', 'Female', 'emily.brown@example.com', '1112223333', '987 Pine St'),
('Daniel', 'Williams', '1984-07-18', 'Male', 'daniel.williams@example.com', '4447778888', '654 Birch St'),
('Sarah', 'Jones', '1991-01-30', 'Female', 'sarah.jones@example.com', '3336669999', '321 Cedar St'),
('Christopher', 'Martinez', '1987-06-05', 'Male', 'christopher.martinez@example.com', '2223334444', '789 Maple St'),
('Jessica', 'Garcia', '1989-12-12', 'Female', 'jessica.garcia@example.com', '8889990000', '567 Pine St'),
('David', 'Hernandez', '1986-08-22', 'Male', 'david.hernandez@example.com', '7778889999', '234 Oak St'),
('Ashley', 'Lopez', '1993-04-02', 'Female', 'ashley.lopez@example.com', '9990001111', '876 Cedar St'),
('James', 'Gonzalez', '1983-10-08', 'Male', 'james.gonzalez@example.com', '6667778888', '543 Elm St'),
('Amanda', 'Rodriguez', '1990-02-14', 'Female', 'amanda.rodriguez@example.com', '5556667777', '765 Maple St'),
('John', 'Doe', '1990-05-15', 'Male', 'john.doe@example.com', '1234567890', '123 Main St'),
('Jane', 'Smith', '1985-09-20', 'Female', 'jane.smith@example.com', '9876543210', '456 Elm St'),
('Michael', 'Johnson', '1988-03-10', 'Male', 'michael.johnson@example.com', '5555555555', '789 Oak St'),
('Emily', 'Brown', '1992-11-25', 'Female', 'emily.brown@example.com', '1112223333', '987 Pine St'),
('Daniel', 'Williams', '1984-07-18', 'Male', 'daniel.williams@example.com', '4447778888', '654 Birch St'),
('Sarah', 'Jones', '1991-01-30', 'Female', 'sarah.jones@example.com', '3336669999', '321 Cedar St'),
('Christopher', 'Martinez', '1987-06-05', 'Male', 'christopher.martinez@example.com', '2223334444', '789 Maple St'),
('Jessica', 'Garcia', '1989-12-12', 'Female', 'jessica.garcia@example.com', '8889990000', '567 Pine St'),
('David', 'Hernandez', '1986-08-22', 'Male', 'david.hernandez@example.com', '7778889999', '234 Oak St'),
('Ashley', 'Lopez', '1993-04-02', 'Female', 'ashley.lopez@example.com', '9990001111', '876 Cedar St'),
('James', 'Gonzalez', '1983-10-08', 'Male', 'james.gonzalez@example.com', '6667778888', '543 Elm St'),
('Amanda', 'Rodriguez', '1990-02-14', 'Female', 'amanda.rodriguez@example.com', '5556667777', '765 Maple St'),
('John', 'Doe', '1990-05-15', 'Male', 'john.doe@example.com', '1234567890', '123 Main St'),
('Jane', 'Smith', '1985-09-20', 'Female', 'jane.smith@example.com', '9876543210', '456 Elm St'),
('Michael', 'Johnson', '1988-03-10', 'Male', 'michael.johnson@example.com', '5555555555', '789 Oak St'),
('Emily', 'Brown', '1992-11-25', 'Female', 'emily.brown@example.com', '1112223333', '987 Pine St'),
('Daniel', 'Williams', '1984-07-18', 'Male', 'daniel.williams@example.com', '4447778888', '654 Birch St'),
('Sarah', 'Jones', '1991-01-30', 'Female', 'sarah.jones@example.com', '3336669999', '321 Cedar St'),
('Christopher', 'Martinez', '1987-06-05', 'Male', 'christopher.martinez@example.com', '2223334444', '789 Maple St'),
('Jessica', 'Garcia', '1989-12-12', 'Female', 'jessica.garcia@example.com', '8889990000', '567 Pine St'),
('David', 'Hernandez', '1986-08-22', 'Male', 'david.hernandez@example.com', '7778889999', '234 Oak St'),
('Ashley', 'Lopez', '1993-04-02', 'Female', 'ashley.lopez@example.com', '9990001111', '876 Cedar St'),
('James', 'Gonzalez', '1983-10-08', 'Male', 'james.gonzalez@example.com', '6667778888', '543 Elm St'),
('Amanda', 'Rodriguez', '1990-02-14', 'Female', 'amanda.rodriguez@example.com', '5556667777', '765 Maple St'),
('Michael', 'Wilson', '1987-05-18', 'Male', 'michael.wilson@example.com', '1239874560', '789 Pine St'),
('Jennifer', 'Lee', '1984-08-22', 'Female', 'jennifer.lee@example.com', '9876541230', '456 Oak St'),
('Matthew', 'Brown', '1991-03-17', 'Male', 'matthew.brown@example.com', '5556667770', '321 Elm St'),
('Kimberly', 'Taylor', '1989-11-12', 'Female', 'kimberly.taylor@example.com', '3332221110', '654 Cedar St'),
('Joshua', 'Anderson', '1986-06-25', 'Male', 'joshua.anderson@example.com', '7778889990', '876 Main St'),
('Megan', 'Thomas', '1993-02-07', 'Female', 'megan.thomas@example.com', '1112223330', '543 Birch St'),
('William', 'Harris', '1985-09-30', 'Male', 'william.harris@example.com', '9998887770', '987 Maple St'),
('Emily', 'Clark', '1990-04-25', 'Female', 'emily.clark@example.com', '4445556660', '765 Pine St'),
('Andrew', 'White', '1988-12-10', 'Male', 'andrew.white@example.com', '6667778880', '234 Oak St'),
('Alyssa', 'Martinez', '1992-07-02', 'Female', 'alyssa.martinez@example.com', '3331112220', '876 Cedar St'),
('Ryan', 'Garcia', '1983-01-08', 'Male', 'ryan.garcia@example.com', '5556667770', '543 Elm St'),
('Lauren', 'Rodriguez', '1990-06-14', 'Female', 'lauren.rodriguez@example.com', '8889990000', '765 Maple St'),
('Justin', 'Nguyen', '1987-11-05', 'Male', 'justin.nguyen@example.com', '2223334440', '987 Cedar St'),
('Samantha', 'Smith', '1989-02-12', 'Female', 'samantha.smith@example.com', '1112223330', '654 Pine St'),
('Brandon', 'Gonzalez', '1986-05-22', 'Male', 'brandon.gonzalez@example.com', '7778889990', '321 Elm St'),
('Elizabeth', 'Lopez', '1993-10-02', 'Female', 'elizabeth.lopez@example.com', '9990001110', '876 Maple St'),
('Jacob', 'Clark', '1984-07-08', 'Male', 'jacob.clark@example.com', '6667778880', '543 Birch St'),
('Kayla', 'Perez', '1991-02-14', 'Female', 'kayla.perez@example.com', '5556667770', '765 Cedar St'),
('Nicholas', 'Hernandez', '1988-09-08', 'Male', 'nicholas.hernandez@example.com', '2223334440', '987 Oak St'),
('Natalie', 'Gomez', '1992-04-02', 'Female', 'natalie.gomez@example.com', '1112223330', '654 Pine St'),
('Tyler', 'Diaz', '1983-11-10', 'Male', 'tyler.diaz@example.com', '7778889990', '321 Elm St'),
('Hannah', 'Rivera', '1990-06-14', 'Female', 'hannah.rivera@example.com', '9990001110', '876 Maple St'),
('Ethan', 'Evans', '1987-10-05', 'Male', 'ethan.evans@example.com', '6667778880', '543 Birch St'),
('Victoria', 'Cook', '1989-03-12', 'Female', 'victoria.cook@example.com', '5556667770', '765 Cedar St'),
('Alexander', 'Sanchez', '1993-08-22', 'Male', 'alexander.sanchez@example.com', '2223334440', '987 Oak St'),
('Madison', 'Bennett', '1984-05-02', 'Female', 'madison.bennett@example.com', '1112223330', '654 Pine St'),
('Christopher', 'Rivera', '1991-01-08', 'Male', 'christopher.rivera@example.com', '7778889990', '321 Elm St'),
('Taylor', 'Price', '1988-04-14', 'Female', 'taylor.price@example.com', '9990001110', '876 Maple St'),
('Ava', 'Hughes', '1992-09-05', 'Female', 'ava.hughes@example.com', '6667778880', '543 Birch St'),
('Samuel', 'Long', '1983-12-12', 'Male', 'samuel.long@example.com', '5556667770', '765 Cedar St'),
('Sophia', 'Foster', '1989-07-02', 'Female', 'sophia.foster@example.com', '2223334440', '987 Oak St'),
('Matthew', 'Ramirez', '1993-03-22', 'Male', 'matthew.ramirez@example.com', '1112223330', '654 Pine St'),
('Olivia', 'Barnes', '1984-08-08', 'Female', 'olivia.barnes@example.com', '7778889990', '321 Elm St'),
('Andrew', 'Gray', '1990-06-14', 'Male', 'andrew.gray@example.com', '9990001110', '876 Maple St'),
('Isabella', 'Parker', '1987-10-05', 'Female', 'isabella.parker@example.com', '6667778880', '543 Birch St'),
('William', 'Sanders', '1989-03-12', 'Male', 'william.sanders@example.com', '5556667770', '765 Cedar St'),
('Sophia', 'Richardson', '1993-08-22', 'Female', 'sophia.richardson@example.com', '2223334440', '987 Oak St'),
('Jacob', 'Reed', '1984-05-02', 'Male', 'jacob.reed@example.com', '1112223330', '654 Pine St'),
('Grace', 'Cooper', '1991-01-08', 'Female', 'grace.cooper@example.com', '7778889990', '321 Elm St'),
('Michael', 'Ward', '1988-04-14', 'Male', 'michael.ward@example.com', '9990001110', '876 Maple St'),
('Sophia', 'Morris', '1992-09-05', 'Female', 'sophia.morris@example.com', '6667778880', '543 Birch St'),
('Daniel', 'Baker', '1983-12-12', 'Male', 'daniel.baker@example.com', '5556667770', '765 Cedar St'),
('Chloe', 'Bennett', '1989-07-02', 'Female', 'chloe.bennett@example.com', '2223334440', '987 Oak St'),
('Matthew', 'Griffin', '1993-03-22', 'Male', 'matthew.griffin@example.com', '1112223330', '654 Pine St'),
('Avery', 'Murray', '1984-08-08', 'Female', 'avery.murray@example.com', '7778889990', '321 Elm St'),
('Emma', 'Nguyen', '1990-06-14', 'Female', 'emma.nguyen@example.com', '9990001110', '876 Maple St'),
('William', 'Sanders', '1987-10-05', 'Male', 'william.sanders@example.com', '6667778880', '543 Birch St'),
('Olivia', 'Parker', '1989-03-12', 'Female', 'olivia.parker@example.com', '5556667770', '765 Cedar St'),
('Ethan', 'Richardson', '1993-08-22', 'Male', 'ethan.richardson@example.com', '2223334440', '987 Oak St'),
('Abigail', 'Reed', '1984-05-02', 'Female', 'abigail.reed@example.com', '1112223330', '654 Pine St'),
('Alexander', 'Cooper', '1991-01-08', 'Male', 'alexander.cooper@example.com', '7778889990', '321 Elm St'),
('Madison', 'Ward', '1988-04-14', 'Female', 'madison.ward@example.com', '9990001110', '876 Maple St'),
('James', 'Morris', '1992-09-05', 'Male', 'james.morris@example.com', '6667778880', '543 Birch St'),
('Chloe', 'Baker', '1983-12-12', 'Female', 'chloe.baker@example.com', '5556667770', '765 Cedar St'),
('William', 'Ward', '1989-07-02', 'Male', 'william.ward@example.com', '2223334440', '987 Oak St');

