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
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 1', 3, 8, 3, 'Intermediate', 3);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 2', 3, 8, 3, 'Intermediate', 10);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 3', 3, 8, 3, 'Intermediate', 17);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 4', 3, 8, 3, 'Intermediate', 24);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 5', 3, 8, 3, 'Intermediate', 31);

/*10am*/
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 1', 5, 10, 1, 'All Levels', 3);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 2', 5, 10, 1, 'All Levels', 10);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 3', 5, 10, 1, 'All Levels', 17);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 4', 5, 10, 1, 'All Levels', 24);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 5', 5, 10, 1, 'All Levels', 31);

/*Noon closed*/

/*2pm non-program*/
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Afternoon Hatha', null, 14, 1, 'All Levels', 3);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Afternoon Hatha', null, 14, 1, 'All Levels', 10);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Afternoon Hatha', null, 14, 1, 'All Levels', 17);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Afternoon Hatha', null, 14, 1, 'All Levels', 24);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Afternoon Hatha', null, 14, 1, 'All Levels', 31);

/*4pm - non-program */

INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 3);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 10);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 17);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 24);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 31);

/*6pm - non-program */

INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Beginner Hot Yoga', null, 18, 1, 'Beginner', 3);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Beginner Hot Yoga', null, 18, 1, 'Beginner', 10);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Beginner Hot Yoga', null, 18, 1, 'Beginner', 17);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Beginner Hot Yoga', null, 18, 1, 'Beginner', 24);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (1, 'Beginner Hot Yoga', null, 18, 1, 'Beginner', 31);


/*Saturday*/

/*8am - non-program*/
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 1', 3, 8, 3, 'Intermediate', 4);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 2', 3, 8, 3, 'Intermediate', 11);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 3', 3, 8, 3, 'Intermediate', 18);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 4', 3, 8, 3, 'Intermediate', 25);

/*10am*/
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 1', 5, 10, 1, 'All Levels', 4);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 2', 5, 10, 1, 'All Levels', 11);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 3', 5, 10, 1, 'All Levels', 18);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 4', 5, 10, 1, 'All Levels', 25);

/*Noon - closed*/

/*2pm - closed*/

/*4pm - non-program */

INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 4);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 11);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 18);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 25);

/*6pm - non-program */

INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 18, 4, 'Beginner', 4);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 18, 4, 'Beginner', 11);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 18, 4, 'Beginner', 18);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 18, 4, 'Beginner', 25);

/*Sunday*/

/*8am - non-program*/
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 1', 3, 8, 3, 'Intermediate', 5);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 2', 3, 8, 3, 'Intermediate', 12);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 3', 3, 8, 3, 'Intermediate', 19);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (2, 'Optimal Back Health 4', 3, 8, 3, 'Intermediate', 26);

/*10am*/
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 1', 5, 10, 1, 'All Levels', 5);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 2', 5, 10, 1, 'All Levels', 12);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 3', 5, 10, 1, 'All Levels', 19);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Energize Your Body & Mind 4', 5, 10, 1, 'All Levels', 26);


/*Noon - closed*/

/*2pm - closed*/

/*4pm - non-program */

INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 5);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 12);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 19);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (4, 'Intermediate Hot Yoga', null, 16, 1, 'Intermediate', 26);

/*6pm - non-program */

INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 18, 4, 'Beginner', 5);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 18, 4, 'Beginner', 12);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 18, 4, 'Beginner', 19);
INSERT INTO classes (teacher_id, name, program_id, start_time, discipline_id, difficulty, day_id) VALUES (3, 'Restorative Yin', null, 18, 4, 'Beginner', 26);
