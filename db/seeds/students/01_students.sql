DROP TABLE IF EXISTS students CASCADE;

CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255)
);

INSERT INTO students (name, email, password) VALUES ('Willie Nelson', 'willie@nelson.com', 'password');
