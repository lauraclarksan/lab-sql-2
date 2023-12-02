-- Lab 2 Unit 2
-- 1. Select all the actors with the first name ‘Scarlett’
select * from sakila.actor where first_name = "Scarlett";

-- 2. Select all the actors with the last name ‘Johansson’
select * from sakila.actor where last_name = "Johansson";

-- 3. How many films (movies) are available for rent?
select count(film_id) from film;

-- 4. How many films have been rented
select count(rental_id) from rental;

-- 5. What is the shortest and longest rental period?
select min(rental_duration) from film;
select max(rental_duration) from film;

-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration
select min(length) from film as min_duration;
select max(length) from film as max_duration;

-- 7. What's the average movie duration?
select avg(length) from film;

-- 8. What's the average movie duration expressed in format (hours, minutes)?

-- 9. How many movies longer than 3 hours?
select count(film_id) from sakila.film where length > 180;

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org
select *, concat(upper(substring(first_name, 1, 1)), lower(substring(first_name, 2)), ' ', last_name,' ','-',' ', lower(email)) as 'concat' from sakila.customer;

-- 11. What's the length of the longest film title?
select max(length(title)) from film;
