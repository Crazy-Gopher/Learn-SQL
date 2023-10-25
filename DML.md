# DML (manipulate data present in the DB)


## Update
update customer set phonenumber='1234545346' where
customerid=1
update customer set phonenumber='45554654' where
customerid=2


## Insert
1.	insert into employee(emp_id , emp_name,  sal , phn_no ,doj) values('1001','kapil',30000,'8871337193','29-nov-1993')
2.	insert into employee  values('1001','kapil',30000,'8871337193','29-nov-1993')
3.	insert into manger 
4. need to verify this
insert into customer values
(100,'Fang Ying','Sham','418999','sdadasfdfd',default),
(200,'Mei Mei','Tan',default,'adssdsadsd','Thailand'),
(300,'Albert','John',default,'dfdsfsdf',default


## Delete 
1. for only specific row
delete from emp1 where sal=32000 

2. for all row
delete from emp1 


# Save table to another table
--into file_name: save result in another table (BASE TABLE)
select distinct customerlastname into temp 
from customer
order by customerlastname 
select * from temp --see the table (data type will remain)