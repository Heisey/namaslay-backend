/*
db/seeds/01_classes_TR.sql
*/

-- DROP TABLE IF EXISTS classes CASCADE;

-- CREATE TABLE classes (
--   id SERIAL PRIMARY KEY NOT NULL,
--   teacher_id INTEGER,
--   name VARCHAR(255),
--   program_id INTEGER,
--   start_time INTEGER,
--   spotsAvailable INTEGER DEFAULT 25,
--   discipline_id INTEGER,
--   difficulty VARCHAR(255),
--   day_id INTEGER
-- );

/* Tuesday & Thursday */

/*8am*/
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 1', 3, 8, 3, 'Intermediate', 32);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 2', 3, 8, 3, 'Intermediate', 37);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 3', 3, 8, 3, 'Intermediate', 39);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 4', 3, 8, 3, 'Intermediate', 44);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 5', 3, 8, 3, 'Intermediate', 46);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 6', 3, 8, 3, 'Intermediate', 51);

/*10pm*/
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Intro Yoga 1', 2, 10, 2, 'Beginner', 32);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Intro Yoga 2', 2, 10, 2, 'Beginner', 37);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Intro Yoga 3', 2, 10, 2, 'Beginner', 39);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Intro Yoga 4', 2, 10, 2, 'Beginner', 44);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Intro Yoga 5', 2, 10, 2, 'Beginner', 46);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Intro Yoga 6', 2, 10, 2, 'Beginner', 51);

/*Noon - non-program */
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Lunchtime Flow', null, 12, 4, 'Beginner', 31);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Lunchtime Flow', null, 12, 4, 'Beginner', 36);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Lunchtime Flow', null, 12, 4, 'Beginner', 38);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Lunchtime Flow', null, 12, 4, 'Beginner', 43);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Lunchtime Flow', null, 12, 4, 'Beginner', 45);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Lunchtime Flow', null, 12, 4, 'Beginner', 50);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Lunchtime Flow', null, 12, 4, 'Beginner', 52);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Lunchtime Flow', null, 12, 4, 'Beginner', 57);

/*2pm*/
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Headstands 1', 1, 14, 6, 'Extreme', 32);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Headstands 2', 1, 14, 6, 'Extreme', 37);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Headstands 3', 1, 14, 6, 'Extreme', 39);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Headstands 4', 1, 14, 6, 'Extreme', 44);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Headstands 5', 1, 14, 6, 'Extreme', 46);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Headstands 6', 1, 14, 6, 'Extreme', 51);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Headstands 7', 1, 14, 6, 'Extreme', 53);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Headstands 8', 1, 14, 6, 'Extreme', 58);

/*4pm - non-program */

INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Hot Yoga for All Levels', null, 16, 4, 'All Levels', 31);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Hot Yoga for All Levels', null, 16, 4, 'All Levels', 36);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Hot Yoga for All Levels', null, 16, 4, 'All Levels', 38);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Hot Yoga for All Levels', null, 16, 4, 'All Levels', 42);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Hot Yoga for All Levels', null, 16, 4, 'All Levels', 45);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Hot Yoga for All Levels', null, 16, 4, 'All Levels', 50);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Hot Yoga for All Levels', null, 16, 4, 'All Levels', 52);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Hot Yoga for All Levels', null, 16, 4, 'All Levels', 57);

/*6pm*/
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Yoga for MMA 1', 4, 18, 6, 'Advanced', 32);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Yoga for MMA 2', 4, 18, 6, 'Advanced', 37);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Yoga for MMA 3', 4, 18, 6, 'Advanced', 39);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Yoga for MMA 4', 4, 18, 6, 'Advanced', 44);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Yoga for MMA 5', 4, 18, 6, 'Advanced', 46);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Yoga for MMA 6', 4, 18, 6, 'Advanced', 51);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Yoga for MMA 7', 4, 18, 6, 'Advanced', 53);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Yoga for MMA 8', 4, 18, 6, 'Advanced', 58);
