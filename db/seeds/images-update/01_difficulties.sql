/*
db/seeds/01_difficulties.sql
*/

DROP TABLE IF EXISTS difficulties CASCADE;

CREATE TABLE difficulties (
  id SERIAL PRIMARY KEY NOT NULL,
  description TEXT,
  imageUrlSquare VARCHAR(255),
  imageUrlCutout VARCHAR(255)
);

INSERT INTO difficulties (description, imageUrlSquare, imageUrlCutout) VALUES ('All Levels', 'https://s3.amazonaws.com/heisey.namaslay/completed/programs/backs.png', 'https://s3.amazonaws.com/heisey.namaslay/completed/programs/backs.png');

INSERT INTO difficulties (description, imageUrlSquare, imageUrlCutout) VALUES ('Beginner', 'https://s3.amazonaws.com/heisey.namaslay/completed/programs/begginers.png', 'https://s3.amazonaws.com/heisey.namaslay/completed/programs/begginers.png
');
INSERT INTO difficulties (description, imageUrlSquare, imageUrlCutout) VALUES ('Intermediate', 'https://s3.amazonaws.com/heisey.namaslay/completed/programs/mma.png', 'https://s3.amazonaws.com/heisey.namaslay/completed/programs/mma.png');
INSERT INTO difficulties (description, imageUrlSquare, imageUrlCutout) VALUES ('Advanced', 'https://s3.amazonaws.com/heisey.namaslay/completed/discipline/hot.png', 'https://s3.amazonaws.com/heisey.namaslay/completed/discipline/hot.png');
INSERT INTO difficulties (description, imageUrlSquare, imageUrlCutout) VALUES ('Extreme', 'https://s3.amazonaws.com/heisey.namaslay/completed/programs/onHead.png', 'https://s3.amazonaws.com/heisey.namaslay/completed/programs/onHead.png');
