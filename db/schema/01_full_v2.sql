/*
Tables for scheduling functionality only
db/schema/01_full_v2.sql
*/
DROP TABLE IF EXISTS teachers CASCADE;
DROP TABLE IF EXISTS programs CASCADE;
DROP TABLE IF EXISTS days CASCADE;
DROP TABLE IF EXISTS disciplines CASCADE;
DROP TABLE IF EXISTS classes CASCADE;

CREATE TABLE teachers (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  bio TEXT,
  imageUrl VARCHAR(255) DEFAULT 'https://images-na.ssl-images-amazon.com/images/I/41GbOJ5MOiL._AC_SX425_.jpg'
);

CREATE TABLE programs (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  description TEXT,
  difficulty VARCHAR(255),
  start_date DATE,
  end_date DATE
);

CREATE TABLE disciplines (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  description TEXT
);

CREATE TABLE days (
  id SERIAL PRIMARY KEY NOT NULL,
  year INTEGER,
  monthNumber INTEGER,
  dayNumber INTEGER
);

CREATE TABLE classes (
  id SERIAL PRIMARY KEY NOT NULL,
  teacher_id INTEGER,
  name VARCHAR(255),
  program_id INTEGER,
  start_time TIME,
  spotsAvailable INTEGER DEFAULT 25,
  discipline_id INTEGER,
  difficulty VARCHAR(255),
  day_id INTEGER
);
