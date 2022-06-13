CREATE TABLE Pokemones(
pokedex INT,
nombre VARCHAR(10),
tipo1 VARCHAR(10),
tipo2 VARCHAR(10),
PRIMARY KEY(pokedex)
);

CREATE TABLE mis_pokemones(
pokedex INT,
fecha_captura DATE,
lugar VARCHAR(20),
huevo BOOLEAN,
peso float,
estatura float,
FOREIGN KEY (pokedex) REFERENCES
pokemones(pokedex)
);

-- INSERT TABLA Pokemones --

--Listar los pokemones cuya columna pokédex sea mayor a 50--

select pokedex,nombre from Pokemones
where Pokemones.pokedex > 50

-- Listar pokemones de tipo psíquico--

(select nombre,tipo1,tipo2 from Pokemones
where Pokemones.tipo1 = 'psiquico')
UNION
(select nombre,tipo1,tipo2 from Pokemones
where Pokemones.tipo2 = 'psiquico')

-- Listar los primeros 22 registros de la tabla pokemones --

select * from Pokemones
where pokedex BETWEEN 1 AND 20;

-- Realizar una consulta a la tabla pokemones donde la columna nombre tenga un alias “pokename” y pokédex tenga el alias “nro_pokedex”. La consulta debe obtener como límite 30 registros --

select Pokemones.nombre as pokename,
Pokemones.pokedex as nro_pokedex
from Pokemones as Pokemones
limit 30

-- Realizar una consulta para saber cuántos registros se tienen en la tabla pokemones. Ocupe el comando COUNT para esto.

select COUNT(Pokemones.pokedex)
from Pokemones;

-- Realizar una consulta para saber cuántos pokemones tienen como segundo tipo, el tipo roca en la tabla pokemones

select * from Pokemones
where tipo2='roca'



INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (1,'Bulbasaur','planta','veneno');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (2,'Ivysaur','planta','veneno');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (3,'Venusaur','planta','veneno');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (4,'Charmander','fuego',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (5,'Charmeleon','fuego',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (6,'Charizard','fuego','volador');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (7,'Squirtle','agua',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (8,'Wartortle','agua',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (9,'Blastoise','agua',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (10,'Caterpie','bicho',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (11,'Metapod','bicho',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (12,'Butterfree','bicho','volador');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (13,'Weedle','bicho','veneno');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (14,'Kakuna','bicho','veneno');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (15,'Beedrill','bicho','veneno');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (16,'Pidgey','normal','volador');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (17,'Pidgeotto','normal','volador');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (18,'Pidgeot','normal','volador');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (19,'Rattata','normal',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (20,'Raticate','normal',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (21,'Spearow','normal','volador');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (22,'Fearow','normal','volador');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (23,'Ekans','veneno',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (24,'Arbok','veneno',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (25,'Pikachu','electrico',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (26,'Raichu','electrico',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (27,'Sandshrew','tierra',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (28,'Sandslash','tierra',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (29,'Nidoran','veneno',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (30,'Nidorina','veneno',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (31,'Nidoqueen','veneno','tierra');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (32,'Nidoran','veneno',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (33,'Nidorino','veneno',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (34,'Nidoking','veneno','tierra');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (35,'Clefairy','hada',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (36,'Clefable','hada',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (37,'Vulpix','fuego',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (38,'Ninetales','fuego',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (39,'Jigglypuff','normal','hada');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (40,'Wigglytuff','normal','hada');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (41,'Zubat','veneno','volador');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (42,'Golbat','veneno','volador');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (43,'Oddish','planta','veneno');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (44,'Gloom','planta','veneno');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (45,'Vileplume','planta','veneno');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (46,'Paras','bicho','planta');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (47,'Parasect','bicho','planta');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (48,'Venonat','bicho','veneno');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (49,'Venomoth','bicho','veneno');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (50,'Diglett','tierra',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (51,'Dugtrio','tierra',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (52,'Meowth','normal',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (53,'Persian','normal',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (54,'Psyduck','agua',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (55,'Golduck','agua',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (56,'Mankey','lucha',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (57,'Primeape','lucha',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (58,'Growlithe','fuego',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (59,'Arcanine','fuego',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (60,'Poliwag','agua',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (61,'Poliwhirl','agua',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (62,'Poliwrath','agua','lucha');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (63,'Abra','psiquico',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (64,'Kadabra','psiquico',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (65,'Alakazam','psiquico',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (66,'Machop','lucha',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (67,'Machoke','lucha',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (68,'Machamp','lucha',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (69,'Bellsprout','planta','veneno');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (70,'Weepinbell','planta','veneno');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (71,'Victreebel','planta','veneno');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (72,'Tentacool','agua','veneno');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (73,'Tentacruel','agua','veneno');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (74,'Geodude','roca','tierra');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (75,'Graveler','roca','tierra');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (76,'Golem','roca','tierra');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (77,'Ponyta','fuego',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (78,'Rapidash','fuego',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (79,'Slowpoke','agua','psiquico');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (80,'Slowbro','agua','psiquico');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (81,'Magnemite','electrico','acero');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (82,'Magneton','electrico','acero');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (83,'Farfetchd','normal','volador');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (84,'Doduo','normal','volador');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (85,'Dodrio','normal','volador');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (86,'Seel','agua',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (87,'Dewgong','agua','hielo');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (88,'Grimer','veneno',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (89,'Muk','veneno',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (90,'Shellder','agua',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (91,'Cloyster','agua','hielo');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (92,'Gastly','fantasma','veneno');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (93,'Haunter','fantasma','veneno');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (94,'Gengar','fantasma','veneno');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (95,'Onix','roca','tierra');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (96,'Drowzee','psiquico',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (97,'Hypno','psiquico',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (98,'Krabby','agua',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (99,'Kingler','agua',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (100,'Voltorb','electrico',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (101,'Electrode','electrico',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (102,'Exeggcute','planta','psiquico');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (103,'Exeggutor','planta','psiquico');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (104,'Cubone','tierra',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (105,'Marowak','tierra',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (106,'Hitmonlee','lucha',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (107,'Hitmonchan','lucha',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (108,'Lickitung','normal',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (109,'Koffing','veneno',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (110,'Weezing','veneno',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (111,'Rhyhorn','tierra','roca');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (112,'Rhydon','tierra','roca');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (113,'Chansey','normal',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (114,'Tangela','planta',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (115,'Kangaskhan','normal',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (116,'Horsea','agua',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (117,'Seadra','agua',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (118,'Goldeen','agua',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (119,'Seaking','agua',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (120,'Staryu','agua',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (121,'Starmie','agua','psiquico');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (122,'Mr. Mime','psiquico','hada');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (123,'Scyther','bicho','volador');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (124,'Jynx','hielo','psiquico');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (125,'Electabuzz','electrico',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (126,'Magmar','fuego',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (127,'Pinsir','bicho',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (128,'Tauros','normal',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (129,'Magikarp','agua',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (130,'Gyarados','agua','volador');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (131,'Lapras','agua','hielo');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (132,'Ditto','normal',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (133,'Eevee','normal',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (134,'Vaporeon','agua',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (135,'Jolteon','electrico',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (136,'Flareon','fuego',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (137,'Porygon','normal',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (138,'Omanyte','roca','agua');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (139,'Omastar','roca','agua');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (140,'Kabuto','roca','agua');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (141,'Kabutops','roca','agua');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (142,'Aerodactyl','roca','volador');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (143,'Snorlax','normal',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (144,'Articuno','hielo','volador');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (145,'Zapdos','electrico','volador');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (146,'Moltres','fuego','volador');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (147,'Dratini','dragon',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (148,'Dragonair','dragon',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (149,'Dragonite','dragon','volador');
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (150,'Mewtwo','psiquico',NULL);
INSERT INTO Pokemones(pokedex,nombre,tipo1,tipo2) VALUES (151,'Mew','psiquico',NULL);

-- INSERT TABLA MIS_POKEMONES --

INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (1,'2019-01-31','Independencia','false',20.9,0.5);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (1,'2019-01-30','Estación Central','false',28.3,0.8);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (2,'2019-02-01','Independencia','false',52.7,1.3);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (3,'2019-03-01','Independencia','false',105.8,2.0);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (3,'2019-01-29','Macul','false',100.5,2.1);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (4,'2019-02-01','Independencia','false',22.9,0.6);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (4,'2019-01-27','Independencia','false',31.7,0.7);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (5,'2019-02-03','La Reina','false',60.1,1.2);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (5,'2019-02-03','Pedro Aguirre Cerda','false',80.9,1.5);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (6,'2019-01-27','Independencia','false',120.9,1.8);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (6,'2019-02-08','Independencia','false',130.1,2.0);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (7,'2019-02-08','Independencia','false',30.8,0.5);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (7,'2019-01-26','Independencia','true',35.7,0.6);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (8,'2019-02-16','Cerrillos','false',40.9,1.1);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (9,'2019-02-16','Independencia','false',151.0,1.6);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (9,'2019-01-26','Independencia','false',180.9,1.8);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (10,'2019-02-13','Cerro Navia','false',10.1,0.5);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (10,'2019-01-26','Independencia','false',7.1,0.2);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (11,'2019-02-13','Santiago','true',25.9,0.7);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (11,'2019-03-01','Santiago','false',25.1,0.5);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (12,'2019-03-04','Recoleta','false',27.8,1.1);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (13,'2019-01-26','Santiago','false',5.1,0.3);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (13,'2019-03-04','La Granja','true',8.2,0.5);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (16,'2019-03-04','Santiago','false',13.1,0.3);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (16,'2019-01-01','Santiago','true',13.9,0.4);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (16,'2019-03-08','Estación Central','false',13.2,0.3);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (19,'2019-01-24','Santiago','false',10.8,0.4);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (19,'2019-03-08','Estación Central','false',9.3,0.3);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (19,'2019-03-08','Santiago','false',11.6,0.5);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (19,'2019-01-24','Independencia','true',15.7,0.8);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (19,'2019-03-14','Estación Central','false',6.6,0.3);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (20,'2019-03-14','Independencia','false',45.8,0.7);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (21,'2019-03-16','Recoleta','false',4.0,0.5);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (21,'2019-03-17','Providencia','false',10.9,0.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (22,'2019-03-18','Independencia','false',61.7,1.2);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (23,'2019-02-21','Independencia','true',34.9,2.0);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (26,'2019-02-21','Las Condes','false',41.9,0.8);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (27,'2019-02-21','Independencia','false',22.9,0.6);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (28,'2019-01-19','Estación Central','false',53.5,1.0);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (29,'2019-02-21','Estación Central','false',7.1,0.5);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (30,'2019-03-20','Providencia','false',25.9,0.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (31,'2019-01-19','Independencia','false',99.8,1.8);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (33,'2019-03-20','Santiago','true',23.0,0.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (33,'2019-03-21','Independencia','false',22.1,0.8);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (34,'2019-03-23','Las Condes','false',112.9,1.7);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (34,'2019-06-21','Las Condes','false',150.1,1.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (34,'2019-01-11','Independencia','false',88.1,1.5);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (34,'2019-06-15','Santiago','false',70.9,1.4);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (34,'2019-06-18','Independencia','false',130.1,1.8);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (35,'2019-05-31','Santiago','false',8.0,0.6);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (35,'2019-01-12','Estación Central','false',9.5,0.6);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (36,'2019-04-30','Estación Central','false',80.1,1.7);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (36,'2019-06-18','El Bosque','false',45.8,1.3);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (37,'2019-03-29','El Bosque','false',11.9,0.7);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (38,'2019-01-11','San Bernardo','false',35.8,1.8);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (40,'2019-02-28','San Bernardo','false',15.4,1.2);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (41,'2019-06-16','Maipu','false',8.9,0.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (41,'2019-06-16','Maipu','false',5.1,0.4);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (41,'2019-01-28','Las Condes','false',8.6,0.7);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (41,'2019-07-27','Las Condes','false',4.9,0.5);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (41,'2019-01-01','Independencia','false',9.1,0.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (41,'2019-06-26','Peñalolén','false',15.8,1.1);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (41,'2019-02-22','Independencia','false',4.8,0.4);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (41,'2019-02-22','Santiago','false',7.6,0.5);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (41,'2019-05-25','Santiago','false',6.3,0.6);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (44,'2019-01-09','Santiago','false',23.8,0.8);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (45,'2019-04-24','Santiago','false',20.8,1.3);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (48,'2019-06-14','Estación Central','false',33.9,1.0);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (48,'2019-03-23','Estación Central','false',29.7,0.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (48,'2019-02-22','Estación Central','true',40.1,1.3);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (49,'2019-02-23','Macul','false',14.2,1.5);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (49,'2019-06-14','Macul','false',11.9,1.1);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (50,'2019-01-25','La Granja','false',0.9,0.3);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (51,'2019-06-05','Macul','false',33.9,0.7);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (52,'2019-06-05','Macul','false',4.5,0.6);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (52,'2019-07-03','Santiago','false',7.5,0.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (52,'2019-06-02','Independencia','false',3.1,0.3);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (53,'2019-01-09','Estación Central','false',28.9,0.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (53,'2019-05-05','Estación Central','false',27.0,1.0);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (55,'2019-04-04','Estación Central','false',80.1,1.8);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (56,'2019-02-24','Independencia','false',25.0,0.6);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (57,'2019-06-21','La Reina','false',40.1,0.8);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (58,'2019-03-23','Independencia','false',26.7,0.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (58,'2019-01-06','Las Condes','true',23.5,0.8);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (58,'2019-02-23','Las Condes','false',25.0,0.7);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (60,'2019-06-01','Las Condes','false',12.7,0.6);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (60,'2019-06-23','La Florida','false',11.6,0.5);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (61,'2019-01-11','El Bosque','false',29.9,1.2);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (62,'2019-02-28','El Bosque','true',55.3,1.4);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (63,'2019-07-19','Huechuraba','false',13.4,0.7);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (63,'2019-06-01','Huechuraba','false',10.1,0.6);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (66,'2019-06-23','Huechuraba','false',20.0,0.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (66,'2019-06-28','Independencia','false',24.1,1.0);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (68,'2019-05-15','El Bosque','false',113.1,1.2);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (68,'2019-01-06','Independencia','false',120.5,1.4);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (68,'2019-04-19','Independencia','false',115.7,1.2);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (68,'2019-01-19','Santiago','false',130.4,1.6);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (70,'2019-05-02','Santiago','true',7.1,1.1);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (71,'2019-06-25','Santiago','false',20.4,1.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (71,'2019-01-10','San Bernardo','false',14.9,1.6);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (72,'2019-05-31','Estación Central','false',40.1,0.8);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (72,'2019-06-25','San Bernardo','false',32.8,0.6);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (72,'2019-06-01','Santiago','false',45.3,0.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (72,'2019-03-21','Santiago','false',42.5,0.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (73,'2019-06-01','Independencia','false',60.9,1.8);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (76,'2019-06-01','Independencia','false',305.8,1.4);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (76,'2019-06-25','Maipu','false',320.1,1.6);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (77,'2019-03-16','Maipu','false',40.1,1.1);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (78,'2019-04-30','Santiago','false',124.6,1.7);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (78,'2019-03-14','Independencia','false',140.7,1.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (78,'2019-03-07','Las Condes','false',131.4,1.8);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (79,'2019-04-29','Las Condes','false',37.1,1.2);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (79,'2019-02-13','Estación Central','false',40.8,1.3);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (80,'2019-05-29','Lo Barnechea','false',90.1,1.7);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (80,'2019-05-29','El Bosque','false',98.5,1.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (81,'2019-02-21','Lo Barnechea','false',5.9,0.4);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (81,'2019-03-22','El Bosque','false',7.1,0.6);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (81,'2019-03-22','Independencia','false',4.9,0.3);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (84,'2019-03-22','Independencia','false',40.9,1.4);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (84,'2019-07-11','El Bosque','false',35.1,1.3);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (85,'2019-04-28','San Miguel','false',85.8,1.8);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (85,'2019-07-18','Macul','false',99.9,2.0);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (86,'2019-05-26','Independencia','false',89.1,1.2);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (87,'2019-07-25','Macul','false',140.1,1.8);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (88,'2019-04-28','Estación Central','false',31.9,0.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (89,'2019-07-28','San Bernardo','false',40.5,1.3);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (90,'2019-05-23','Huechuraba','false',6.1,0.3);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (90,'2019-07-30','Macul','false',7.9,0.4);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (90,'2019-05-23','Estación Central','false',18.7,1.0);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (92,'2019-07-31','Santiago','false',0.1,1.3);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (92,'2019-06-28','Santiago','false',0.2,1.4);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (92,'2019-07-11','Quilicura','false',0.1,1.3);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (93,'2019-05-21','Santiago','true',0.1,1.6);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (94,'2019-07-12','Santiago','false',38.9,1.7);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (95,'2019-06-29','Santiago','false',240.8,8.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (96,'2019-07-26','Estación Central','false',45.9,1.3);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (97,'2019-03-22','Estación Central','false',80.4,1.7);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (97,'2019-03-22','La Cisterna','false',75.5,1.6);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (97,'2019-07-26','Estación Central','false',71.9,1.4);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (99,'2019-04-26','Estación Central','false',98.5,2.1);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (99,'2019-04-26','Independencia','true',101.1,2.2);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (100,'2019-07-24','Santiago','false',9.1,0.6);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (100,'2019-06-30','Maipu','false',9.5,0.6);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (101,'2019-04-26','Maipu','false',60.1,1.0);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (101,'2019-07-22','Peñalolén','false',66.9,1.2);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (102,'2019-05-18','Macul','false',1.9,0.2);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (103,'2019-07-21','Macul','false',125.9,2.1);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (103,'2019-07-19','Macul','false',120.8,2.0);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (103,'2019-04-22','Independencia','false',117.6,1.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (105,'2019-04-22','Santiago','false',44.9,0.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (105,'2019-06-30','Estación Central','false',41.7,0.8);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (105,'2019-07-19','Estación Central','false',50.8,1.1);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (105,'2019-03-27','Estación Central','true',45.1,1.0);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (109,'2019-03-27','El Bosque','false',2.1,1.2);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (111,'2019-07-17','El Bosque','false',102.6,0.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (112,'2019-05-17','Lo Barnechea','false',130.9,2.0);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (112,'2019-06-30','Lo Barnechea','false',145.7,2.1);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (113,'2019-04-20','Independencia','false',38.8,1.0);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (114,'2019-04-19','Santiago','false',29.8,0.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (114,'2019-07-17','San Bernardo','false',35.0,1.1);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (116,'2019-05-14','San Bernardo','false',8.9,0.5);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (117,'2019-07-12','Providencia','false',40.2,1.8);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (119,'2019-07-12','Providencia','false',45.8,1.5);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (119,'2019-03-29','Providencia','false',41.7,1.2);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (121,'2019-07-09','Recoleta','false',87.9,1.1);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (121,'2019-03-29','Providencia','false',79.8,1.0);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (121,'2019-07-09','Providencia','false',80.1,1.0);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (121,'2019-03-31','Vitacura','false',82.5,1.2);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (123,'2019-03-31','Providencia','false',55.8,1.5);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (123,'2019-04-16','Providencia','false',52.0,1.4);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (123,'2019-07-06','Vitacura','false',53.3,1.2);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (123,'2019-07-06','Quinta Normal','false',51.9,1.5);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (125,'2019-01-04','Vitacura','false',45.1,1.5);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (125,'2019-07-21','Vitacura','false',40.2,1.3);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (126,'2019-04-16','Vitacura','false',50.1,1.3);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (127,'2019-05-12','Vitacura','false',62.6,1.7);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (127,'2019-01-04','Santiago','false',66.8,1.8);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (127,'2019-05-12','Santiago','false',56.7,1.2);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (127,'2019-04-16','Quinta Normal','false',52.8,1.1);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (131,'2019-04-13','Santiago','false',252.8,2.8);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (134,'2019-04-10','Santiago','false',24.7,1.0);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (135,'2019-05-09','Independencia','false',22.9,1.1);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (136,'2019-04-10','Santiago','false',24.4,1.0);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (137,'2019-01-03','Macul','false',36.5,0.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (138,'2019-03-31','Santiago','false',7.5,0.4);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (138,'2019-03-31','Independencia','false',8.9,0.5);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (138,'2019-05-09','Macul','false',15.5,1.1);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (139,'2019-04-10','Maipu','false',57.3,1.5);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (140,'2019-01-03','San Bernardo','false',15.5,0.6);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (143,'2019-05-04','Maipu','false',460.1,2.3);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (144,'2019-07-13','Independencia','false',55.4,1.7);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (145,'2019-04-06','Santiago','false',52.6,1.6);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (146,'2019-04-06','Estación Central','false',60.0,2.0);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (147,'2019-05-04','Estación Central','false',4.5,2.0);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (147,'2019-07-03','Estación Central','false',3.1,1.8);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (148,'2019-05-01','Providencia','false',18.6,4.1);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (149,'2019-07-01','El Bosque','false',288.9,2.9);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (149,'2019-04-01','Conchali','false',279.5,2.4);
INSERT INTO mis_pokemones(pokedex,fecha_captura,lugar,huevo,peso,estatura) VALUES (149,'2019-04-01','Peñalolén','false',290.1,3.0);