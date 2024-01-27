-- Create a new database
DROP DATABASE If exampledb;
CREATE DATABASE exampledb;

-- Connect to the newly created database
-- Note: The \c command is specific to psql and cannot be used in a SQL file.
-- You will need to connect to the database before running this SQL file.

-- Create a new table
CREATE TABLE users(id SERIAL PRIMARY KEY, first_name TEXT, last_name TEXT, username TEXT, pass TEXT);

-- Insert an entry into the table
INSERT INTO users (first_name, last_name, username, pass) VALUES ('sahil', 'khan', 'sahilkhan', '123');


