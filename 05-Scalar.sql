-- Scalar Functions

use School;

-- scalar
select name, lcase(name) as lower_case
from student;

select name, ucase(name) as upper_case
from student;

select name, mid(name,1,3) as mid_case
from student;

select name, length(name) as length
from student;

select round(marks)
from student;

select now()
from student;