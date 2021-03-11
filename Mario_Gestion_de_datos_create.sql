-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-03-11 21:21:52.296

-- tables
-- Table: Bloque
CREATE TABLE Bloque (
    Coord_B varchar(10) NOT NULL,
    Nivel varchar(5) NOT NULL,
    Tipo varchar(10) NOT NULL,
    Contenido varchar(10) DEFAULT "NO",
    CONSTRAINT Bloque_pk PRIMARY KEY (Coord_B,Nivel),
    CONSTRAINT Bloque_Niveles FOREIGN KEY (Nivel)
    REFERENCES Niveles (Nivel)
);

-- Table: Challenge
CREATE TABLE Challenge (
    Player_ID int NOT NULL,
    Nivel varchar(5) NOT NULL,
    Completado boolean NOT NULL,
    Puntuacion int NOT NULL,
    Medallas boolean NOT NULL,
    Huevo boolean NOT NULL,
    Record boolean NOT NULL,
    CONSTRAINT Player_nivel PRIMARY KEY (Player_ID,Nivel),
    CONSTRAINT Challenge_Jugador FOREIGN KEY (Player_ID)
    REFERENCES Jugador (Player_ID)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE,
    CONSTRAINT Challenge_Niveles FOREIGN KEY (Nivel)
    REFERENCES Niveles (Nivel)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE
);

-- Table: Clasico
CREATE TABLE Clasico (
    Jugador_ID int NOT NULL,
    Nivel varchar(5) NOT NULL,
    Personaje varchar(10) NOT NULL,
    Vidas int NOT NULL,
    Monedas int NOT NULL,
    Puntuacion int NOT NULL,
    PowerUp int,
    CONSTRAINT Jugador PRIMARY KEY (Jugador_ID,Nivel),
    CONSTRAINT Clasico_Jugador FOREIGN KEY (Jugador_ID)
    REFERENCES Jugador (Player_ID)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE,
    CONSTRAINT Clasico_Habilidad FOREIGN KEY (PowerUp)
    REFERENCES Habilidad (Habilidad_ID)
    ON DELETE SET DEFAULT 
    ON UPDATE CASCADE,
    CONSTRAINT Clasico_Niveles FOREIGN KEY (Nivel)
    REFERENCES Niveles (Nivel)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE
);

-- Table: Enemigo
CREATE TABLE Enemigo (
    Enemy_ID int NOT NULL,
    Nivel varchar(5) NOT NULL,
    Nombre varchar(15) NOT NULL,
    Habilidad_ID int,
    CONSTRAINT Enemigo_pk PRIMARY KEY (Enemy_ID,Nivel),
    CONSTRAINT Enemigo_Habilidad FOREIGN KEY (Habilidad_ID)
    REFERENCES Habilidad (Habilidad_ID)
    ON DELETE SET DEFAULT 
    ON UPDATE CASCADE,
    CONSTRAINT Enemigo_Niveles FOREIGN KEY (Nivel)
    REFERENCES Niveles (Nivel)
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
    Player_ID int NOT NULL CONSTRAINT Player_ID PRIMARY KEY,
    Nombre varchar(10) NOT NULL,
    Racha_V int NOT NULL DEFAULT 0,
    Racha_D int NOT NULL DEFAULT 0,
    CONSTRAINT Nombre UNIQUE (Nombre)
);

-- Table: Niveles
CREATE TABLE Niveles (
    Nivel varchar(5) NOT NULL CONSTRAINT Niveles_pk PRIMARY KEY,
    Mundo varchar(20) NOT NULL,
    Check_flag boolean NOT NULL,
    Tiempo int NOT NULL
);

-- Table: Versus
CREATE TABLE Versus (
    Player_ID int NOT NULL,
    Nivel varchar(5) NOT NULL,
    Dificultad int NOT NULL,
    CONSTRAINT Player_nivel PRIMARY KEY (Player_ID,Nivel),
    CONSTRAINT Versus_Jugador FOREIGN KEY (Player_ID)
    REFERENCES Jugador (Player_ID)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE,
    CONSTRAINT Versus_Niveles FOREIGN KEY (Nivel)
    REFERENCES Niveles (Nivel)
    ON DELETE RESTRICT 
    ON UPDATE CASCADE
);

-- End of file.

