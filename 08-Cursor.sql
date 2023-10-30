-- cursor

use school;

delimiter $$
create procedure s_class()
begin

declare c_name text;
declare c_class varchar(3);
declare c_marks int;
declare is_done int default 0;
declare c_marks cursor for select name,class,marks from student;

declare continue handler for not found set is_done=1;

open c_marks;

get_data:loop

fetch c_marks into c_name, c_class, c_marks;
select c_name,c_class,c_marks;
if is_done=1
	then leave get_data;
end if;

end loop get_data;

close c_marks;
end $$
delimiter ;

call s_class;

drop procedure s_class;