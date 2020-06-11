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
  end_date DATE,
  imageurl VARCHAR(255)
);

INSERT INTO programs (name, description, difficulty, imageurl) VALUES ('Intro to Standing on Your Head', 'This program was inspired by Jeremy Holman''s delightful commentary, and is intented to injure you for hilarity and spectacle', 'Extreme', 'https://media.gettyimages.com/photos/woman-in-perfect-headstand-picture-id720064281?s=612x612');

INSERT INTO programs (name, description, difficulty, imageurl) VALUES ('Yoga for Absolute Beginners', 'This 14-day absolute beginners yoga program with Betty White introduces yoga to all levels, all body types and all ages. Her gentle, clear approach helps answer all of the questions you may have and helps you learn everything you need to know in order to feel comfortable taking future class anywhere, anytime.', 'Beginner', 'https://www.history.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTY0OTE4ODAzMDQwMzE0Njg1/yoga-gettyimages-1142820079-promo.jpg');
INSERT INTO programs (name, description, difficulty, imageurl) VALUES ('Yoga for Optimal Lower Back Health', 'In this  program you will use core strength to strengthen your body and provide the support that your lower back needs, while using lower back stretches, and a variety of other stretches, to releasing key muscles that are often responsible for the pain and discomfort you may be feeling. You will also learn to relax your nervous system, the source of tension in your body, and that will help you further release the pattern of tension that is causing the problems you are experiencing.', 'Intermediate', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTAR2YaITT_4bJMsGcsczvPTi0ysKE6NKrygpw38jxxEtgE4GXU&usqp=CAU');
INSERT INTO programs (name, description, difficulty, imageurl) VALUES ('Yoga for MMA', 'Yoga is one of the best ways to improve strength, balance, flexibility and focus. More flexible fighters can perform a wider range of techniques, both offensive and defensive, than less flexible fighters. Flexibility also improves recovery time and endurance, so you can train harder and improve faster. Yoga also conditions your whole body to become strong, from the core of your being to the outer extremities. Core strength in particular is what gives MMA and Jiu Jitsu fighters the stability and manoeuvrability they need to over-power their opponent.', 'Advanced', 'https://images.everydayhealth.com/images/health-benefits-of-yoga-00-722x406.jpg?w=768');
INSERT INTO programs (name, description, difficulty, imageurl) VALUES ('Energize Your Body and Mind', 'This 30-day yoga program features 3 classes per week that are designed to help you feel more energy and vitality in your daily life. It''s for intermediate students, but is also accessible to beginners who are looking for a challenge.', 'Intermediate', 'https://previews.123rf.com/images/stylephotographs/stylephotographs1802/stylephotographs180200072/95144399-young-people-doing-yoga-for-wellness-in-summer-in-nature.jpg');
