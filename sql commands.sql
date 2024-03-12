create database pruthifs;
show databases;
use pruthifs;
create table first(
id int primary key,
name varchar(20) unique key,
age int null,
city varchar(20) null
);
show tables;
desc first;
alter table first modify name varchar(20);
desc first;