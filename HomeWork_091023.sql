use hr;
create table Users1(
user_id integer primary key auto_increment,
user_name varchar(50) not null,
email varchar(100) unique,
age integer check(age between 0 and 140),
gender varchar(1) check(gender in ('m','f'))
);

insert into Users1(user_name, email, age, gender)
values('John Doe', 'johndoe@example.com', 30, 'm');

insert into Users1(user_name, email, age, gender)
values('Jane Smith', 'janesmith@example.com', 25, 'f'); 

select * from Users1