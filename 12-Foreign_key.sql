-- Foreign Key

use school;

create table book_info(
book_id int primary key,
name varchar(30),
sub text
);

drop table book_info;

insert into book_info values
(234, "Prisma", "Maths"),
(487, "Apollo", "Sci"),
(902, "A Deep Div", "Sci"),
(142, "Fasination and Desire", "Philosophy");

create table book_price(
id int primary key,
book_id int,
foreign key (book_id) references book_info(book_id),
price int
);

drop table book_price;

insert into book_price values
(1732, 234, 500),
(5441, 902, 1500),
(4832, 487, 1200);

select * from book_price;
select * from book_info;
