create table post (
    id int,
	nombre_de_usuario varchar(25),
	fecha_de_creacion varchar(25),
	contenido varchar (250),
	descripcion varchar(150),
	titulo varchar(15),
	
	primary key (id)
) 

insert into post (id, nombre_de_usuario, fecha_de_creacion,  contenido, descripcion, titulo)
values(1,'Pamela', '03-02-2022', 'Hola como creo una tabla?', 'creacion de tablas','Tablas SQL')

insert into post (id,nombre_de_usuario, fecha_de_creacion,  contenido, descripcion,titulo)
values(2, 'Pamela', '06-05-2022', 'Hola como creo una base de datos?', 'creacion de base de datos','Base de Datos')

insert into post (id,nombre_de_usuario, fecha_de_creacion,  contenido, descripcion,titulo)
values(3, 'Carlos', '03-06-2022', 'Hola como creo un servidor sql?', 'creacion de servidor sql','Servidor SQL')

insert into post (id,nombre_de_usuario, fecha_de_creacion,  contenido, descripcion,titulo)
values(4, 'Pedro', '03-07-2022', 'Que es PgAdmin?', 'Consultas','PgAdmin')

insert into post (id,nombre_de_usuario, fecha_de_creacion,  contenido, descripcion,titulo)
values(5, 'Pedro', '03-02-2022', 'Que es DBeaver?', 'Consultas','DBeaver')

insert into post (id,nombre_de_usuario, fecha_de_creacion,  contenido, descripcion,titulo)
values(6, 'Carlos', '03-06-2022', 'Me eliminaron?', 'usuario eliminado','Eliminado')

insert into post (id,nombre_de_usuario, fecha_de_creacion,  contenido, descripcion,titulo)
values(7, 'Margarita', '02-06-2022', 'Hola soy nueva', 'usuario nuevo','Nueva')


select * from post

DELETE FROM post where id=3

drop table post
drop table comentarios

create table comentarios (
    id_comentarios int,
	fecha_comentarios varchar(20),
	contenido_comentarios varchar(30),
	foreign key (id_comentarios) references post(id)
) 

INSERT INTO comentarios (id_comentarios,fecha_comentarios,contenido_comentarios)
VALUES(1, '01-01-2022','Estudiar SQL')

INSERT INTO comentarios(id_comentarios,fecha_comentarios,contenido_comentarios)
VALUES(2, '01-01-2022','Estudiar BD')

INSERT INTO comentarios(id_comentarios,fecha_comentarios,contenido_comentarios)
VALUES(7, '01-01-2022','Estudiar PLataforma')

INSERT INTO comentarios(id_comentarios,fecha_comentarios,contenido_comentarios)
VALUES(7, '01-01-2022','Estudiar SQL')

INSERT INTO comentarios(id_comentarios,fecha_comentarios,contenido_comentarios)
VALUES(7, '01-01-2022','Estudiar PgAdmin')

INSERT INTO comentarios(id_comentarios,fecha_comentarios,contenido_comentarios)
VALUES(7, '01-01-2022','Estudiar Programacion')

INSERT INTO comentarios(id_comentarios,fecha_comentarios,contenido_comentarios)
VALUES(7, '01-01-2022','Estudiar Todo')

select * from comentarios

select * from post
JOIN comentarios
on post.id = comentarios.id_comentarios





