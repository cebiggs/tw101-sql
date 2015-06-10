-- Selecting Data
-- format: SELECT what FROM table(s) WHERE (tests)

SELECT * FROM person;

SELECT name, age FROM pet;

SELECT name, age FROM pet WHERE dead = 0;

SELECT * FROM person WHERE first_name != "Zed";

-- Extra Credit
-- Write a query that finds all pets older than 10 years.
SELECT * FROM pet  WHERE age > 10;

-- Write a query to find all people younger than you. Do one that's older.
SELECT * FROM person WHERE age > (SELECT age FROM person WHERE person.id = 1);
SELECT * FROM person WHERE age < (SELECT age FROM person WHERE person.id = 1);

-- Write a query that uses more than one test in the WHERE clause using the AND to write it.
SELECT * FROM pet WHERE breed = "Cat" AND age > 0;

-- Do another query that searches for rows using 3 columns and uses both AND and OR operators.
SELECT * FROM pet WHERE breed = "Unicorn" OR breed = "Cat" AND dead = 0 and age > 1;