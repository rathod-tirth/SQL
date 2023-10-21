-- Aggregate Function

use School;

-- count
select count(*) from student;

select count(*) as Marks
from student
where marks=90;

--- sum
select sum(marks) from student;

select sum(marks) as Total
from student
where marks>70;

-- avg
select avg(marks) from student;

select avg(marks) as Avg
from student
where marks>70;

-- max
select max(marks) from student;

-- min
select min(marks) from student;