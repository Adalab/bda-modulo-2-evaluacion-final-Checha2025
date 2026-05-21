Evaluación Final - Módulo 2

¡Bienvenido/a al repositorio de la Evaluación Final del Módulo 2! Este proyecto combina el consumo de datos desde APIs públicas, la automatización y estructuración de la información en bases de datos relacionales y la resolución de consultas analíticas avanzadas.

---

📂 Estructura del Repositorio

El proyecto está organizado en los siguientes archivos principales:

1. enunciado_final_modulo_2_fase_1.ipynb: Jupyter Notebook enfocado en la conexión a una API pública, control de errores, procesamiento de la respuesta JSON y estructuración de los datos en un DataFrame de Pandas.
2. modulo_2_evaluacion_fase_2.sql: Script SQL con las sentencias DDL necesarias CREATE DATABASE, CREATE TABLE para definir el esquema conceptual, tipos de datos, restricciones y claves de la base de datos cinematográfica.
3. Ejercicio_2_Base_de_Datos_Sakila.sql: Script SQL que recopila la resolución completa de las 15 consultas solicitadas sobre la base de datos Sakila.

---

🛠️ Tecnologías y Herramientas Utilizadas

- Lenguajes:** Python 3.x, SQL (Dialecto MySQL)
- Entornos de Desarrollo: Jupyter Notebook, MySQL Workbench, Visual Studio Code
- Librerías de Python: requestes, pandas

---

Detalle de los Ejercicios y Fases

Ejercicio 1: Base de Datos de Películas desde API (Adalab Movies DB)


- Fase 1 (Extracción):** Conexión al endpoint de la API (`https://beta.adalab.es/resources/apis/pelis/pelis.json`) para capturar información estructurada de 100 películas. Los campos transformados e inspeccionados incluyen: Título, Año de lanzamiento, Duración (min), Género y Contenido para adultos.
- 
- Fase 2: Diseño y creación de la base de datos relacional en MySQL ejecutando comandos DDL.
- Fase 3: El bloque automatiza la carga de datos para que no tengas que preocuparte por el registro manual. Una vez guardados, permite lanzar consultas SQL de forma sencilla para:
  * Filtrar por la duración de cada película.
  * Agrupar los resultados por género cinematográfico.
  * Ordenar todo de forma cronológica.
  * Sacar el conteo total de películas por año.
    
--- Ejercicio 2: Análisis Avanzado sobre la Base de Datos Sakila ---

Resolución de retos analíticos utilizando el entorno de **Sakila**, una base de datos que simula las operaciones de un videoclub tradicional (tablas interconectadas como film, actor, customer, rental y category. 

Las consultas desarrolladas se dividen en:

- Consultas Básicas y Filtrados: Uso de SELECT DISTINCT, filtros condicionales combinados WHERE, AND,OR, operadores de coincidencia de patrones LIKE y restricciones de rangos numéricos BETWEEN.
- Agregaciones y Agrupaciones: Segmentación de datos mediante GROUP BY y cálculo de métricas clave mediante funciones de agregación como totales COUNT o promedios AVG.
- Consultas Multitabla (JOINs): Relación de entidades complejas mediante INNER JOIN para conectar actores con sus películas, clientes con sus históricos de alquiler y categorías con sus volúmenes de facturación.

---

-- Instalación y Ejecución --

Sigue estos pasos para arrancar el proyecto en tu máquina local:

1. Clonar el repositorio:**
   Clona este repositorio de GitHub en tu ordenador y accede al directorio del proyecto:
   ```bash
   git clone <URL_DE_TU_REPOSITORIO>
   cd <NOMBRE_DEL_DIRECTORIO>
