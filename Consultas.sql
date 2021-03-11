--Simple, sobre una sola tabla
SELECT Nombre FROM Enemigo WHERE Habilidad_ID IN (1,2,3);
--simple, sobre una tabla, con alguna funcion
SELECT Player_ID FROM Jugador WHERE Racha_D == (SELECT MAX (Racha_D) FROM Jugador);
--join, combinacion de varias tablas

--join, combinacion de varias tablas con filtrado
SELECT Nombre FROM Jugador INNER JOIN Versus ON Versus.Player_ID = Jugador.Player_ID WHERE Dificultad = 'Fácil';
--group simple
SELECT Player_ID, COUNT(Racha_V) FROM Jugador GROUP BY Player_ID;
--group, con combinacion de varias tablas, filtrados y funcion de agregacion.
