/*
db/seeds/01_disciplines.sql
*/

DROP TABLE IF EXISTS teachers;

CREATE TABLE teachers (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  bio TEXT,
  imageUrlSquare VARCHAR(255),
  imageUrlCutout VARCHAR(255)
);

INSERT INTO teachers (name, bio, imageUrlSquare, imageUrlCutout) VALUES ('Aleister Crowley', 'Aleister was an English occultist, ceremonial magician, poet, painter, novelist, and mountaineer. He founded the religion of Thelema, identifying himself as the prophet entrusted with guiding humanity into the Æon of Horus in the early 20th century. A prolific writer, he published widely over the course of his life.', 'https://s3.amazonaws.com/heisey.namaslay/completed/square/alester1.png', 'https://s3.amazonaws.com/heisey.namaslay/completed/cutout/alester1.png');
INSERT INTO teachers (name, bio, imageUrlSquare, imageUrlCutout) VALUES ('Yogi Berra', 'Yogi was an American professional baseball catcher, who later took on the roles of manager and coach. He played 19 seasons in Major League Baseball (MLB) (1946–1963, 1965), all but the last for the New York Yankees. He was an 18-time All-Star and won 10 World Series championships as a player—more than any other player in MLB history', 'https://s3.amazonaws.com/heisey.namaslay/completed/square/yogiBerra.png', 'https://s3.amazonaws.com/heisey.namaslay/completed/cutout/yopgiBerra2.png');
INSERT INTO teachers (name, bio, imageUrlSquare, imageUrlCutout) VALUES ('Betty White', 'Betty is an American actress and comedian, with the longest television career of any entertainer, spanning more than 80 years. Regarded as a pioneer of television, she was one of the first women to exert control both in front of and behind the camera and is recognized as the first woman to produce a sitcom (Life with Elizabeth), which contributed to her receiving the honorary title Mayor of Hollywood in 1955.', 'https://s3.amazonaws.com/heisey.namaslay/completed/square/BettyWhite.png', 'https://s3.amazonaws.com/heisey.namaslay/completed/cutout/BettyWhite.png');
INSERT INTO teachers (name, bio, imageUrlSquare, imageUrlCutout) VALUES ('Nikola Tesla', 'Nikola was a Serbian-American inventor, electrical engineer, mechanical engineer, and futurist who is best known for his contributions to the design of the modern alternating current (AC) electricity supply system.', 'https://s3.amazonaws.com/heisey.namaslay/completed/square/tesla.png', 'https://s3.amazonaws.com/heisey.namaslay/completed/cutout/tesla2.png');
