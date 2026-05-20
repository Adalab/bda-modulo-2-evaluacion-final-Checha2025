CREATE DATABASE peliculas_adalab;
USE peliculas_adalab;
CREATE TABLE tabla_generos (
    id_genero INT AUTO_INCREMENT PRIMARY KEY,
    nombre_genero VARCHAR(50) NOT NULL UNIQUE
);
CREATE TABLE tabla_peliculas (
    id_pelicula INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
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

SELECT COUNT (*) AS peliculas_mas_120
FROM tabla_peliculas
WHERE duracion> 120;