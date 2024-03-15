create table user(uid int primary key auto_increment,uname varchar(20));
create table order21(oid int primary key ,product_name varchar(20),uid int,foreign key(uid)references user(uid));
desc order21;
select * from user;
insert into user values(1,'abc');
insert into order21 values(1,'bread',1);
insert into order21 values(2,'milk',1),(3,'bread',2),(4,'nachos',3);
select * from order21;
insert into user values(2,'pru'),(3,'jazz');



