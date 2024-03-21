create table user(uid int primary key auto_increment,uname varchar(20));

create table order21(oid int primary key ,product_name varchar(20),uid int,foreign key(uid)references user(uid));
desc order21;
select * from user;
insert into user values(1,'abc');
insert into order21 values(1,'bread',1);
insert into order21 values(2,'milk',1),(3,'bread',2),(4,'nachos',3);
select * from order21;
insert into user values(2,'pru'),(3,'jazz');
select user.uname, order21.product_name from order21 inner join user on user.uid = order21.uid;
select * from order21 inner join user on user.uid= order21.uid;


select * from order21 where uid is null;
select * from order21 where uid is not null;
select id, department, marks, student_name,
case
when marks>=35 and marks<=60 then 'Third class'
when marks>=60 and marks<=80 then 'second class'
when marks>=80 and marks<=100 then 'first class'
end as result from student_data;

create table clg(c_id int primary key, cname varchar(100), location varchar(40));
create table student(s_id int primary key , sname varchar(100),s_age int , scity varchar(40),c_id int, foreign key(c_id) references clg(c_id));
insert into clg values(1,'City premier','airoli'),(2,'gargi college', 'dadar'),(3,'ict college', 'vashi'),(4,'gargi college', 'dadar'),(5,'city premier college', 'airoli');
insert into student values(1,'Shivam', 25, 'navi mumbai', 3),(2, 'Namita', 22, 'mumbai',2),(3,'Parnika',19, 'mumbai',1),(4,'Shruti',24, 'navi mumbai',3),(5,'Ayush',20, 'mumbai',3),(6,'Manasi',21,'mumbai',null),(7,'Swara',22,'navi mumbai', 5),(8,'Sachin',22,'mumbai',4),(9,'samiksha',23,'mumbai',2),(10,'kewal',22, 'mumbai',2);
select * from student;
select * from clg;
select * from student inner join clg on student.c_id = clg.c_id;
select student.sname, student.scity as student_address, clg.cname as college_name, clg.location as college_address from clg inner join student on student.c_id = clg.c_id;
select * from student natural join clg;
show tables;
use pruthifs;
select * from clg left join student on student.c_id = clg.c_id;
select * from student left join clg on student.c_id = clg.c_id;
select * from clg right join student on student.c_id = clg.c_id;
select * from student right join clg on student.c_id = clg.c_id;
select * from clg left join student on student.sname = clg.cname;
select * from clg right join student on student.s_id = clg.c_id;
select * from clg right join student on student.c_id = clg.c_id
union  
select * from clg right join student on student.c_id = clg.c_id;
select * from clg right join student on student.c_id = clg.c_id
union  all
select * from clg right join student on student.c_id = clg.c_id;
select * from employee;
show tables;
create table emp(eid int primary key, ename varchar(20), designation varchar(20), mid int);
desc emp;
insert into emp values(1,'namita', 'dev', 3),(2,'parnika','hr',1),(3,'shivam','manager',2),(4,'pruthika','ceo',null),(5,'sanjana','it',0);
select * from emp;
select e.ename as employee_name,e.designation, m.ename as manager_name , m.designation from emp as e inner join emp as m on m.eid =e.mid;
select e.ename as employee_name, e.designation, m.ename as manager_name, m.designation from emp e, emp m where e.mid =m.eid;
update emp set mid = 3 where eid=4;
select student.sname, clg.cname from student cross join clg; 
