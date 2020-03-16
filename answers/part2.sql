-- What are all the types of pokemon that a pokemon can have?
SELECT DISTINCT NAME FROM types;

-- What is the name of the pokemon with id 45?
SELECT NAME FROM pokemons WHERE ID = 45;

-- How many pokemon are there?
SELECT COUNT(ID) FROM pokemons;

--How many types are there?
SELECT COUNT(ID) FROM TYPES;

-- How many pokemon have a secondary type?
SELECT COUNT(ID) FROM pokemons WHERE secondary_type IS NOT NULL;
SELECT COUNT(secondary_type) FROM pokemons;




