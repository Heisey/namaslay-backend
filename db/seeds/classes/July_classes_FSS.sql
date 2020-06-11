/*
db/seeds/01_classes_FSS.sql
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

/*Friday*/

/*8am*/
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 1', 3, 8, 3, 'Intermediate', 33);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 2', 3, 8, 3, 'Intermediate', 40);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 3', 3, 8, 3, 'Intermediate', 47);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 4', 3, 8, 3, 'Intermediate', 54);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 5', 3, 8, 3, 'Intermediate', 61);

/*10am*/
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 1', 5, 10, 1, 'All Levels', 33);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 2', 5, 10, 1, 'All Levels', 40);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 3', 5, 10, 1, 'All Levels', 47);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 4', 5, 10, 1, 'All Levels', 54);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 5', 5, 10, 1, 'All Levels', 61);

/*Noon closed*/

/*2pm non-program*/
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Afternoon Hatha', null, 14, 1, 'All Levels', 33);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Afternoon Hatha', null, 14, 1, 'All Levels', 40);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Afternoon Hatha', null, 14, 1, 'All Levels', 47);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Afternoon Hatha', null, 14, 1, 'All Levels', 54);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Afternoon Hatha', null, 14, 1, 'All Levels', 61);

/*4pm - non-program */

INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 33);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 40);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 47);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 54);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 61);

/*6pm - non-program */

INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Beginner Hot Yoga', null, 18, 1, 'Beginner', 33);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Beginner Hot Yoga', null, 18, 1, 'Beginner', 40);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Beginner Hot Yoga', null, 18, 1, 'Beginner', 47);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Beginner Hot Yoga', null, 18, 1, 'Beginner', 54);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Beginner Hot Yoga', null, 18, 1, 'Beginner', 61);


/*Saturday*/

/*8am - non-program*/
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 1', 3, 8, 3, 'Intermediate', 34);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 2', 3, 8, 3, 'Intermediate', 41);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 3', 3, 8, 3, 'Intermediate', 48);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 4', 3, 8, 3, 'Intermediate', 55);

/*10am*/
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 1', 5, 10, 1, 'All Levels', 34);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 2', 5, 10, 1, 'All Levels', 41);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 3', 5, 10, 1, 'All Levels', 48);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 4', 5, 10, 1, 'All Levels', 55);

/*Noon - closed*/

/*2pm - closed*/

/*4pm - non-program */

INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 34);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 41);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 48);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 55);

/*6pm - non-program */

INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 18, 4, 'Beginner', 34);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 18, 4, 'Beginner', 41);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 18, 4, 'Beginner', 48);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 18, 4, 'Beginner', 55);

/*Sunday*/

/*8am - non-program*/
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 1', 3, 8, 3, 'Intermediate', 35);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 2', 3, 8, 3, 'Intermediate', 42);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 3', 3, 8, 3, 'Intermediate', 49);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 4', 3, 8, 3, 'Intermediate', 56);

/*10am*/
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 1', 5, 10, 1, 'All Levels', 35);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 2', 5, 10, 1, 'All Levels', 42);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 3', 5, 10, 1, 'All Levels', 49);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 4', 5, 10, 1, 'All Levels', 56);


/*Noon - closed*/

/*2pm - closed*/

/*4pm - non-program */

INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 35);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 42);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 49);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 56);

/*6pm - non-program */

INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 18, 4, 'Beginner', 35);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 18, 4, 'Beginner', 42);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 18, 4, 'Beginner', 49);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 18, 4, 'Beginner', 56);
