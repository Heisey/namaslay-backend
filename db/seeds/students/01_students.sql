CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255)
);

INSERT INTO students (first_name, last_name, email, password) VALUES ('Astro', 'Domine', 'piper@thegatesofdawn.com', 'password');

CREATE TABLE passes (
  id SERIAL PRIMARY KEY NOT NULL,
  type VARCHAR(255),
  student_id INTEGER,
  sessions_remaining INTEGER
);

-- 1, 5, 25, and monthly
-- single, 5-pack, 25-pack, monthly

INSERT INTO passes (type, student_id, sessions_remaining)VALUES ('5-pack', 1, 5);

CREATE TABLE sessions (
  id SERIAL PRIMARY KEY NOT NULL,
  student_id INTEGER,
  class_id INTEGER,
  status VARCHAR(255)
);
