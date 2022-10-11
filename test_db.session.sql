SELECT *
FROM actor;

-- Query first and last name
SELECT first_name, last_name
FROM actor;

-- Query actors whose name is nick
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

-- use the LIKE clause
SELECT last_name
FROM actor
WHERE first_name LIKE 'Nick';

-- looking for names that start with letter J
-- % is a wildcard
SELECT first_name
FROM actor
WHERE first_name LIKE 'J%';


-- Limiting the number of characters
-- single character wildcard
SELECT first_name
FROM actor
WHERE first_name LIKE 'J__';


-- using both wildcard and underscore
SELECT first_name
FROM actor
WHERE first_name LIKE 'K__%th';


-- comparing operators
-- >=
-- <=
-- >
-- <
-- <> Not equal to


-- explore the payment table
SELECT *
FROM payment


-- find customers who paid more than 10 dollars
SELECT customer_id, amount
FROM payment
WHERE amount >= 10.00;

SELECT first_name
FROM customer
WHERE customer_id = 341;


-- query for customers who paid more than 2 dollars
-- in ascending order
SELECT customer_id, amount
FROM payment
WHERE amount >= 2.00
ORDER BY amount;


-- FIND customer who paid between 4 and 7.99
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 4.00 AND 7.99;


-- SQL aggregation => SUM() AVG() COUNT() MIN() MAX()
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99;


-- display averages
SELECT AVG(amount)
FROM payment;


SELECT COUNT(*)
FROM payment;


SELECT COUNT(DISTINCT amount)
FROM payment;


SELECT amount
FROM payment WHERE amount = 4.00;


SELECT MIN(amount) AS cheapest_item
FROM payment;


SELECT MAX(amount) AS most_expensive_item
FROM payment;


-- GROUP BY Clause
SELECT customer_id, COUNT(*)
FROM payment
GROUP BY customer_id;


SELECT customer_id, SUm(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;


SELECT amount, COUNT(*)
FROM payment
WHERE amount > 6.99
GROUP BY amount
HAVING COUNT(*) > 10
ORDER BY COUNT(*) DESC;


SELECT amount, COUNT(*)
FROM payment
WHERE amount > 6.99
GROUP BY amount
HAVING COUNT(*) > 10
ORDER BY COUNT(*) DESC
LIMIT 5; 