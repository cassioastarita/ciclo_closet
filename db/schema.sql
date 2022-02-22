CREATE DATABASE ciclo_closet_db;
\c ciclo_closet_db

CREATE TABLE shop(
  id SERIAL PRIMARY KEY,
  name TEXT,
  size TEXT,
  brand TEXT,
  image_url TEXT
);




CREATE TABLE users(id SERIAL PRIMARY KEY, first_name TEXT, last_name TEXT, email TEXT);

ALTER TABLE users ADD COLUMN password_digest TEXT;
