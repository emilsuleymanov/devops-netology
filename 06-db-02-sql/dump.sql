CREATE DATABASE test_db;
CREATE ROLE "test-admin-user" SUPERUSER NOCREATEDB NOCREATEROLE NOINHERIT LOGIN PASSWORD 'test_pass';
CREATE ROLE "test-simple-user" NOSUPERUSER NOCREATEDB NOCREATEROLE NOINHERIT LOGIN PASSWORD 'simple_pass';

\connect test_db;
CREATE TABLE orders (id integer, name text, price integer, PRIMARY KEY (id));
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE orders TO "test-simple-user";

CREATE TABLE clients (id integer PRIMARY KEY, lastname text, country text, booking integer, FOREIGN KEY (booking) REFERENCES orders (Id));
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE clients TO "test-simple-user";
