INSERT INTO Jugador (Player_ID, Nombre, Racha_V, Racha_D)
VALUES 
(0,	Jesus,	24,	13),
(1,	Virginia,	12,	16),
(2,	Gemma,	56,	3),
(3,	Carol,	35,	33),
(4,	Lidia,	45,	21),
(5,	Roman,	38,	5),
(6,	Julio,	22,	23),
(7,	Aaron,	34,	11);
   
INSERT INTO Enemigo (Enemy_ID, Nombre, Habilidad_ID, Salas_Nivel)
VALUES 
(0,	Goomba,	0,	Overworld),
(1,	Koopa,	1,	Overworld),
(2,	Paratroopa,	2,	Overworld),
(3,	Planta_Piraña,	4,	Night),
(4,	Hermano_Martillo,	3,	Mushroom),
(5,	Bill_Bala,	5,	Castle),
(6,	Lakitu,	7,	Skyland),
(7,	Blooper,	6,	Water),
(8,	Bowser,	8,	Castle);

INSERT INTO Salas (Tipo, Nivel)
VALUES 
(Overworld,	1-1),
(Overworld,	1-2),
(Overworld,	1-3),
(Overworld,	2-1),
(Castle,	1-4),
(Castle,	2-4),
(Castle,	3-4),
(Mushroom,	3-1),
(Mushroom,	3-2),
(Night,	2-3),
(Night,	4-1),
(Night,	2-3),
(Skyland,	1-2),
(Skyland,	2-1),
(Underground,	1-2),
(Underground,	5-2),
(Warp,	1-3),
(Warp,	6-1),
(Water, 2-2),
(Water,	4-1);
   
INSERT INTO Fortuna (Player_ID,	Fecha,	Fortuna)
VALUES 
(0,	23/01/2010,	Suerte),
(1,	02/03/2011,	Muchisima suerte),
(2,	23/01/2010,	Mala suerte),
(3,	24/02/2011,	Suerte),
(4,	25/01/2010,	Suerte),
(5,	26/04/2015,	Mala suerte),
(6,	01/05/2020,	Mucha suerte),
(7,	07/03/1999,	Muy mala suerte);
   
INSERT INTO Habilidad (Habilidad_ID, Nombre)
VALUES 
(0,	Nada),
(1,	Caparazon_Verde),
(2,	Caparazon_Rojo),
(3,	Lanzar_Martillo),
(4,	Morder),
(5,	Bala_Cañon),
(6,	Impulso),
(7,	Caña_Pesca),
(8,	Jefe_Bowser),
(9,	Invencible),
(10,	Fuego),
(11,	Seta);


INSERT INTO Niveles (Nivel,	Mundo,	Salas,	Check_flag,	Tiempo)
VALUES 
(1-1,	Pradera,	Overworld,	NO,	300),
(1-2,	Pradera,	Skyland,	NO,	300),
(1-3,	Pradera,	Night,	NO,	300),
(1-4,	Pradera,	Castle,	NO,	300),
(2-1,	Desierto,	Underground,	NO,	300),
(2-2,	Desierto,	Warp,	NO,	300),
(2-3,	Desierto,	Water,	NO,	300),
(2-4,	Desierto,	Castle,	NO,	300),
(3-1,	Hielo,	Skyland,	NO,	300),
(3-2,	Hielo,	Mushroom,	NO,	300),
(3-3,	Hielo,	Night,	NO,	300),
(3-4,	Hielo,	Castle,	NO,	300),
(4-1,	Montaña,	Warp,	NO,	300),
(4-2,	Montaña,	Mushroom,	NO,	300),
(4-3,	Montaña,	Night,	NO,	300),
(4-4,	Montaña,	Castle,	NO,	300),
(5-1,	Agua,	Underground,	NO,	300),
(5-2,	Agua,	Water,	NO,	300),
(5-3,	Agua,	Night,	NO,	300),
(5-4,	Agua,	Castle,	NO,	300);

INSERT INTO Clasico (Jugador_ID,	Personaje,	Nivel,	Vidas,	Monedas,	PowerUP,	Puntuacion)
VALUES 
(0,	Mario,	1-1,	5,	0,	0,	0 ),
(1,	Luigi,	1-1,	5,	0,	0,	0 ),
(2,	Mario,	1-1,	5,	0,	0,	0 ),
(3,	Luigi,	1-1,	5,	0,	0,	0 ),
(4,	Mario,	1-1,	5,	0,	0,	0 ),
(5,	Luigi,	1-1,	5,	0,	0,	0 ),
(6,	Mario,	1-1,	5,	0,	0,	0 ),
(7,	Luigi,	1-1,	5,	0,	0,	0 ),
(8,	Mario,	1-1,	5,	0,	0,	0 ),
(9,	Luigi,	1-1,	5,	0,	0,	0 ),
(10,	Mario,	1-1,	5,	0,	0,	0 ),
(11,	Luigi,	1-1,	5,	0,	0,	0 ),
(12,	Mario,	1-1,	5,	0,	0,	0 ),
(13,	Luigi,	1-1,	5,	0,	0,	0 ),
(14,	Mario,	1-1,	5,	0,	0,	0 ),
(15,	Luigi,	1-1,	5,	0,	0,	0 ),
(16,	Mario,	1-1,	5,	0,	0,	0 ),
(17,	Mario,	1-1,	5,	0,	0,	0 ),
(18,	Luigi,	1-1,	5,	0,	0,	0 ),
(19,	Mario,	1-1,	5,	0,	0,	0 );

INSERT INTO Challenge (Player_ID,	Nivel,	Completado,	Puntuacion,	Medallas,	Huevo,	Record)
VALUES 
(0,	1-1,	NO,	0,	NO,	NO,	NO  ),
(0,	1-2,	NO,	0,	NO,	NO,	NO  ),
(0,	1-3,	NO,	0,	NO,	NO,	NO  ),
(1,	1-1,	NO,	0,	NO,	NO,	NO  ),
(1,	1-2,	NO,	0,	NO,	NO,	NO  ),
(1,	1-3,	NO,	0,	NO,	NO,	NO  ),
(1,	1-4,	NO,	0,	NO,	NO,	NO  ),
(1,	2-1,	NO,	0,	NO,	NO,	NO  ),
(2,	1-1,	NO,	0,	NO,	NO,	NO  ),
(2,	1-2,	NO,	0,	NO,	NO,	NO  ),
(2,	1-3,	NO,	0,	NO,	NO,	NO  ),
(3,	1-1,	NO,	0,	NO,	NO,	NO  ),
(4,	1-1,	NO,	0,	NO,	NO,	NO  ),
(5,	1-1,	NO,	0,	NO,	NO,	NO  ),
(6,	1-1,	NO,	0,	NO,	NO,	NO  ),
(6,	1-2,	NO,	0,	NO,	NO,	NO  ),
(7,	1-1,	NO,	0,	NO,	NO,	NO  ),
(8,	1-1,	NO,	0,	NO,	NO,	NO  ),
(9,	1-1,	NO,	0,	NO,	NO,	NO  ),
(9,	1-2,	NO,	0,	NO,	NO,	NO  );
   
INSERT INTO Versus (Player_ID,	Nivel,	Dificultad)
VALUES 
(0,	1-1,	Fácil   ),
(0,	1-2,	Normal  ),
(0,	1-3,	Difícil ),
(1,	1-1,	Fácil   ),
(1,	1-2,	Normal  ),
(1,	1-3,	Difícil ),
(1,	1-4,	Fácil   ),
(1,	2-1,	Normal  ),
(2,	1-1,	Difícil ),
(2,	1-2,	Fácil   ),
(2,	1-3,	Normal  ),
(3,	1-1,	Difícil ),
(4,	1-1,	Fácil   ),
(5,	1-1,	Normal  ),
(6,	1-1,	Difícil ),
(6,	1-2,	Fácil   ),
(7,	1-1,	Normal  ),
(8,	1-1,	Difícil ),
(9,	1-1,	Fácil   ),
(9,	1-2,	Normal  );

INSERT INTO Bloque (Sala,	Coord_B,	Tipo,	Contenido)
VALUES 
(Overworld,	10-37,	bandera,	NO),
(Overworld,	30-38,	bloque ?,	Power-Up),
(Overworld,	14-39,	Ladrillos,	Moneda),
(Castle,	11-40,	invisible,	Power-Up),
(Castle,	18-41,	Solido,	NO),
(Castle,	22-42,	Ladrillos,	Power-Up),
(Mushroom,	10-38,	invisible,	Moneda),
(Mushroom,	30-39,	Fuego,	NO),
(Night,	14-40,	bloque ?,	Power-Up ),
(Night,	11-41,	Ladrillos,	Moneda ),
(Overworld,	18-42,	invisible,	Trepadora ),
(Overworld,	22-43,	Solido,	NO ),
(Overworld,	10-39,	Ladrillos,	Power-Up),
(Castle,	30-40,	invisible,	Moneda ),
(Castle,	14-41,	Ladrillos,	NO ),
(Castle, 11-42,	bloque ?,	Power-Up  ),
(Mushroom,	18-43,	Ladrillos,	Moneda),
(Mushroom,	22-44,	invisible,	Moneda  ),
(Night,	10-40,	Tuberia,	Teletransporte),
(Night,	30-41,	Ladrillos,	Power-Up);