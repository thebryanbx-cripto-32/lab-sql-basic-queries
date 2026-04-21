-- SQL Basic Queries Lab
-- Dataset: Sakila database
-- Author: [Bryan Calderon]

USE sakila;
-- 1. Display all available tables in the Sakila database.
SHOW TABLES;

-- 2. Retrieve all the data from the tables actor, film and customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3. Retrieve specific columns from their respective tables
-- 3.1 Titles of all films from the film table
SELECT title FROM film;

-- 3.2 List of languages used in films, with the column aliased as language
SELECT * FROM language;  #  List of the names is names column
SELECT name AS Language
FROM language;

-- 3.3 List of first names of all employees from the staff table
SELECT * FROM staff; 
SELECT first_name FROM staff;

-- 4. Retrieve unique release years
SELECT * FROM film;
SELECT DISTINCT release_year
FROM film;

-- 5. Counting records for database insights
-- 5.1 Number of stores the company has
SELECT * FROM store; 
SELECT COUNT(store_id) AS number_of_stores
FROM store;

-- 5.2 Number of employees the company has
SELECT COUNT(staff_id) AS number_of_employees
FROM staff;
# or SELECT COUNT(*) AS number_of_employees FROM staff;  It seems to be the same # 

-- 5.3 How many films are available for rent and how many have been rented
-- Films available for rent
SELECT * FROM inventory; 
SELECT COUNT(*) AS films_available_for_rent
FROM inventory;

-- Films that have been rented  *** Not sure about this *** 
SELECT * FROM rental; 
SELECT COUNT(DISTINCT inventory_id) AS films_rented
FROM rental;

-- 5.4 Number of distinct last names of actors
SELECT * FROM actor; 
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names
FROM actor;

-- 6. Retrieve the 10 longest films
SELECT * FROM film; 
SELECT title, length
FROM film 
ORDER by length DESC
LIMIT 10;

-- 7. Filtering techniques
-- 7.1 Retrieve all actors with the first name "SCARLETT"
SELECT * FROM actor
WHERE first_name = "SCARLETT";

-- 7.2 BONUS: Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes
SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%'  ## Lets see!
  AND length > 100;

