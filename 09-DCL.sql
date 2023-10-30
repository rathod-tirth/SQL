-- DCL: Data Control Language
-- DCL commands: grant, revoke

use school;

-- creating a user
create user admin_1 identified by "123";

grant insert,update,delete on school.student to admin_1;

show grants for admin_1;

revoke delete on school.student from admin_1;
