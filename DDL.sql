-- comment line
/*
	multiline comment
*/

-- DDL commands: create alter drop truncate

-- create --
create database school;
-- creating a new database

use school;
-- using the database;

create table student(
id int primary key,
name text not null,
address varchar(100),
phone int unique
);
-- creating a new table

-- alter -- 
alter table student
add class varchar(2);
-- added new column

alter table student
modify class varchar(2) not null;
-- modify column

alter table student
drop class;
-- delete column

-- drop --
drop table student;
