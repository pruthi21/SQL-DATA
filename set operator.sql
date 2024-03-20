show databases;
use pruthifs;
create table student_data(id int primary key , student_name varchar(50) , department varchar(50), marks float, paid_fees bigint, attendance int);
desc student_data;
alter table student_data modify id int auto_increment;
show tables;
insert into student_data(student_name, department, marks, paid_fees, attendance) values('rashmi' ,'fullstack',82,90000,80),('shivam' ,'datascience',81,190000,90),('manasi' ,'fullstack',81,130000,79),('namita' ,'dse',72,80000,80),('saud' ,'datascience',82,70000,71),('sana' ,'fullstack',80,100000,81);
select * from student_data;
delete from student_data where id in (10,11,12,13,14);
create table table1(id int primary key auto_increment,student_name varchar(50));
insert into table1 (student_name)values ('shivam') ,('rashmi' ), ('parnika') ,('sana') ,('namita');
select * from table2;
create table table2(id int primary key auto_increment,student_name varchar(50));
insert into table2 (student_name)values ('shivam') ,('rashmi' ), ('saud') ,('samiksha') ,('nirahi');
select * from table1 union select * from table2;
select count(id), department from student_data group by department;
update student_data set marks='90.1' where id=7;
select * from student_data;
desc table3;
select * from table3;
show tables;
select count(id),department from student_data where marks not in(81)group by department;
select count(id),department from student_data group by department;

--strings

select lower('PRUthika');
select upper('pruthiKa');
select replace('welcome to goa','goa','thane');
select concat('welcome to itvedant',' thane');
select length('my name is pruthika');
select length(trim('     pru  pru     '));
select trim('     pru  pru     ');
select substring('my name is pru',11);
select * from student_data;
select upper(student_name) from student_data;
select upper(student_name),lower(department) from student_data;
select * from student_data where student_name = 'rashmi';

--- math method

select abs(-11);
select abs(-13);
select ceil(12.3);
select ceil(12.49);
select ceil(12.0);
select ceil(12.1);
select round(12.1);
select round(12.0);
select round(12.5);
select round(12.51);
select truncate(12.1111111,2);
select mod(7,5);
select mod(5,2);
select mod(4,4);
select floor(2/4);
select floor(5/2);
select pow(2,2);
select sqrt(100);

select * from student_data;
use pruthifs;
select department, student_name, round(marks) from student_data;
select department, student_name, sqrt(marks) from student_data where id=4;
select curdate();
select now();
select last_day(curdate());
select last_day('2024-02-14');
select monthname('2003-12-21');
select date_format(curdate(), '%d-%c-%Y');
select date_format(curdate(), '%d-%c-%y');
select date_format(curdate(), '%D-%M-%Y');
SELECT date_format(curdate(), '%W-%D-%y');
select date_format(curdate(), '%a-%D-%b-%y');
select date_format(curdate(), '%D-%b-%y');

select * from employee;
insert into employee values(1,'pru','hr',190000),(2, 'jazz','it',50000);
 show databases;
 create database Car_show_room;
 use Car_show_room;
 create table inventory(car_id int primary key, store_name varchar(50), price float, model varchar(200), year_of_manufacturing int, fuel_type varchar(100));
 show databases;
 insert into inventory values (101, 'TATAMOTORS',740000,'tata',1972,'petrol'),(102,'INFINITYCARS',550000,'bmw', 1922,'disel'),(
 103,'NAVNITAMOTORS', 400000,'kia', 1993, 'petrol'),(104, 'EXCELL_AUTOVISTA',505000,'maruti', 1955, 'disel'),(105, 'KSAUTOMOTIVE',300000,'rangerover', 1991,'petrol');
select * from inventory;
create table customers(customer_id int primary key, name varchar(20), address varchar(100), phone_number int, email varchar(200));
desc customers;
alter table customers modify phone_number bigint;
select * from student_data;
delete from student_data where id in (9,15,16,17,18,19,20,21,22,23,24,25,26);