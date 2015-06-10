CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);

CREATE TABLE pet (
	id INTEGER PRIMARY KEY,
	name TEXT,
	breed TEXT,
	age INTEGER,
	dead INTEGER
);

CREATE TABLE person_pet (
	person_id INTEGER,
	pet_id INTEGER
);

-- Extra Credit

-- In these tables I made a 3rd relation table to link them. How would you get rid of this
-- relation table person_pet and put that information right into person? What's the 
-- implication of this change?
---- You could put pet_id into the person table.  This would imply that you could only have
---- one pet per person.

-- If you can put one row into person_pet, can you put more than one? How would you record
-- a crazy cat lady with 50 cats?
---- You can have the same person_id for multiple pet_id's, and vice versa.

-- Search for "sqlite3 datatypes" in your favorite search engine and go read the 
-- "Datatypes In SQLite Version 3" document. Take notes on what types you can use and other
-- things that seem important. We'll cover more later.
---- NULL, INTEGER, REAL, TEXT, BLOB
---- No booleans, use 1 or 0
---- No date/time types, instead use date/time functions to store as TEXT, REAL, or INTEGER
