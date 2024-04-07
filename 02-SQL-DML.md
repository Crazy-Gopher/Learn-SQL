# DML (manipulate data present in the DB)
INSERT
DELETE
UPDATE

## Update
update customer set phonenumber='1234545346' where
customerid=1
update customer set phonenumber='45554654' where
customerid=2
## Update –
       1.    update    manager     set phn_no='9876543210'    where emp_id='1005'
       2.    update manager    set phn_no= (select phn_no from employee where sal=30000)
         where emp_id=(select emp_id from employee where sal=30000)
Order by – (Sorting)  select * from  employee order by doj  desc
Group by - select sum(sal) ,emp_name from employee group by emp_name
Aggrigate Function -    sum,max,min,avg,count
                                        select count(emp_id) from employee


               Alter table emp  add constraint emp_id_pk primary key(emp_id)

## Insert
1.	insert into employee(emp_id , emp_name,  sal , phn_no ,doj) values('1001','kapil',30000,'8871337193','29-nov-1993')
2.	insert into employee  values('1001','kapil',30000,'8871337193','29-nov-1993')
3.	insert into manger 
4. need to verify this
insert into customer values
(100,'Fang Ying','Sham','418999','sdadasfdfd',default),
(200,'Mei Mei','Tan',default,'adssdsadsd','Thailand'),
(300,'Albert','John',default,'dfdsfsdf',default

## Insert Into-
1.	insert into employee(emp_id , emp_name,  sal , phn_no ,doj) values('1001','kapil',30000,'8871337193','29-nov-1993')
2.	insert into employee  values('1001','kapil',30000,'8871337193','29-nov-1993')
3.	insert into manger 


# Save table to another table
select *  1 into table 2 from table

SELECT wh.event_date, kph.portfolio_id, sum(wh.cost)FROM day_click_campaign_agg whJOIN campaigns c using (user_id, campaign_id)JOIN cid_pid_history kphOn kph.event_date = wh.event_date and kph.campain_id = c.campaign_id and kph.user_id = c.user_idWHERE c.user_id = 3085AND wh.event_date >='Nov 1' and wh.event_date <= 'Nov 3'AND c.portfolio_id in ('P1', 'P2')GROUP BY wh.event_date, kph.portfolio_id


## Delete 
1. for only specific row
delete from emp1 where sal=32000 

2. for all row
delete from emp1 

Rename – rename  emp to emp1 
Delete – delete from emp1 where sal=32000 for only specific row or delete from emp1 for all row
Drop – drop table emp1 (all row + schema)
Truncate – truncate table employee (all record without schema)

# Save table to another table
--into file_name: save result in another table (BASE TABLE)
select distinct customerlastname into temp 
from customer
order by customerlastname 
select * from temp --see the table (data type will remain)