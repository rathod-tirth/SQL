-- Joins

use School;

create table marksheet(
roll int primary key,
math int,
sci int,
total int);

insert into marksheet values
(11,89,90,179),
(1,98,97,195),
(2,95,96,191),
(3,97,98,195);

select * from student inner join marksheet on student.id=marksheet.roll;

-- inner join
select s.id,m.roll,s.name,s.class,m.total from student as s inner join marksheet as m on s.id=m.roll;

-- left join
select s.id,m.roll,s.name,s.class,m.total from student as s left join marksheet as m on s.id=m.roll;

-- right join
select s.id,m.roll,s.name,s.class,m.total from student as s right join marksheet as m on s.id=m.roll;

-- full outer join
select s.id,m.roll,s.name,s.class,m.total from student as s right join marksheet as m on s.id=m.roll
union
select s.id,m.roll,s.name,s.class,m.total from student as s left join marksheet as m on s.id=m.roll;

select * from student;