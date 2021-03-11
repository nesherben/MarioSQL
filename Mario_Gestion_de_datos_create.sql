-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-03-11 19:03:37.286

-- tables
-- Table: Bloque
CREATE TABLE Bloque (
    Sala int NOT NULL,
    Coord_B int NOT NULL,
    Tipo varchar(10) NOT NULL,
    Contenido varchar(10) DEFAULT Nada,
    CONSTRAINT Bloque_pk PRIMARY KEY (Coord_B,Sala),
    CONSTRAINT Bloque_Salas FOREIGN KEY (Sala,Sala)
    REFERENCES Salas (Tipo,Nivel)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE
);

-- Table: Challenge
CREATE TABLE Challenge (
    Player_ID int NOT NULL CONSTRAINT Player_nivel PRIMARY KEY,
    Nivel varchar(5) NOT NULL,
    Completado boolean NOT NULL,
    Puntuacion int NOT NULL,
    Medallas boolean NOT NULL,
    Huevo boolean NOT NULL,
    Record boolean NOT NULL,
    CONSTRAINT Niveles_Challenge UNIQUE (Nivel),
    CONSTRAINT Challenge_Jugador FOREIGN KEY (Player_ID)
    REFERENCES Jugador (Player_ID)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE
);

-- Table: Clasico
CREATE TABLE Clasico (
    Jugador_ID int NOT NULL CONSTRAINT Jugador PRIMARY KEY,
    Nivel varchar(5) NOT NULL DEFAULT 0-0,
    Personaje varchar(10) NOT NULL,
    Vidas int NOT NULL,
    Monedas int NOT NULL,
    Puntuacion int NOT NULL,
    PowerUp int,
    CONSTRAINT Niveles_Clasico UNIQUE (Nivel),
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
    Salas_Nivel varchar(10) NOT NULL,
    Habilidad_ID int,
    CONSTRAINT Enemigo_Habilidad FOREIGN KEY (Habilidad_ID)
    REFERENCES Habilidad (Habilidad_ID)
    ON DELETE SET DEFAULT 
    ON UPDATE CASCADE,
    CONSTRAINT Enemigo_Salas FOREIGN KEY (Salas_Nivel,Salas_Nivel)
    REFERENCES Salas (Tipo,Nivel)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE
);

-- Table: Fortuna
CREATE TABLE Fortuna (
    Player_ID int NOT NULL,
    Fecha date NOT NULL,
    Fortuna varchar(20),
    CONSTRAINT Player_Fecha PRIMARY KEY (Fecha,Player_ID),
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
    Racha_V int NOT NULL DEFAULT 0,
    Racha_D int NOT NULL DEFAULT 0,
    CONSTRAINT Nombre UNIQUE (Nombre)
);

-- Table: Niveles
CREATE TABLE Niveles (
    Nivel varchar(5) NOT NULL CONSTRAINT Niveles_pk PRIMARY KEY,
    Mundo varchar(20) NOT NULL,
    Salas varchar(20) NOT NULL,
    Check_flag boolean NOT NULL,
    Tiempo int NOT NULL,
    CONSTRAINT Clasico_Niveles FOREIGN KEY (Nivel)
    REFERENCES Clasico (Nivel),
    CONSTRAINT Versus_Niveles FOREIGN KEY (Nivel)
    REFERENCES Versus (Nivel)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE,
    CONSTRAINT Challenge_Niveles FOREIGN KEY (Nivel)
    REFERENCES Challenge (Nivel)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE
);

-- Table: Salas
CREATE TABLE Salas (
    Tipo varchar(10) NOT NULL,
    Nivel varchar(5) NOT NULL,
    CONSTRAINT Salas_pk PRIMARY KEY (Tipo,Nivel),
    CONSTRAINT Salas_Niveles FOREIGN KEY (Nivel)
    REFERENCES Niveles (Nivel)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE
);

-- Table: Versus
CREATE TABLE Versus (
    Player_ID int NOT NULL CONSTRAINT Player_nivel PRIMARY KEY,
    Nivel varchar(5) NOT NULL,
    Dificultad int NOT NULL,
    CONSTRAINT Niveles_Versus UNIQUE (Nivel),
    CONSTRAINT Versus_Jugador FOREIGN KEY (Player_ID)
    REFERENCES Jugador (Player_ID)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE
);

-- End of file.

