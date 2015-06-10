-- Recreate entire database
DROP TABLE person;
DROP TABLE pet;
DROP TABLE person_pet;

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

INSERT INTO person (id, first_name, last_name, age)
	VALUES (0, "Zed", "Shaw", 37);
	
INSERT INTO person (id, first_name, last_name, age)
	VALUES (1, "Cannon", "Biggs", 27);

INSERT INTO pet (id, name, breed, age, dead)
	VALUES (0, "Fluffy", "Unicorn", 1000, 0);

INSERT INTO pet 
	VALUES (1, "Gigantor", "Robot", 1, 1);

INSERT INTO pet (id, name, breed, age, dead)
	VALUES (2, "Kiki", "Cat", 11, 0);
	
INSERT INTO pet (id, name, breed, age, dead)
	VALUES (3, "Gabby", "Cat", 3, 0);
	
INSERT INTO pet (id, name, breed, age, dead)
	VALUES (4, "Baby", "Cat", 2, 0);

INSERT INTO person_pet (person_id, pet_id) VALUES (0,0);
INSERT INTO person_pet VALUES (0, 1);
INSERT INTO person_pet VALUES (1, 2);
INSERT INTO person_pet VALUES (1, 3);
INSERT INTO person_pet VALUES (1, 4);