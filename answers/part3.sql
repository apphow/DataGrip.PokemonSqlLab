-- What is each pokemon's primary type?
SELECT pokemons.name, types.name FROM pokemons JOIN types ON primary_type = types.id;
SELECT p.name, t.name FROM pokemons p JOIN types t ON p.primary_type = t.id;

-- What is Rufflet's secondary type?
SELECT t.name, p.name, p.secondary_type FROM pokemons p JOIN types t ON p.secondary_type = t.id WHERE P.name = "Rufflet";

-- What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT p.name, pt.trainerID From pokemons p JOIN pokemon_trainer pt on p.id = pt.pokemon_id WHERE pt.trainerID = 303;

-- How many pokemon have a secondary type `Poison`
SELECT COUNT(p.name) FROM pokemons p JOIN types t ON p.secondary_type = t.id WHERE t.name = "Poison";

-- What are all the primary types and how many pokemon have that type?
SELECT t.name, COUNT(p.name) FROM pokemons p JOIN types t ON p.primary_type = t.id GROUP BY t.name;

-- How many pokemon at level 100 does each trainer with at least one level 100 pokemons have? (Hint: your query should not display a trainer
SELECT  trainerid, COUNT(pt.pokemon_id) FROM pokemon_trainer pt WHERE pokelevel = 100 group by trainerID;
SELECT COUNT(*) FROM pokemon_trainer WHERE pokelevel = 100 GROUP BY trainerID;

-- How many pokemon only belong to one trainer and no other?
SELECT COUNT(name) FROM (SELECT p.name, COUNT(p.name) FROM pokemons p JOIN pokemon_trainer pt on p.id = pt.pokemon_id group by p.name having COUNT(p.name) = 1) a;






