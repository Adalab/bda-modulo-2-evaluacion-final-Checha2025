Este repositorio contiene el desarrollo completo de la Evcaluación Final del Módulo 2
---

Estructura General del Repositorio
El proyecto se organiza a través de los siguientes archivos principales:

1. enunciado_final_modulo_2_fase_1.ipynb: Jupyter Notebook enfocado en la conexión a la API pública, control de errores, procesamiento de la respuesta JSON y estructuración de los primeros 100 registros en un DataFrame de Pandas.
2. modulo_2_evaluacion._fase_2.sql: Script SQL con las sentencias DDL necesarias (`CREATE DATABASE`, `CREATE TABLE`) para definir el esquema conceptual, los tipos de datos, restricciones y claves de la nueva base de datos cinematográfica.
3. Ejercicio_2_Base _de _Datos _Sakila.sql: Script SQL que recopila la resolución completa de las 15 consultas analíticas avanzadas solicitadas sobre la base de datos de una tienda de alquiler de vídeos (Sakila).

Tecnologías y Herramientas Utilizadas

* Lenguajes:Python 3.x, SQL (Dialecto MySQL)
* Entornos de Desarrollo: Jupyter Notebook, MySQL Workbench
* Librerías de Python:** requests", pandas

Detalle de los Ejercicios y Fases del Proyecto

Ejercicio 1: Base de Datos de Películas desde API (Adalab Movies DB)


* Fase 1 (Extracción): Conexión al endpoint de la API (`https://beta.adalab.es/resources/apis/pelis/pelis.json`) para capturar información estructurada de 100 películas. Los campos transformados e inspeccionados incluyen: *Título*, *Año de lanzamiento*, *Duración (min)*, *Género* y *Contenido para adultos*.
* Fase 2 (Modelado): Diseño de la base de datos relacional en MySQL ejecutando comandos DDL estructurados para garantizar la integridad referencial y la correcta asignación de tipos de datos.
* Fase 3 e Inferencia (Análisis): Bloque preparado para la inserción automática y la posterior explotación de métricas mediante consultas SQL (filtros de duración, agrupaciones por género, ordenaciones cronológicas y conteos agregados por año).

### Ejercicio 2: Análisis Avanzado sobre la Base de Datos Sakila

Utilizando el entorno de Sakila, una base de datos que simula las operaciones de un videoclub tradicional (con tablas interconectadas como `film`, `actor`, `customer`, `rental` y `category`), se da respuesta exacta a 15 consultas de negocio de complejidad progresiva empleando las siguientes habilidades técnicas:

* Consultas Básicas y Filtrados:** Uso avanzado de `SELECT DISTINCT`, filtros condicionales combinados (`WHERE`, `AND`, `OR`), operadores de coincidencia de patrones (`LIKE %word%`) y restricciones de rangos numéricos (`BETWEEN`).
* Agregaciones y Agrupaciones:** Implementación de funciones de agregado (`COUNT`, `AVG`) estructuradas mediante cláusulas `GROUP BY` y ordenadas de forma precisa.
* Consultas Multitabla (JOINS):** Relación de entidades complejas mediante `INNER JOIN` y uniones condicionales para conectar actores con películas, clientes con sus históricos de alquiler y categorías cinematográficas con sus volúmenes de facturación/alquiler.

---

Instrucciones de Instalación y Ejecución

Sigue estos pasos para arrancar el proyecto en tu máquina local:

1. Clonar el Repositorio
Clona este repositorio de GitHub Classroom en tu ordenador y accede al directorio del proyecto.
