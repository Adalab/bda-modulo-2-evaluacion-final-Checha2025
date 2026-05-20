CREATE DATABASE peliculas_adalab;
USE peliculas_adalab;
CREATE TABLE tabla_generos (
    id_genero INT AUTO_INCREMENT PRIMARY KEY,
    nombre_genero VARCHAR(50) NOT NULL UNIQUE
);
CREATE TABLE tabla_peliculas (
    id_pelicula INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    año INT NOT NULL,
    duracion INT NOT NULL,
    adultos VARCHAR(2) NOT NULL,
    id_genero INT,
    CONSTRAINT fk_peliculas_generos
    FOREIGN KEY (id_genero) 
    REFERENCES tabla_generos(id_genero)
    ON DELETE SET NULL 
    ON UPDATE CASCADE);
SELECT * FROM tabla_generos;

SELECT * FROM tabla_peliculas;

SELECT COUNT(*) AS peliculas_mas_120
FROM tabla_peliculas
WHERE duracion> 120;

SELECT COUNT(*) AS peliculas_adultos 
FROM tabla_peliculas 
WHERE adultos = 'Sí';

SELECT titulo, año 
FROM tabla_peliculas 
ORDER BY año ASC 
LIMIT 1;

SELECT g.nombre_genero, ROUND(AVG(p.duracion), 2) AS promedio_duracion_min
FROM tabla_peliculas p
LEFT JOIN tabla_generos g ON p.id_genero = g.id_genero
GROUP BY g.nombre_genero;

SELECT año, COUNT(*) AS cantidad_peliculas 
FROM tabla_peliculas 
GROUP BY año 
ORDER BY cantidad_peliculas DESC;

SELECT año, COUNT(*) AS cantidad_peliculas 
FROM tabla_peliculas 
GROUP BY año 
ORDER BY cantidad_peliculas DESC 
LIMIT 1;

SELECT g.nombre_genero, COUNT(p.id_pelicula) AS total_peliculas
FROM tabla_generos g
LEFT JOIN tabla_peliculas p ON g.id_genero = p.id_genero
GROUP BY g.nombre_genero
ORDER BY total_peliculas DESC

SELECT *
FROM tabla_peliculas
WHERE titulo ILIKE '%godfather%';