INSERT INTO Jugador ('Player_ID', 'Nombre', 'Racha_V', 'Racha_D')
VALUES 
(0,	'Jesus',	24,	13),
(1,	'Virginia',	12,	16),
(2,	'Gemma',	56,	3),
(3,	'Carol',	35,	33),
(4,	'Lidia',	45,	21),
(5,	'Roman',	38,	5),
(6,	'Julio',	22,	23),
(7,	'Aaron',	34,	11);
   
INSERT INTO Fortuna ('Player_ID',	'Fecha',	'Fortuna')
VALUES 
(0,	23/01/2010,	'Suerte'),
(1,	02/03/2011,	'Muchisima suerte'),
(2,	23/01/2010,	'Mala suerte'),
(3,	24/02/2011,	'Suerte'),
(4,	25/01/2010,	'Suerte'),
(5,	26/04/2015,	'Mala suerte'),
(6,	01/05/2020,	'Mucha suerte'),
(7,	07/03/1999,	'Muy mala suerte');

INSERT INTO Habilidad ('Habilidad_ID', 'Nombre')
VALUES 
(0,	'Nada'),
(1,	'Caparazon_Verde'),
(2,	'Caparazon_Rojo'),
(3,	'Lanzar_Martillo'),
(4,	'Morder'),
(5,	'Bala_Cañon'),
(6,	'Impulso'),
(7,	'Caña_Pesca'),
(8,	'Jefe_Bowser'),
(9,	'Invencible'),
(10, 'Fuego'),
(11, 'Seta');

INSERT INTO Niveles ('Nivel',	'Mundo',	'Check_flag',	'Tiempo')
VALUES 
('1-1',	'Pradera', FALSE, 300),
('1-2',	'Pradera', FALSE, 300),
('1-3',	'Pradera', FALSE, 300),
('1-4',	'Pradera', FALSE, 300),
('2-1',	'Desierto', FALSE, 300),
('2-2',	'Desierto',	FALSE, 300),
('2-3',	'Desierto',	FALSE, 300),
('2-4',	'Desierto',	FALSE, 300),
('3-1',	'Hielo', FALSE,	300),
('3-2',	'Hielo', FALSE,	300),
('3-3',	'Hielo', FALSE,	300),
('3-4',	'Hielo', FALSE,	300),
('4-1',	'Montaña', FALSE, 300),
('4-2',	'Montaña', FALSE, 300),
('4-3',	'Montaña', FALSE, 300),
('4-4',	'Montaña', FALSE, 300),
('5-1',	'Agua',	FALSE, 300),
('5-2',	'Agua', FALSE, 300),
('5-3',	'Agua', FALSE, 300),
('5-4',	'Agua', FALSE, 300);

INSERT INTO Enemigo ('Enemy_ID', 'Nombre', 'Habilidad_ID', 'Nivel')
VALUES 
(0,	'Goomba', 0, '1-1'),
(1,	'Koopa', 1,	'1-1'),
(2,	'Paratroopa', 2, '1-2'),
(3,	'Planta_Piraña', 4,	'1-3'),
(4,	'Hermano_Martillo',	3, '1-3'),
(5,	'Bill_Bala', 5, '1-4'),
(6,	'Lakitu', 7, '2-2'),
(7,	'Blooper', 6, '2-3'),
(8,	'Bowser', 8, '2-4');




INSERT INTO Clasico ('Jugador_ID',	'Personaje',	'Nivel',	'Vidas',	'Monedas',	'PowerUP',	'Puntuacion')
VALUES 
(0,	'Mario', '1-1',	5,	0,	0,	0 ),
(1,	'Luigi', '1-1',	5,	0,	0,	0 ),
(2,	'Mario', '1-1',	5,	0,	0,	0 ),
(3,	'Luigi', '1-1',	5,	0,	0,	0 ),
(4,	'Mario', '1-1',	5,	0,	0,	0 ),
(5,	'Luigi', '1-1',	5,	0,	0,	0 ),
(6,	'Mario', '1-1',	5,	0,	0,	0 ),
(7,	'Luigi', '1-1',	5,	0,	0,	0 ),
(8, 'Mario', '1-1',	5,	0,	0,	0 ),
(9, 'Luigi', '1-1',	5,	0,	0,	0 ),
(10, 'Mario', '1-1', 5,	0,	0,	0 ),
(11, 'Luigi', '1-1', 5,	0,	0,	0 ),
(12, 'Mario', '1-1', 5,	0,	0,	0 ),
(13, 'Luigi', '1-1', 5,	0,	0,	0 ),
(14, 'Mario', '1-1', 5,	0,	0,	0 ),
(15, 'Luigi', '1-1', 5,	0,	0,	0 ),
(16, 'Mario', '1-1', 5,	0,	0,	0 ),
(17, 'Mario', '1-1', 5,	0,	0,	0 ),
(18, 'Luigi', '1-1', 5,	0,	0,	0 ),
(19, 'Mario', '1-1', 5,	0,	0,	0 );

INSERT INTO Challenge ('Player_ID',	'Nivel',	'Completado',	'Puntuacion',	'Medallas',	'Huevo',	'Record')
VALUES 
(0,	'1-1', FALSE,	0,	FALSE,	FALSE,	FALSE),
(0,	'1-2', FALSE,	0,	FALSE,	FALSE,	FALSE),
(0,	'1-3', FALSE,	0,	FALSE,	FALSE,	FALSE),
(1,	'1-1', FALSE,	0,	FALSE,	FALSE,	FALSE),
(1,	'1-2', FALSE,	0,	FALSE,	FALSE,	FALSE),
(1,	'1-3', FALSE,	0,	FALSE,	FALSE,	FALSE),
(1,	'1-4', FALSE,	0,	FALSE,	FALSE,	FALSE),
(1,	'2-1', FALSE,	0,	FALSE,	FALSE,	FALSE),
(2,	'1-1', FALSE,	0,	FALSE,	FALSE,	FALSE),
(2,	'1-2', FALSE,	0,	FALSE,	FALSE,	FALSE),
(2,	'1-3', FALSE,	0,	FALSE,	FALSE,	FALSE),
(3,	'1-1', FALSE,	0,	FALSE,	FALSE,	FALSE),
(4,	'1-1', FALSE,	0,	FALSE,	FALSE,	FALSE),
(5,	'1-1', FALSE,	0,	FALSE,	FALSE,	FALSE),
(6,	'1-1', FALSE,	0,	FALSE,	FALSE,	FALSE),
(6,	'1-2', FALSE,	0,	FALSE,	FALSE,	FALSE),
(7,	'1-1', FALSE,	0,	FALSE,	FALSE,	FALSE),
(8,	'1-1', FALSE,	0,	FALSE,	FALSE,	FALSE),
(9,	'1-1', FALSE,	0,	FALSE,	FALSE,	FALSE),
(9,	'1-2', FALSE,	0,	FALSE,	FALSE,	FALSE);
   
INSERT INTO Versus ('Player_ID',	'Nivel',	'Dificultad')
VALUES 
(0,	'1-1',	'Fácil'   ),
(0,	'1-2',	'Normal'  ),
(0,	'1-3',	'Difícil' ),
(1,	'1-1',	'Fácil'   ),
(1,	'1-2',	'Normal'  ),
(1,	'1-3',	'Difícil' ),
(1,	'1-4',	'Fácil'   ),
(1,	'2-1',	'Normal'  ),
(2,	'1-1',	'Difícil' ),
(2,	'1-2',	'Fácil'   ),
(2,	'1-3',	'Normal'  ),
(3,	'1-1',	'Difícil' ),
(4,	'1-1',	'Fácil'   ),
(5,	'1-1',	'Normal'  ),
(6,	'1-1',	'Difícil' ),
(6,	'1-2',	'Fácil'   ),
(7,	'1-1',	'Normal'  ),
(8,	'1-1',	'Difícil' ),
(9,	'1-1',	'Fácil'   ),
(9,	'1-2',	'Normal'  );

INSERT INTO Bloque ('Nivel', 'Coord_B',	'Tipo',	'Contenido', 'Cantidad')
VALUES 
('1-1',	'10-37', 'bandera',	NULL, 0),
('1-1',	'30-38', 'bloque ?', 'Power-Up', 1),
('1-1',	'14-39', 'Ladrillos', 'Moneda' , 6),
('1-4',	'11-40', 'invisible', 'Power-Up', 1),
('1-4',	'18-41', 'Solido', NULL, 0),
('1-4',	'22-42', 'Ladrillos','Power-Up', 1),
('1-2',	'10-38', 'invisible', 'Moneda', 1),
('1-2',	'30-39', 'Fuego', NULL, 0),
('2-1',	'14-40', 'bloque ?', 'Power-Up', 1),
('2-1',	'11-31', 'Ladrillos', 'Moneda', 1),
('1-1',	'18-42', 'invisible', 'Trepadora', 1),
('1-1',	'22-43', 'Solido',	NULL, 0),
('1-1',	'10-39', 'Ladrillos', 'Power-Up', 1),
('1-3',	'30-40', 'invisible', 'Moneda', 1),
('1-4',	'14-41', 'Ladrillos', NULL, 0),
('1-4', '11-42', 'bloque ?', 'Power-Up', 1),
('1-2',	'18-43', 'Ladrillos', 'Moneda' , 5),
('1-2',	'22-44', 'invisible', 'Moneda', 1),
('2-1',	'10-40', 'Tuberia',	'Teletransporte', 0),
('2-1',	'30-41', 'Ladrillos', 'Power-Up', 1);