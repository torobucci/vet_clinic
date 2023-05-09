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
