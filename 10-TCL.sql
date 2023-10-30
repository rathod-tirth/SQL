-- TCL - Transaction Control Language
-- TCL commands: commit rollback savepoint

use school;

-- to turn off auto commit
set autocommit=0;

create table teacher(
id int primary key,
name text not null,
age int check(age>18),
salary int default 0
);

drop table teacher;

insert into teacher values
(1,"abc",20,10000);
commit;

insert into teacher values
(2,"xyz",32,20000);
rollback;

insert into teacher values
(3,"pqr",30,15000);
savepoint A;

insert into teacher values
(4,"mno",30,15000);
savepoint B;

rollback to A;

select * from teacher; 