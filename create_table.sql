create table abc(id int primary key auto_increment, dob date not null, age int check(age>=18));
insert into abc values(1,'2024-03-14',18);
select * from abc;
select id,date_format(dob,'%W,%D,%M,%Y') as DOB, age from abc;
select * from abc;
insert into abc values ('3','2024-04-15',19),(4,'2024-05-14',20),(5,'2024-06-14',19);
create table stud(stu_id int, stu_name varchar(20), stu_address varchar(50), stu_phno bigint, stu_percentage float);
select * from stud;
insert into  stud values(1, 'rahul', 'agra', '9557806625', 85),(2, 'ankit', 'delhi', '8855664471', 75),(3, 'shail', 'noida', '7213457896',92);
select * from stud where stu_percentage>80;
update stud set stu_percentage =87 where stud_id=1;


select 2+4;
select 15/3;
select 15%3;

select 5>3;
select 5<3; 

select 5>3 and 4>5;
select 5>2 or 4>5;

select curdate();
select sysdate();
