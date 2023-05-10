CREATE TABLE animals (
    id int,
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

DROP TABLE animals;
CREATE TABLE animals (
  id SERIAL PRIMARY KEY,
  name varchar,
  date_of_birth date,
  escape_attempts int,
  neutered bool,
  weight_kg decimal,
  species_id int,
  owner_id int,
  CONSTRAINT fk_species FOREIGN KEY(species_id) REFERENCES species(id),
  CONSTRAINT fk_owner FOREIGN KEY(owner_id) REFERENCES owners(id)
);




