USE SAKILA;

#1 - Show the first 10 films with the highest rental rate.

SELECT title, rental_rate
FROM film
ORDER BY rental_rate DESC
LIMIT 10;

#2 - Find the number of films available for each rating category.

SELECT rating, COUNT(*) AS total_films
FROM film
GROUP BY rating;

#3 - Display all films where the film length is greater than 120 minutes.

SELECT *
FROM film
WHERE length > 120 ;

#4 - List the titles of films that start with the letter *A*.

SELECT title
FROM film
WHERE title LIKE 'A%';

#5 - 5. Find the average film length for each rating category.

SELECT rating, AVG(length)
AS  avg_length
FROM film
GROUP BY rating;

#6 - Show films where the replacement cost is between *10 and 20*.

SELECT *
FROM film
WHERE replacement_cost BETWEEN 10 AND 20;


#7 - Display the titles and ratings of all films.

SELECT title, rating
FROM film;

#8 - Find films where the rating is *PG or G*.

SELECT *
FROM film
where rating IN ('PG', 'G');

#9 -  Show the titles of films that contain the word *LOVE*.

SELECT title
FROM film
WHERE title LIKE '%LOVE%';

#10- Display films where the rental rate is greater than *3*.

SELECT *
FROM film
where rental_rate > 3;

#11- Find the total number of films in the dataset.

SELECT COUNT(*) 
AS total_film
FROM film;

#12 -  Show films where the film length is between *90 and 120 minutes*.

SELECT *
FROM film
WHERE length BETWEEN 90 AND 120;

#13 - Display the distinct ratings available in the dataset.

SELECT DISTINCT rating
FROM film;

#14- Find films where the rental rate is *0.99, 2.99, or 4.99*.

SELECT *
FROM film
WHERE rental_rate IN (0.99,2.99,4.99);

#15 List films sorted by film length from longest to shortest.

SELECT *
FROM film 
ORDER BY length desc;

#16 Find the minimum and maximum replacement cost among all films.

SELECT MIN(replacement_cost) AS min_cost,
       MAX(replacement_cost) AS max_cost
FROM film;

#17  Display the titles of films whose title ends with the letter *Y*.
SELECT title
FROM film
WHERE title LIKE 'Y%';

#18 Show the films released in the year *2006*

SELECT *
FROM film
WHERE release_year = 2006;

#19 Find the average rental rate for each rating category.

SELECT rating, AVG(rental_rate) AS avg_rental_rate
FROM film
GROUP BY rating;



