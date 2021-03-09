-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-03-08 20:28:00.651

-- foreign keys
ALTER TABLE Bloque
    DROP FOREIGN KEY Bloque_Salas;

ALTER TABLE Challenge
    DROP FOREIGN KEY Challenge_Jugador;

ALTER TABLE Clasico
    DROP FOREIGN KEY Clasico_Habilidad;

ALTER TABLE Clasico
    DROP FOREIGN KEY Clasico_Jugador;

ALTER TABLE Enemigo
    DROP FOREIGN KEY Enemigo_Habilidad;

ALTER TABLE Enemigo
    DROP FOREIGN KEY Enemigo_Salas;

ALTER TABLE Fortuna
    DROP FOREIGN KEY Fortuna_Jugador;

ALTER TABLE Mundo
    DROP FOREIGN KEY Mundo_Clasico;

ALTER TABLE Niveles
    DROP FOREIGN KEY Niveles_Mundo;

ALTER TABLE Salas
    DROP FOREIGN KEY Salas_Niveles;

ALTER TABLE Versus
    DROP FOREIGN KEY Versus_Jugador;

-- tables
DROP TABLE Bloque;

DROP TABLE Challenge;

DROP TABLE Clasico;

DROP TABLE Enemigo;

DROP TABLE Fortuna;

DROP TABLE Habilidad;

DROP TABLE Jugador;

DROP TABLE Mundo;

DROP TABLE Niveles;

DROP TABLE Salas;

DROP TABLE Versus;

-- End of file.

