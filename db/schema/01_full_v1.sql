DROP TABLE IF EXISTS students CASCADE;
DROP TABLE IF EXISTS teachers CASCADE;
DROP TABLE IF EXISTS subscriptions CASCADE;
DROP TABLE IF EXISTS programs CASCADE;
DROP TABLE IF EXISTS program_dates CASCADE;
DROP TABLE IF EXISTS dates CASCADE;
DROP TABLE IF EXISTS days CASCADE;
DROP TABLE IF EXISTS times CASCADE;
DROP TABLE IF EXISTS day_times CASCADE;
DROP TABLE IF EXISTS program_teachers CASCADE;
DROP TABLE IF EXISTS disciplines CASCADE;
DROP TABLE IF EXISTS classes CASCADE;
DROP TABLE IF EXISTS teacher_reviews CASCADE;
DROP TABLE IF EXISTS session_reviews CASCADE;
DROP TABLE IF EXISTS sessions CASCADE;

CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255)
);

CREATE TABLE teachers (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  bio TEXT
);

CREATE TABLE subscriptions (
  id SERIAL PRIMARY KEY NOT NULL,
  type VARCHAR(255),
  student_id INTEGER,
  sessions_remaining INTEGER
);

CREATE TABLE programs (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  description TEXT,
  difficulty VARCHAR(255),
  start_date DATE,
  end_date DATE
);

CREATE TABLE program_dates (
  id SERIAL PRIMARY KEY NOT NULL,
  program_id INTEGER,
  date_id INTEGER
);

CREATE TABLE dates (
  id SERIAL PRIMARY KEY NOT NULL,
  date DATE
);

CREATE TABLE days (
  id SERIAL PRIMARY KEY NOT NULL,
  day VARCHAR(255),
);

CREATE TABLE times (
  id SERIAL PRIMARY KEY NOT NULL,
  time VARCHAR(255),
);

CREATE TABLE day_times (
  id SERIAL PRIMARY KEY NOT NULL,
  day_id INTEGER,
  time_id INTEGER,
  class_id INTEGER
);

CREATE TABLE program_teachers (
  id SERIAL PRIMARY KEY NOT NULL,
  teacher_id INTEGER,
  program_id INTEGER
);

CREATE TABLE disciplines (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  description TEXT
);

CREATE TABLE classes (
  id SERIAL PRIMARY KEY NOT NULL,
  difficulty VARCHAR(255),
  teacher_id INTEGER,
  spots INTEGER,
  program_id INTEGER,
  discipline_id INTEGER,
);

CREATE TABLE teacher_reviews (
  id SERIAL PRIMARY KEY NOT NULL,
  student_id INTEGER,
  content TEXT,
  teacher_id INTEGER,
  rating INTEGER,
  date DATE
);

CREATE TABLE session_reviews (
  id SERIAL PRIMARY KEY NOT NULL,
  student_id INTEGER,
  content TEXT,
  rating INTEGER,
  date DATE,
  session_id INTEGER
);

CREATE TABLE sessions (
  id SERIAL PRIMARY KEY NOT NULL,
  date DATE,
  student_id INTEGER,
  paid BOOLEAN,
  status VARCHAR(255),
  class_id INTEGER
);
