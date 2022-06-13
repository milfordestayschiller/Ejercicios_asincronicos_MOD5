create table usuario (
id int,
email varchar(40),
primary key(id)
);

create table post(
id int,
usuario_id int,
titulo varchar(100),
fecha varchar(30),
primary key(id),
foreign key (usuario_id) references usuario(id)
);

create table comentario(
id int,
usuario_id int,
post_id int,
texto varchar(30),
fecha varchar(30),
primary key (id),
foreign key (usuario_id) references usuario(id),
foreign key(post_id) references post(id)
);

--Seleccionar el correo, id y título de todos los post publicados por el usuario 5.--

select * from usuario 
join post
on usuario.id = post.usuario_id
where usuario.id=5
-- Listar el correo, id y el detalle de todos los comentarios que no hayan sido realizados por el usuario con email usuario06@hotmail.com.--

select * from usuario 
join comentario
on usuario.id = comentario.usuario_id
where usuario.id !=6

--Listar los usuarios que no han publicado ningún post--

select * from usuario 
join post
on usuario.id = post.usuario_id
where usuario_id !=3

--Listar todos los post con sus comentarios (incluyendo aquellos que no poseen comentarios --

select * from post 
full join comentario
on post.usuario_id = comentario.usuario_id

-- Listar todos los usuarios que hayan publicado un post en Junio --

select * from usuario
join post 
on usuario.id = post.usuario_id
where fecha like '%06%'


drop table usuario;
drop table post;
drop table comentario;

insert into usuario(id,email)
VALUES(1,'usuario01@hotmail.com');

insert into usuario(id,email)
VALUES(2,'usuario02@gmail.com');

insert into usuario(id,email)
VALUES(3,'usuario03@gmail.com');

insert into usuario(id,email)
VALUES(4,'usuario04@hotmail.com');

insert into usuario(id,email)
VALUES(5,'usuario05@yahoo.com');

insert into usuario(id,email)
VALUES(6,'usuario06@hotmail.com');

insert into usuario(id,email)
VALUES(7,'usuario07@yahoo.com');

insert into usuario(id,email)
VALUES(8,'usuario08@yahoo.com');

insert into usuario(id,email)
VALUES(9,'usuario09@yahoo.com');

-- INSERTS DE TABLA POST ---

insert into post(id,usuario_id,titulo,fecha)
values(1,1, 'Post 1: Esto es malo' , '2020-06-29');

insert into post(id,usuario_id,titulo,fecha)
values(2,5, 'Post 2: Esto es malo' , '2020-06-20');

insert into post(id,usuario_id,titulo,fecha)
values(3,1, 'Post 3: Esto es excelente' , '2020-05-30');

insert into post(id,usuario_id,titulo,fecha)
values(4,9, 'Post 4: Esto es bueno' , '2020-05-09');

insert into post(id,usuario_id,titulo,fecha)
values(5,7, 'Post 5: Esto es bueno' , '2020-07-10');

insert into post(id,usuario_id,titulo,fecha)
values(6,5, 'Post 6: Esto es excelente' , '2020-07-18');

insert into post(id,usuario_id,titulo,fecha)
values(7,8, 'Post 7: Esto es excelente' , '2020-07-07');

insert into post(id,usuario_id,titulo,fecha)
values(8,5, 'Post 8: Esto es excelente' , '2020-05-14');

insert into post(id,usuario_id,titulo,fecha)
values(9,2, 'Post 9: Esto es bueno' , '2020-05-08');

insert into post(id,usuario_id,titulo,fecha)
values(10,6, 'Post 10: Esto es bueno' , '2020-06-02');

insert into post(id,usuario_id,titulo,fecha)
values(11,4, 'Post 11: Esto es bueno' , '2020-05-05');

insert into post(id,usuario_id,titulo,fecha)
values(12,9, 'Post 12: Esto es malo' , '2020-07-23');

insert into post(id,usuario_id,titulo,fecha)
values(13,5, 'Post 13: Esto es excelente' , '2020-05-30');

insert into post(id,usuario_id,titulo,fecha)
values(14,8, 'Post 14: Esto es excelente' , '2020-05-01');

insert into post(id,usuario_id,titulo,fecha)
values(15,7, 'Post 15: Esto es malo' , '2020-06-17');

-- INSERTS TABLA COMENTARIOS --

insert into comentario(id,usuario_id,post_id,texto,fecha)
values(1,3,6,'Este es el comentario 1', '2020-07-08');

insert into comentario(id,usuario_id,post_id,texto,fecha)
values(2,4,2,'Este es el comentario 2', '2020-06-07');

insert into comentario(id,usuario_id,post_id,texto,fecha)
values(3,6,4,'Este es el comentario 3', '2020-06-16');

insert into comentario(id,usuario_id,post_id,texto,fecha)
values(4,2,13,'Este es el comentario 4', '2020-07-08');

insert into comentario(id,usuario_id,post_id,texto,fecha)
values(5,6,6,'Este es el comentario 5', '2020-05-14');

insert into comentario(id,usuario_id,post_id,texto,fecha)
values(6,3,3,'Este es el comentario 6', '2020-07-08');

insert into comentario(id,usuario_id,post_id,texto,fecha)
values(7,6,1,'Este es el comentario 7', '2020-05-22');

insert into comentario(id,usuario_id,post_id,texto,fecha)
values(8,6,7,'Este es el comentario 8', '2020-07-09');

insert into comentario(id,usuario_id,post_id,texto,fecha)
values(9,8,13,'Este es el comentario 9', '2020-06-30');

insert into comentario(id,usuario_id,post_id,texto,fecha)
values(10,8,6,'Este es el comentario 10', '2020-06-19');

insert into comentario(id,usuario_id,post_id,texto,fecha)
values(11,5,1,'Este es el comentario 11', '2020-05-09');

insert into comentario(id,usuario_id,post_id,texto,fecha)
values(12,8,15,'Este es el comentario 12', '2020-06-17');

insert into comentario(id,usuario_id,post_id,texto,fecha)
values(13,1,9,'Este es el comentario 13', '2020-05-01');

insert into comentario(id,usuario_id,post_id,texto,fecha)
values(14,3,6,'Este es el comentario 14', '2020-07-08');

insert into comentario(id,usuario_id,post_id,texto,fecha)
values(15,4,3,'Este es el comentario 15', '2020-06-28');











