
USE sakila;
SELECT DINSTICT title
FROM film;

SELECT title 
FROM film 
WHERE rating = 'PG-13';

SELECT title, description 
FROM film 
WHERE description LIKE '%amazing%';

SELECT title 
FROM film 
WHERE length > 120;

SELECT first_name, last_name 
FROM actor;

SELECT first_name, last_name 
FROM actor 
WHERE last_name = 'Gibson';

SELECT first_name, last_name 
FROM actor 
WHERE actor_id BETWEEN 10 AND 20;

SELECT title 
FROM film 
WHERE rating NOT IN ('R', 'PG-13');

SELECT rating, COUNT(*) AS total_peliculas
FROM film
GROUP BY rating;

SELECT c.customer_id, c.first_name, c.last_name, COUNT(r.rental_id) AS total_alquiladas
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;

SELECT c.name AS categoria, COUNT(r.rental_id) AS total_alquileres
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
JOIN film f ON fc.film_id = f.film_id
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY c.name;

SELECT rating, AVG(length) AS promedio_duracion
FROM film
GROUP BY rating;

SELECT a.first_name, a.last_name
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id
WHERE f.title = 'INDIAN LOVE';

SELECT title 
FROM film 
WHERE description LIKE '%dog%' OR description LIKE '%cat%';

SELECT title 
FROM film 
WHERE release_year BETWEEN 2005 AND 2010

