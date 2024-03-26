create database Hospital_management_sys;
use Hospital_management_sys;
create table Patient(p_id int primary key, name varchar(20),age int, dob date, gender varchar(5),weight float);
show databases;
desc Patient;
alter table Patient modify name varchar(20) not null;
alter table Patient modify age int not null;
select * from Patient;
show tables;

insert into Patient values(1,'swara das', 19,'2004-12-24', 'f', 43),(2,'pruthika wankar',20,'2003-12-21','f', 45),(3, 'emily jones', 24,'2001-11-20','f',50),(4,'chris davis',25,'1990-02-25','m',61),(5, 'john williams', 30,'1995-06-18','m' ,72);

create table staff(e_id int primary key,e_name varchar(50), e_type varchar(50),gender varchar(10),position varchar(50),salary float,city varchar(40),state varchar(40));
alter table staff modify e_name varchar(50) not null;
select * from staff;

insert into staff values(101,'hinda lee','doctor','f','MD', 40000, 'mumbai','maharashtra'),(102,'nina davis','nurse','f','head nurse', 21000, 'mumbai','maharashtra'),(103,'vikram raut','doctor','m','MD', 620000, 'mumbai','maharashtra'),(104,'arul shetty','doctor','m','m', 120000, 'mumbai','maharashtra'),(105,'parnika shetty','nurse','f','Nurse Practitioner', 5000, 'mumbai','maharashtra');
drop table staff;
create table staff(e_id int primary key,e_name varchar(50), e_type varchar(50),gender varchar(10),position varchar(50),salary float,city varchar(40),state varchar(40));

insert into staff values(101,'hinda lee','doctor','f','MD', 40000, 'mumbai','maharashtra'),(102,'nina davis','nurse','f','head nurse', 21000, 'mumbai','maharashtra'),(103,'vikram raut','doctor','m','MD', 620000, 'mumbai','maharashtra'),(104,'arul shetty','doctor','m','Neurologist', 120000, 'mumbai','maharashtra'),(105,'parnika shetty','nurse','f','Nurse Practitioner', 5000, 'mumbai','maharashtra');

create table doctor(d_id int primary key not null,e_id int, foreign key(e_id) references staff(e_id));
select * from doctor;

insert into doctor values(01,103),(02,101),(03,104);

select * from staff inner join doctor on staff.e_id = doctor.e_id;

create table nurse(n_id int primary key ,p_id int, foreign key(p_id) references Patient(p_id), e_id int, foreign key(e_id) references staff(e_id));
select * from nurse;

insert into nurse values(001,3,102),(002,1,105),(003,2,105),(004,5,102),(005,4,102);

select count(e_id), e_type from staff group by e_type;
select count(p_id), name from patient group by name;
select count(r_id),r_type from room group by r_type;
select count(e_id),position from staff where gender in('m')group by position;
select patient.name, appoinment.time, appoinment.date from patient natural join appoinment;
select * from patient natural join doctor;
select * from staff natural join doctor;
select * from patient natural join nurse;
select * from patient natural join room;
show tables;
create table appoinment(a_id int primary key , date date, time time, d_id int ,foreign key(d_id) references doctor(d_id), p_id int , foreign key(p_id) references patient(p_id));
select * from appoinment;

insert into appoinment values(0001, '2024-03-23','1:00',1,1),(0002, '2024-03-23','1:10', 2, 2),(0003,'2024-03-23','1:20', 3, 4),(0004,'2024-03-23','2:40', 2, 3),(0005,'2024-03-23','2:15',1, 5);

create table room(r_id int not null ,r_type varchar(20),r_cost float, p_id int, foreign key(p_id) references patient(p_id));
select * from room;

insert into room values(111, 'general room',500.00,5),(112,'icu room',1300.00,4),(113,'private room', 2500.00, 3),(114, 'general room', 500.00,2),(115, 'private room', 2500.00,1);

create table bill(b_id int primary key , r_cost float, medicines_cost float, total_amt float, remaining_amt float, p_id int, foreign key(p_id) references patient(p_id));
select * from bill;

insert into bill values(101, 500, 100, 600, 500,5),(102, 1300, 500,1800, 1200,4),(103, 2500, 1000, 3500, null,3),(104,500,200,700, 50,2),(105, 2500, 2000, 4500, null,1);

create table pharmacy(ph_id int primary key, medicines_cost float, p_id int, foreign key(p_id) references patient(p_id),b_id int, foreign key(b_id) references bill(b_id));
select * from pharmacy;

insert into pharmacy values(1, 2000, 1,105),(2, 200, 2,104),(3, 1000, 3,103),(4, 500, 4,102),(5, 100, 5,101);
select * from pharmacy natural join bill;
select * from patient natural join bill;
select* from nurse natural join pharmacy;
select count(b_id),total_amt from bill group by total_amt;
select * from bill where b_id is not null;
select * from doctor where d_id = 1;
select remaining_amt from bill where b_id not in (p_id);
select * from bill where remaining_amt is not null;
select * from bill where remaining_amt is  null;
select * from patient.name, room.r_type from room inner join to patient on patient.p_id = room.r_id;
select * from room inner join patient on patient.p_id= room.r_id;
select patient.name , room.r_type from patient natural join room;
select * from staff where e_id  not in (101, 104,105);
select * from staff where e_name not in('hinda','arul','parnika');