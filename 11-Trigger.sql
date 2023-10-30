-- Trigger

use school;

-- before
create trigger sum
before insert
on marksheet
for each row
set new.total = new.sci + new.math;

insert into marksheet (roll, math, sci) values
(4, 70, 75);

select * from marksheet;

create table marksheet1(
roll int primary key,
total int
);

-- after
create trigger copy_msheet
after insert 
on marksheet
for each row
insert into marksheet1 values(new.roll, new.total);

insert into marksheet (roll, math, sci) values
(5, 96, 86);

select * from marksheet;
select * from marksheet1;