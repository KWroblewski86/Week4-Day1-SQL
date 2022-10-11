-- (1) How many actors are there with the last name Wahlberg?
-- Answer is 2

SELECT *
FROM actor
WHERE last_name = 'Wahlberg';


-- (2) How many payments were made between $3.99 and $5.99?
-- Answer is 3273

SELECT *
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;


-- (3) What film does the store have the most of?
-- Answer is 

SELECT *
FROM inventory;
WHERE COUNT(film_id);


-- (4) How many customers have the last name William?
-- Answer is 0

SELECT *
FROM customer
WHERE last_name = 'William';


-- (5) What store employee sold the most rentals?
-- Answer is Jon Stephens
-- Used both to get my answer

SELECT staff_id
FROM payment
WHERE amount > 330;

SELECT first_name, last_name
FROM staff
WHERE staff_id = 2;


-- (6) How many different district names are there?
-- Answer is 603

SELECT district
FROM address;


-- (7) What film has the most actors in it?
--Answer is 

SELECT COUNT(film_id), actor_id
FROM film_actor
GROUP BY actor_id
ORDER BY COUNT(actor_id);


-- (8) How many custormers have a last name
-- ending with 'es'?
-- Answer is 21

SELECT *
FROM customer
WHERE last_name LIKE '%es';


-- (9) How many payment amounts had a number of rentals
-- above 250 for customers with ids between 
-- 380 and 430?
-- Answer is 

SELECT rental_id
FROM payment
WHERE amount > 250
GROUP BY customer_id BETWEEN 380 AND 430;


-- (10) Within the film table, how many rating
-- categories are there? And what rating has the most
-- movies total? 

-- Answer is 5 different rating categories
-- Answer is NC-17 for rating with most movies total


SELECT rating
FROM film;

SELECT MAX(rating)
FROM film;