-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-03-08 20:28:00.651

-- tables
-- Table: Bloque
CREATE TABLE Bloque (
    Nivel int NOT NULL,
    Coord_B int NOT NULL,
    Tipo int NOT NULL,
    Contenido int NOT NULL,
    CONSTRAINT Bloque_pk PRIMARY KEY (Coord_B,Nivel)
) COMMENT 'bloques del juego';

-- Table: Challenge
CREATE TABLE Challenge (
    Player_ID int NOT NULL,
    Nivel int NOT NULL,
    Completado bool NOT NULL,
    Puntuacion int NOT NULL,
    Medallas bool NOT NULL,
    Huevo bool NOT NULL,
    Record bool NOT NULL,
    CONSTRAINT Challenge_pk PRIMARY KEY (Nivel)
) COMMENT 'Modo challenge';

-- Table: Clasico
CREATE TABLE Clasico (
    Jugador_ID int NOT NULL,
    Personaje varchar(10) NOT NULL,
    Mundo int NOT NULL,
    Nivel int NOT NULL,
    Vidas int NOT NULL,
    Monedas int NOT NULL,
    PowerUp int NULL,
    UNIQUE INDEX Mundo_nivel (Mundo,Nivel),
    CONSTRAINT Jugador PRIMARY KEY (Jugador_ID)
) COMMENT 'Slots de guardado';

-- Table: Enemigo
CREATE TABLE Enemigo (
    Enemy_ID int NOT NULL,
    Nombre varchar(15) NOT NULL,
    Habilidad_ID int NULL,
    Salas_Nivel int NOT NULL,
    CONSTRAINT Enemigo_pk PRIMARY KEY (Enemy_ID)
);

-- Table: Fortuna
CREATE TABLE Fortuna (
    Player_ID int NOT NULL,
    Fecha date NOT NULL,
    Fortuna varchar(20) NOT NULL,
    CONSTRAINT Fortuna_pk PRIMARY KEY (Player_ID)
) COMMENT 'Rueda de la fortuna diaria';

-- Table: Habilidad
CREATE TABLE Habilidad (
    Habilidad_ID int NOT NULL,
    Nombre varchar(20) NOT NULL,
    CONSTRAINT Habilidad_pk PRIMARY KEY (Habilidad_ID)
);

-- Table: Jugador
CREATE TABLE Jugador (
    Player_ID int NOT NULL,
    Nombre varchar(10) NOT NULL,
    Puntos int NOT NULL,
    Racha_V int NOT NULL,
    Racha_D int NOT NULL,
    UNIQUE INDEX Nombre (Nombre),
    CONSTRAINT ID Jugador PRIMARY KEY (Player_ID)
);

-- Table: Mundo
CREATE TABLE Mundo (
    Mundo int NOT NULL,
    Nivel int NOT NULL,
    CONSTRAINT Mundo_pk PRIMARY KEY (Mundo,Nivel)
);

-- Table: Niveles
CREATE TABLE Niveles (
    Mundo_Nivel int NOT NULL,
    Mundo_Mundo int NOT NULL,
    Salas varchar(10) NOT NULL,
    Check_flag bool NOT NULL,
    Tiempo int NOT NULL,
    CONSTRAINT Niveles_pk PRIMARY KEY (Mundo_Nivel)
);

-- Table: Salas
CREATE TABLE Salas (
    Nivel int NOT NULL,
    Tipo varchar(10) NOT NULL,
    CONSTRAINT Salas_pk PRIMARY KEY (Nivel)
) COMMENT 'Tipos de sala';

-- Table: Versus
CREATE TABLE Versus (
    Player_ID int NOT NULL,
    Nivel int NOT NULL,
    Dificultad int NOT NULL,
    CONSTRAINT Versus_pk PRIMARY KEY (Nivel)
) COMMENT 'modo contra la IA';

-- foreign keys
-- Reference: Bloque_Salas (table: Bloque)
ALTER TABLE Bloque ADD CONSTRAINT Bloque_Salas FOREIGN KEY Bloque_Salas (Nivel)
    REFERENCES Salas (Nivel)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: Challenge_Jugador (table: Challenge)
ALTER TABLE Challenge ADD CONSTRAINT Challenge_Jugador FOREIGN KEY Challenge_Jugador (Player_ID)
    REFERENCES Jugador (Player_ID)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: Clasico_Habilidad (table: Clasico)
ALTER TABLE Clasico ADD CONSTRAINT Clasico_Habilidad FOREIGN KEY Clasico_Habilidad (PowerUp)
    REFERENCES Habilidad (Habilidad_ID)
    ON DELETE SET DEFAULT
    ON UPDATE CASCADE;

-- Reference: Clasico_Jugador (table: Clasico)
ALTER TABLE Clasico ADD CONSTRAINT Clasico_Jugador FOREIGN KEY Clasico_Jugador (Jugador_ID)
    REFERENCES Jugador (Player_ID)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: Enemigo_Habilidad (table: Enemigo)
ALTER TABLE Enemigo ADD CONSTRAINT Enemigo_Habilidad FOREIGN KEY Enemigo_Habilidad (Habilidad_ID)
    REFERENCES Habilidad (Habilidad_ID)
    ON DELETE SET DEFAULT
    ON UPDATE CASCADE;

-- Reference: Enemigo_Salas (table: Enemigo)
ALTER TABLE Enemigo ADD CONSTRAINT Enemigo_Salas FOREIGN KEY Enemigo_Salas (Salas_Nivel)
    REFERENCES Salas (Nivel)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: Fortuna_Jugador (table: Fortuna)
ALTER TABLE Fortuna ADD CONSTRAINT Fortuna_Jugador FOREIGN KEY Fortuna_Jugador (Player_ID)
    REFERENCES Jugador (Player_ID)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: Mundo_Clasico (table: Mundo)
ALTER TABLE Mundo ADD CONSTRAINT Mundo_Clasico FOREIGN KEY Mundo_Clasico (Mundo,Nivel)
    REFERENCES Clasico (Mundo,Nivel)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: Niveles_Mundo (table: Niveles)
ALTER TABLE Niveles ADD CONSTRAINT Niveles_Mundo FOREIGN KEY Niveles_Mundo (Mundo_Mundo,Mundo_Nivel)
    REFERENCES Mundo (Mundo,Nivel)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: Salas_Niveles (table: Salas)
ALTER TABLE Salas ADD CONSTRAINT Salas_Niveles FOREIGN KEY Salas_Niveles (Nivel)
    REFERENCES Niveles (Mundo_Nivel)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: Versus_Jugador (table: Versus)
ALTER TABLE Versus ADD CONSTRAINT Versus_Jugador FOREIGN KEY Versus_Jugador (Player_ID)
    REFERENCES Jugador (Player_ID)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- End of file.

