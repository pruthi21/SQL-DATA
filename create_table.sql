create table abc(id int primary key, dob date not null, age int check(age>=18));
insert into abc values(1,'2024-03-14',18);
select * from abc;
select id,date_format(dob,'%W,%D,%M,%Y') as DOB, age from abc;
