-- procedure

use School;

delimiter $$
create procedure s_marks()
begin
select name,marks from student;
select math,sci,total from marksheet;
end $$

call s_marks();

drop procedure s_marks;