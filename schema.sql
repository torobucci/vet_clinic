CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name varchar,
    date_of_birth date,
    escape_attempts int,
    neutered bool,
    weight_kg decimal
);

ALTER TABLE animals
ADD COLUMN species varchar;

CREATE TABLE owners (
  id int GENERATED ALWAYS AS IDENTITY,
  full_name varchar,
  age int,
  PRIMARY KEY(id)
);

CREATE TABLE species (
  id int GENERATED ALWAYS AS IDENTITY,
  name varchar,
  PRIMARY KEY(id)
);

ALTER TABLE REMOVE species;
ALTER TABLE animals ADD species_id int REFERENCES species(id);
ALTER TABLE animals ADD owner_id int REFERENCES owners(id);




