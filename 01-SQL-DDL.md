# DDL (define database schema in DBMS)
CREATE, 
ALTER, 
DROP, 
TRUNCATE,
RENAME


# Schema


# Backup
Backup - create table emp as select * from employee 

## CREATE
Create - 
create table employee(emp_id varchar(10), emp_name varchar(10),  sal number(10), phn_no varchar(10),doj date);

Create table If Not Exists Employee (id int, salary int)


### CREATE database
USE databse_name;
### CREATE table

## Constraints
we can apply multiple constraints at once

1. Check
create table emp( emp_id varchar(10), sal number(10) constraints esal check(sal>0))
insert into emp values('1001',0) it gives error because sal never be less then 0
create table student (branch varchar(10) constraint chk check(branch in ('cs','ec','it')))

2.	Not Null –   doj date not null

3.	Primary Key - emp_id number(5)primary key

4.	Unique Key - email varchar(30) unique

5.	Foreign Key - dept_id varchar(10) references department (dept_id)

6.	Default : DEFAULT 'Sandnes'

7. Auto Increament or Identity



## ALTER
1.	Add - alter table emp add (column_name  data_type)
2.	Modify - alter table emp modify (sal number(12))
3.	Delete – alter table emp  drop column column_name

Dropping Constraints – 
               Alter table emp  drop constraint doj
Adding Constraints – 
               Alter table emp  add constraint emp_id_pk primary key(emp_id)

Change data type of a column
alter table customer
alter column phonenumber varchar(10)
Backup - create table emp as select * from employee  
Alter – 
1.	Add - alter table emp add (dor  date)
2.	Modify - alter table emp modify (sal number(12))
3.	Delete – alter table emp  drop column dor

## DROP
Drop – drop table emp1 (all row + schema)


## TRUNCATE

Rename – rename  emp to emp1 


Truncate – truncate table employee (all record without schema)

Create - 
create table employee(emp_id varchar(10), emp_name varchar(10),  sal number(10), phn_no varchar(10),doj date);





 






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
