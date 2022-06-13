create table Medicos (
id_medico int,
	nombre varchar (25),
	apellido varchar (25),
	numero_matricula int,
	especialidad varchar(30),
	primary key (id_medico)
);

create table Pacientes(
id_pacientes int,
	nombre varchar(30),
	rut varchar (12),
	telefono varchar(15)
);

drop table Medicos;
drop table Pacientes;
---- MEDICOS ---
INSERT INTO Medicos(id_medico,nombre,apellido,numero_matricula,especialidad)
VALUES(1,'Rodolfo','Suarez',33678, 'Cirujano');

INSERT INTO Medicos(id_medico,nombre,apellido,numero_matricula,especialidad)
VALUES(2,'Antonio','Velazquez',72378, 'Medico general');

INSERT INTO Medicos(id_medico,nombre,apellido,numero_matricula,especialidad)
VALUES(3,'Eduardo','Lascano',13478, 'Nutriologo');

INSERT INTO Medicos(id_medico,nombre,apellido,numero_matricula,especialidad)
VALUES(4,'Hector','Henz',43178, 'Neruologo');

INSERT INTO Medicos(id_medico,nombre,apellido,numero_matricula,especialidad)
VALUES(5,'Victor','Espudeto',83374, 'Traumatologo');

--- PACIENTES ---

INSERT INTO Pacientes(id_pacientes, nombre, rut, telefono)
VALUES(1, 'Yino', '17435789-3', '+56945722459');

INSERT INTO Pacientes(id_pacientes, nombre, rut, telefono)
VALUES(2, 'Pablo', '16435789-5', '+56945732659');

INSERT INTO Pacientes(id_pacientes, nombre, rut, telefono)
VALUES(3, 'Pedro', '13431759-5', '+56945331650');

INSERT INTO Pacientes(id_pacientes, nombre, rut, telefono)
VALUES(4, 'Juan', '5421659-1', '+56945881650');

INSERT INTO Pacientes(id_pacientes, nombre, rut, telefono)
VALUES(5, 'Ernesto', '15420659-3', '+56933781690');

INSERT INTO Pacientes(id_pacientes, nombre, rut, telefono)
VALUES(6, 'Dalas', '13420459-3', '+56943787691');

INSERT INTO Pacientes(id_pacientes, nombre, rut, telefono)
VALUES(7, 'Danilo', '18430459-1', '+56956787692');

INSERT INTO Pacientes(id_pacientes, nombre, rut, telefono)
VALUES(8, 'Valeska', '16440439-9', '+56956688691')

INSERT INTO Pacientes(id_pacientes, nombre, rut, telefono)
VALUES(9, 'Andrea', '13429439-5', '+56936678192')

INSERT INTO Pacientes(id_pacientes, nombre, rut, telefono)
VALUES(10, 'Alka', '17420434-2', '+56946668296')

select * from Medicos
select * from Pacientes



 
