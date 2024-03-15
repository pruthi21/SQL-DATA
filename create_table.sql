create table abc(id int primary key auto_increment, dob date not null, age int check(age>=18));
insert into abc values(1,'2024-03-14',18);
select * from abc;
select id,date_format(dob,'%W,%D,%M,%Y') as DOB, age from abc;
select * from abc;
insert into abc values ('3','2024-04-15',19),(4,'2024-05-14',20),(5,'2024-06-14',19);
