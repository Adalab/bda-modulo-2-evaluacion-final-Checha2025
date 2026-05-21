
-- EVALUACIÓN FINAL MÓDULO 2 - FASE 2 & FASE 4 (Películas extraídas de API)


-- 1. CREACIÓN DE LA BASE DE DATOS Y ENTORNO
CREATE DATABASE peliculas_adalab;
USE peliculas_adalab;

-- 2. CREACIÓN DE TABLAS 
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
        ON UPDATE CASCADE
);


-- FASE 4: CONSULTAS DE OBTENCIÓN DE INFORMACIÓN

-- Comprobación de carga de datos
SELECT * FROM tabla_generos;
SELECT * FROM tabla_peliculas;

-- ¿Cuántas películas tienen una duración superior a 120 minutos?
SELECT COUNT(*) AS peliculas_mas_120
FROM tabla_peliculas
WHERE duracion > 120;

-- NOTA: La pregunta "¿Cuántas películas incluyen subtítulos en español?" 
-- no se puede responder la API ya que no provee ese dato.

-- ¿Cuántas películas tienen contenido adulto?
SELECT COUNT(*) AS peliculas_adultos 
FROM tabla_peliculas 
WHERE adultos = 'Sí';

-- ¿Cuál es la película más antigua registrada en la base de datos?
SELECT titulo, año 
FROM tabla_peliculas 
ORDER BY año ASC 
LIMIT 1;

-- Muestra el promedio de duración de las películas agrupado por género.
SELECT g.nombre_genero, ROUND(AVG(p.duracion), 2) AS promedio_duracion_min
FROM tabla_peliculas p
LEFT JOIN tabla_generos g ON p.id_genero = g.id_genero
GROUP BY g.nombre_genero;

-- ¿Cuántas películas por año se han registrado en la base de datos? Ordena de mayor a menor.
SELECT año, COUNT(*) AS cantidad_peliculas 
FROM tabla_peliculas 
GROUP BY año 
ORDER BY cantidad_peliculas DESC;

-- ¿Cuál es el año con más películas en la base de datos?
SELECT año, COUNT(*) AS cantidad_peliculas 
FROM tabla_peliculas 
GROUP BY año 
ORDER BY cantidad_peliculas DESC 
LIMIT 1;

-- Obtén un listado de todos los géneros y cuántas películas corresponden a cada uno.
SELECT g.nombre_genero, COUNT(p.id_pelicula) AS total_peliculas
FROM tabla_generos g
LEFT JOIN tabla_peliculas p ON g.id_genero = p.id_genero
GROUP BY g.nombre_genero
ORDER BY total_peliculas DESC;

-- Muestra todas las películas cuyo título contenga la palabra "Godfather" (o cualquier otra)
SELECT id_pelicula, titulo, año, duracion, adultos
FROM tabla_peliculas
WHERE titulo LIKE '%Godfather%';