-- DML: Data Manipulation Language
-- DML commands: insert update delete

-- insert --
-- writing without order

use school;
insert into student values 
(1, "Tirth", "Gujarat", 9618642687, 10);

insert into student values 
(2, "Jay", "Gujarat", 9618642587, "XI");

insert into student values 
(3, "Dev55", "Guj5rat", 9618642581, "XI");

insert into student values 
(4, 99, "Gujarat", 9618642591, "XI");

insert into student values 
(5, "Shivam", "Gujarat
India", 9618632591, "XI");

insert into student values 
(6, "Gujarat", 9618642591, "XI", "Ti");

-- with order

insert into student (id, name, address, phone, class) values 
(7, "Deepak", "Gujarat", 9618642091, "X");

insert into student (id, address, phone, class, name) values 
(8, "Gujarat", 9618042091, "X", "Jainish");

insert into student (id, address, class, name) values 
(9, "Gujarat", "X", "Mukesh");

-- update --

update student
set name="Vaibhav"
where id=4;

update student
set address="Gujarat"
where address="Guj5rat";

update student
set address="Gujarat"
where address="Gujarat
India";

update student
set class="XI"
where id=1;

update student
set phone=9874135843
where id=9;

update student
set name="Dev"
where name="Dev55";

-- delete --

delete from student
where id=6;

