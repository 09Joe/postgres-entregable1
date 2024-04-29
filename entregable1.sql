--===Entregable =====

create table users (
  id serial primary key,
  first_name varchar(20),
  last_name varchar(20),
  email varchar(20)
);

create table post (
  id serial primary key,
  creator_id int references users(id),
  title varchar(30),
  text varchar(30)
);

create table likes (
  id serial PRIMARY KEY,
  user_id int,
  post_id int
);

select * from users;

insert into users (first_name, last_name, email) values
('Antonio','Tapia','Anton@mail.com'),--1
('Marie','Jimenez','Jime@mail.com'),--2
('Joe','Santagadea','Joel@mail.com');--3


insert into post (creator_id, title, text) values
('1','intro', 'Lorem ipsum'),--1
('1', 'argumento','dolor sit'),--1
('2', 'acto','amet'),--2
('3', 'escena','Sed sempe'),--3
('3', 'final','purus vitae');--3

select * from post;

insert into likes (user_id, post_id) values
('1', '1'),
('1', '1'),
('2', '2'),
('3', '3'),
('3', '3');

select * from likes;

-- inner join POST -> USER --

select * from post inner join users
on post.creator_id = users.id;

-- inner join POST -> likes --

select * from post inner join likes
on post.creator_id = likes.id;





