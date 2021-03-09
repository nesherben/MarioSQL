-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-03-09 17:36:20.857

-- tables
-- Table: Bloque
CREATE TABLE Bloque (
    Sala int NOT NULL,
    Coord_B int NOT NULL,
    Tipo int NOT NULL,
    Contenido int NOT NULL,
    CONSTRAINT Bloque_pk PRIMARY KEY (Coord_B,Sala),
    CONSTRAINT Bloque_Salas FOREIGN KEY (Sala)
    REFERENCES Salas (Tipo)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE
);

-- Table: Challenge
CREATE TABLE Challenge (
    Player_ID int NOT NULL,
    Nivel int NOT NULL CONSTRAINT Challenge_pk PRIMARY KEY,
    Completado boolean NOT NULL,
    Puntuacion int NOT NULL,
    Medallas boolean NOT NULL,
    Huevo boolean NOT NULL,
    Record boolean NOT NULL,
    CONSTRAINT Challenge_Jugador FOREIGN KEY (Player_ID)
    REFERENCES Jugador (Player_ID)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE
);

-- Table: Clasico
CREATE TABLE Clasico (
    Jugador_ID int NOT NULL CONSTRAINT Jugador PRIMARY KEY,
    Personaje varchar(10) NOT NULL,
    Mundo varchar(20) NOT NULL,
    Nivel int NOT NULL,
    Vidas int NOT NULL,
    Monedas int NOT NULL,
    PowerUp int,
    Puntuacion int NOT NULL,
    CONSTRAINT Mundo_nivel UNIQUE (Mundo, Nivel),
    CONSTRAINT Clasico_Jugador FOREIGN KEY (Jugador_ID)
    REFERENCES Jugador (Player_ID)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE,
    CONSTRAINT Clasico_Habilidad FOREIGN KEY (PowerUp)
    REFERENCES Habilidad (Habilidad_ID)
    ON DELETE SET DEFAULT 
    ON UPDATE CASCADE
);

-- Table: Enemigo
CREATE TABLE Enemigo (
    Enemy_ID int NOT NULL CONSTRAINT Enemigo_pk PRIMARY KEY,
    Nombre varchar(15) NOT NULL,
    Habilidad_ID int,
    Salas_Nivel varchar(10) NOT NULL,
    CONSTRAINT Enemigo_Salas FOREIGN KEY (Salas_Nivel)
    REFERENCES Salas (Tipo)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE,
    CONSTRAINT Enemigo_Habilidad FOREIGN KEY (Habilidad_ID)
    REFERENCES Habilidad (Habilidad_ID)
    ON DELETE SET DEFAULT 
    ON UPDATE CASCADE
);

-- Table: Fortuna
CREATE TABLE Fortuna (
    Player_ID int NOT NULL,
    Fecha date NOT NULL CONSTRAINT Fortuna_pk PRIMARY KEY,
    Fortuna varchar(20) NOT NULL,
    CONSTRAINT Fortuna_Jugador FOREIGN KEY (Player_ID)
    REFERENCES Jugador (Player_ID)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE
);

-- Table: Habilidad
CREATE TABLE Habilidad (
    Habilidad_ID int NOT NULL CONSTRAINT Habilidad_pk PRIMARY KEY,
    Nombre varchar(20) NOT NULL
);

-- Table: Jugador
CREATE TABLE Jugador (
    Player_ID int NOT NULL CONSTRAINT ID Jugador PRIMARY KEY,
    Nombre varchar(10) NOT NULL,
    CONSTRAINT Nombre UNIQUE (Nombre)
);

-- Table: Mundo
CREATE TABLE Mundo (
    Mundo varchar(20) NOT NULL,
    Nivel int NOT NULL,
    CONSTRAINT Mundo_pk PRIMARY KEY (Mundo,Nivel),
    CONSTRAINT Mundo_Clasico FOREIGN KEY (Mundo,Nivel)
    REFERENCES Clasico (Mundo,Nivel)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE
);

-- Table: Niveles
CREATE TABLE Niveles (
    Mundo_Nivel int NOT NULL CONSTRAINT Niveles_pk PRIMARY KEY,
    Mundo_Mundo varchar(20) NOT NULL,
    Salas int NOT NULL,
    Check_flag boolean NOT NULL,
    Tiempo int NOT NULL,
    CONSTRAINT Niveles_Mundo FOREIGN KEY (Mundo_Mundo,Mundo_Nivel)
    REFERENCES Mundo (Mundo,Nivel)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE
);

-- Table: Salas
CREATE TABLE Salas (
    Tipo varchar(10) NOT NULL CONSTRAINT Salas_pk PRIMARY KEY,
    Nivel int NOT NULL,
    CONSTRAINT Salas_Niveles FOREIGN KEY (Nivel)
    REFERENCES Niveles (Mundo_Nivel)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE
);

-- Table: Versus
CREATE TABLE Versus (
    Player_ID int NOT NULL,
    Nivel int NOT NULL CONSTRAINT Versus_pk PRIMARY KEY,
    Dificultad int NOT NULL,
    Racha_V int NOT NULL,
    Racha_D integer NOT NULL,
    CONSTRAINT Versus_Jugador FOREIGN KEY (Player_ID)
    REFERENCES Jugador (Player_ID)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE
);

-- End of file.

