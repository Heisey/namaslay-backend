/*
db/seeds/01_difficulties.sql
*/

DROP TABLE IF EXISTS difficulties CASCADE;

CREATE TABLE difficulties (
  id SERIAL PRIMARY KEY NOT NULL,
  description TEXT,
  imageurl VARCHAR(255)
);

INSERT INTO difficulties (description, imageurl) VALUES ('All Levels', 'http://www.vinylsilhouettes.com/content/images/thumbs/0003433_yoga-pose-11-decor-silhouette-decals.gif');

INSERT INTO difficulties (description, imageurl) VALUES ('Beginner', 'https://thumbs.dreamstime.com/b/yoga-watercolor-silhouette-yoga-watercolor-silhouette-relaxation-meditation-watercolor-silhouette-vector-illustration-115207552.jpg
');
INSERT INTO difficulties (description, imageurl) VALUES ('Intermediate', 'https://programminglibrarian.org/sites/default/files/styles/medium/public/white_exercise-2727123_1280_tn.jpg?itok=StAw4Q1s');
INSERT INTO difficulties (description, imageurl) VALUES ('Advanced', 'https://www.pngitem.com/pimgs/m/20-207491_aerial-yoga-asana-exercise-silhouette-yoga-dancer-pose.png');
INSERT INTO difficulties (description, imageurl) VALUES ('Extreme', 'https://www.pngkit.com/png/detail/176-1768802_silhouette-yoga-png-clip-black-and-white-download.png');
