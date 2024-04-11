# DDL (define database schema in DBMS)
CREATE, (TABLE, DATABASE)
ALTER, (TABLE, COLUMN, Constraints)
DROP, (COLUMN, TABLE, Constraint)
TRUNCATE (TABLE)
RENAME (COLUMN, TABLE)


# Schema


# Backup
Backup - create table emp as select * from employee 

## CREATE
Create - 
create table employee(emp_id varchar(10), emp_name varchar(10),  sal number(10), phn_no varchar(10),doj date);
CREATE TABLE

# CREATE TABLE AS
CREATE TEMP TABLE abcd AS select * from cde

### CREATE database
USE databse_name;
### CREATE table



## ALTER
1.	Add - alter table emp add (column_name  data_type)
2.	Modify - alter table emp modify (sal number(12))
3.	Drop – alter table emp  drop column column_name

Dropping Constraints – 
               Alter table emp  drop constraint doj
Adding Constraints – 
               Alter table emp  add constraint emp_id_pk primary key(emp_id)



Change data type of a column
alter table customer
alter column phonenumber varchar(10)
Backup - create table emp as select * from employee  


## DROP
Drop – drop table emp1 (all row + schema)

Dropping Constraints – 
               Alter table emp  drop constraint doj
               Alter table emp  add constraint emp_id_pk primary key(emp_id)
Adding Constraints – 
ADD COLUMN

## TRUNCATE

## RENAME

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
