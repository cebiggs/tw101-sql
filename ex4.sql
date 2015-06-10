INSERT INTO person_pet (person_id, pet_id) VALUES (0,0);
INSERT INTO person_pet VALUES (0, 1);
INSERT INTO person_pet VALUES (1, 2);
INSERT INTO person_pet VALUES (1, 3);
INSERT INTO person_pet VALUES (1, 4);

-- Extra Credit
-- Using this table, could a pet be owned by more than one person? Is that logically 
-- possible? What about the family dog? Wouldn't everyone in the family technically own it?
---- Yes, you could have many person_id's with the same pet_id.

-- Given the above, and given that you have an alternative design that puts the pet_id in 
-- the person table, which design is better for this situation?
---- I think this design is better.  It's better to have a join table because you can have
---- more complex relationships (one person can have many pets, and one pet can have many
---- owners).