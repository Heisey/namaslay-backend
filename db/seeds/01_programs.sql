/*
db/seeds/01_programs.sql
*/

DROP TABLE IF EXISTS programs CASCADE;

CREATE TABLE programs (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  description TEXT,
  difficulty VARCHAR(255),
  start_date DATE,
  end_date DATE
);

INSERT INTO programs (name, description, difficulty) VALUES ('Intro to Standing on Your Head', 'This program was inspired by Jeremy Holman''s delightful commentary, and is intented to injure you for hilarity and spectacle', 'Extreme');

INSERT INTO programs (name, description, difficulty) VALUES ('Yoga for Absolute Beginners', 'This 14-day absolute beginners yoga program with Betty White introduces yoga to all levels, all body types and all ages. Her gentle, clear approach helps answer all of the questions you may have and helps you learn everything you need to know in order to feel comfortable taking future class anywhere, anytime.', 'Beginner');
INSERT INTO programs (name, description, difficulty) VALUES ('Yoga for Optimal Lower Back Health', 'In this  program you will use core strength to strengthen your body and provide the support that your lower back needs, while using lower back stretches, and a variety of other stretches, to releasing key muscles that are often responsible for the pain and discomfort you may be feeling. You will also learn to relax your nervous system, the source of tension in your body, and that will help you further release the pattern of tension that is causing the problems you are experiencing.', 'Intermediate');
INSERT INTO programs (name, description, difficulty) VALUES ('Yoga for MMA', 'Yoga is one of the best ways to improve strength, balance, flexibility and focus. More flexible fighters can perform a wider range of techniques, both offensive and defensive, than less flexible fighters. Flexibility also improves recovery time and endurance, so you can train harder and improve faster. Yoga also conditions your whole body to become strong, from the core of your being to the outer extremities. Core strength in particular is what gives MMA and Jiu Jitsu fighters the stability and manoeuvrability they need to over-power their opponent.', 'Advanced');
INSERT INTO programs (name, description, difficulty) VALUES ('Energize Your Body and Mind', 'This 30-day yoga program features 3 classes per week that are designed to help you feel more energy and vitality in your daily life. It''s for intermediate students, but is also accessible to beginners who are looking for a challenge.', 'Intermediate');
INSERT INTO programs (name, description, difficulty) VALUES ('Prenatal Wellness', 'This program is a multifaceted approach to prenatal exercise that encourages stretching, mental centering and focused breathing.', 'Prenatal');
