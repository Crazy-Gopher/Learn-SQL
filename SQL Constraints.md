## Constraints – 
1.	Check - create table emp( emp_id varchar(10), sal number(10) constraints esal check(sal>0))
                          insert into emp values('1001',0) it gives error because sal never be less then 0
                                                                          or
                      create table student (branch varchar(10) constraint chk check(branch in ('cs','ec','it')))
2.	Not Null –   doj date not null
3.	Primary Key - emp_id number(5)primary key
4.	Unique Key - email varchar(30) unique
5.	Foreign Key - dept_id varchar(10) references department (dept_id)
6.	Default : DEFAULT 'Sandnes'
7. Auto Increament or Identity

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes'
);



Example –
1.	Create tale department (dept_id varchar(10) primary key)




2.	create table employee(
 emp_id number(5)primary key,
                doj date not null,
                email varchar(30) unique,
                dept_id varchar(10) references department (dept_id)
                )
Composite Key – 
                Create table emp(
                 Emp_id varchar(10),
                 D_O_J date constraint doj not null,
                 Email varchar(30),
                 Dep_id  varchar(10),
                 Constraint emp_ck primary key(emp_id,email)
                 )
Dropping Constraints – 
               Alter table emp  drop constraint doj
Adding Constraints – 