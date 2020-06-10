/*
db/seeds/01_classes_MW.sql
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

/* Monday & Wednesday */

/* 8am */
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 1', 3, 8, 3, 'Intermediate', 1);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 2', 3, 8, 3, 'Intermediate', 6);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 3', 3, 8, 3, 'Intermediate', 8);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 4', 3, 8, 3, 'Intermediate', 13);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 5', 3, 8, 3, 'Intermediate', 15);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 6', 3, 8, 3, 'Intermediate', 20);

/*10am*/
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Intro Yoga 1', 2, 10, 2, 'Beginner', 1);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Intro Yoga 2', 2, 10, 2, 'Beginner', 6);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Intro Yoga 3', 2, 10, 2, 'Beginner', 8);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Intro Yoga 4', 2, 10, 2, 'Beginner', 13);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Intro Yoga 5', 2, 10, 2, 'Beginner', 15);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Intro Yoga 6', 2, 10, 2, 'Beginner', 20);

/*Noon - Non-program */

INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Lunchtime Flow', null, 12, 4, 'Beginner', 1);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Lunchtime Flow', null, 12, 4, 'Beginner', 6);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Lunchtime Flow', null, 12, 4, 'Beginner', 8);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Lunchtime Flow', null, 12, 4, 'Beginner', 13);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Lunchtime Flow', null, 12, 4, 'Beginner', 15);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Lunchtime Flow', null, 12, 4, 'Beginner', 20);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Lunchtime Flow', null, 12, 4, 'Beginner', 22);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Lunchtime Flow', null, 12, 4, 'Beginner', 27);

/*2pm*/
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Headstands 1', 1, 14, 6, 'Extreme', 1);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Headstands 2', 1, 14, 6, 'Extreme', 6);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Headstands 3', 1, 14, 6, 'Extreme', 8);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Headstands 4', 1, 14, 6, 'Extreme', 13);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Headstands 5', 1, 14, 6, 'Extreme', 15);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Headstands 6', 1, 14, 6, 'Extreme', 20);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Headstands 7', 1, 14, 6, 'Extreme', 22);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Headstands 8', 1, 14, 6, 'Extreme', 27);

/*4pm - non-program*/

INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Hot Yoga for All Levels', null, 16, 4, 'All Levels', 1);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Hot Yoga for All Levels', null, 16, 4, 'All Levels', 6);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Hot Yoga for All Levels', null, 16, 4, 'All Levels', 8);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Hot Yoga for All Levels', null, 16, 4, 'All Levels', 12);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Hot Yoga for All Levels', null, 16, 4, 'All Levels', 15);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Hot Yoga for All Levels', null, 16, 4, 'All Levels', 20);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Hot Yoga for All Levels', null, 16, 4, 'All Levels', 22);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Hot Yoga for All Levels', null, 16, 4, 'All Levels', 27);

/*6pm*/
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Yoga for MMA 1', 4, 18, 6, 'Advanced', 1);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Yoga for MMA 2', 4, 18, 6, 'Advanced', 6);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Yoga for MMA 3', 4, 18, 6, 'Advanced', 8);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Yoga for MMA 4', 4, 18, 6, 'Advanced', 13);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Yoga for MMA 5', 4, 18, 6, 'Advanced', 15);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Yoga for MMA 6', 4, 18, 6, 'Advanced', 20);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Yoga for MMA 7', 4, 18, 6, 'Advanced', 22);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Yoga for MMA 8', 4, 18, 6, 'Advanced', 27);

/*8pm - non-program*/

INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 20, 4, 'Beginner', 1);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 20, 4, 'Beginner', 6);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 20, 4, 'Beginner', 8);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 20, 4, 'Beginner', 13);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 20, 4, 'Beginner', 15);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 20, 4, 'Beginner', 20);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 20, 4, 'Beginner', 22);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 20, 4, 'Beginner', 27);
