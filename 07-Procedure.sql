-- procedure

use School;

-- no parameter --

delimiter $$
create procedure s_marks()
begin
select name, marks, class from student;
select math, sci, total from marksheet;
end $$
delimiter ;

call s_marks();

-- in parameter --

delimiter $$
create procedure s_marks1(in id int)
begin
select * from student as s
where s.id = id;
end $$
delimiter ;

call s_marks1(1);

-- out parameter --

delimiter $$
create procedure s_marks2(out total int)
begin
select marks into total from student
where id=1;
end $$
delimiter ;

call s_marks2(@T);

select @T;

-- inout parameter --

delimiter $$
create procedure s_marks3(inout var int)
begin
select marks into var from student
where id=var;
end $$
delimiter ;

set @V=1;

call s_marks3(@V);

select @V;

-- show procedure --

show procedure status 
where db="school";


-- drop procedure --

drop procedure s_marks;
