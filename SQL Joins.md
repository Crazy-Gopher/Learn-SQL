Joins - inner join , outer join (left ,full, right ), self join, cross join, 
Unions - Union, Union ALL, Intersect, Except

EXISTS

  Join- 
1.	Equi Join- Select  emp_id, sal       From emp, dept
                                  Where emp.dept_id = dept . dept_id(=,<,>,<=,>= etc)
2.	Natural join -    Select  emp_id,sal,dept_name
                                           From emp natural join dept
3.	Non Equi Join - Select  emp_id, sal    From emp, dept
                                           Where emp.dept_id > dept . dept_id(<,  >,  <=,  >=   etc.)

4.	Cartesion Product -    select emp_id, dept_name
                                                      from emp,dept
5.	Outer Join – 
1.	Left Outer Join - select emp_id,dept_name
                                                                  from emp e,dept d
                                                                  where e.dept_id(+)=d.dept_id
2.	Right Outer Join - select emp_id,dept_name
                                                                    from emp e right outer join dept d
                                                                    on(e.dept_id=d.dept_id)
3.	Full Outer Join -   select emp_id,dept_name
                                                                   from emp e full outer join dept d
                                                                  on(e.dept_id=d.dept_id)