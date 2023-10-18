-- DQL - Data Query Language
-- DQL commands: select

use school;
select name from student;

-- where
select name from student
where id=1;

-- arithmetic
select marks+100 from student;
select marks/100*100 from student;

select marks/100*100 from student
where name="Tirth";

-- comparison
select * from student
where address="odhav";

select * from student
where address!="odhav";

select * from student
where marks>=90;

-- logical
select * from student
where marks > all(select marks from student where id=7);

select * from student
where address="Maninagar" and class="XI";

select * from student
where marks=90 or class="XI"; 

select * from student
where marks between 60 and 80;

select * from student
where id in(1,2,3,4);

select * from student
where id not in(1,2,3,4);

select * from student
where not marks="90";

select * from student
where name like "t%";

select * from student
where name like "%h";

select * from student
where name like "%i%";
