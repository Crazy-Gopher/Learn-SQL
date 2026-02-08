## Constraints – 
1.	Check -
2.	Not Null –   doj date not null
3.	Primary Key - emp_id number(5)primary key
4.	Unique Key - email varchar(30) unique
5.	Foreign Key - dept_id varchar(10) references department (dept_id), can be duplicate and null
6.	Default - DEFAULT 'Sandnes'
7.  AutoIncreament - Identity

Composite Key – 

 PRIMARY KEY(userid, sid, event_date, s_kwcid)
 USING btree (userid, event_date, s_kwcid);


Composite Key – 
                Create table emp(
                 Emp_id varchar(10),
                 D_O_J date constraint doj not null,
                 Email varchar(30),
                 Dep_id  varchar(10),
                 Constraint emp_ck primary key(emp_id,email)
                 )