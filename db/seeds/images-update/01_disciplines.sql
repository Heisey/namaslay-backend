/*
db/seeds/01_disciplines.sql
*/

DROP TABLE IF EXISTS disciplines CASCADE;

CREATE TABLE disciplines (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  description TEXT,
  imageUrlSquare VARCHAR(255),
  imageUrlCutout VARCHAR(255)
);

INSERT INTO disciplines (name, description, imageUrlSquare, imageUrlCutout) VALUES ('Vinyasa', 'Vinyasa is a style of yoga characterized by stringing postures together so that you move from one to another, seamlessly, using breath.  Commonly referred to as “flow” yoga.', 'https://s3.amazonaws.com/heisey.namaslay/completed/discipline/vinyasa.png', 'https://s3.amazonaws.com/heisey.namaslay/completed/discipline/vinyasa.png
');
INSERT INTO disciplines (name, description, imageUrlSquare, imageUrlCutout) VALUES ('Hatha', 'Hatha is a general category that includes most yoga styles. It is an old system that includes the practice of asanas (yoga postures) and pranayama (breathing exercises), which help bring peace to the mind and body, preparing the body for deeper spiritual practices such as meditation.', 'https://s3.amazonaws.com/heisey.namaslay/completed/discipline/hatha.png', 'https://s3.amazonaws.com/heisey.namaslay/completed/discipline/hatha.png');
INSERT INTO disciplines (name, description, imageUrlSquare, imageUrlCutout) VALUES ('Ashtanga', 'Intended to be a daily practice this powerful, healing practice is a specific sequence of postures (asanas) linking breath (pranayama) and movement (vinyasa.) Ashtanga is an athletic flow combining strength, flexibility and stamina for a complete practice.', 'https://s3.amazonaws.com/heisey.namaslay/completed/discipline/ashtanga.png', 'https://s3.amazonaws.com/heisey.namaslay/completed/discipline/ashtanga.png');
INSERT INTO disciplines (name, description, imageUrlSquare, imageUrlCutout) VALUES ('Yin', 'Yin Yoga is a slow-paced style of yoga as exercise, incorporating principles of traditional Chinese medicine, with asanas (postures) that are held for longer periods of time than in other styles.', 'https://s3.amazonaws.com/heisey.namaslay/completed/discipline/yin.png', 'https://s3.amazonaws.com/heisey.namaslay/completed/discipline/yin.png');
INSERT INTO disciplines (name, description, imageUrlSquare, imageUrlCutout) VALUES ('Hot Yoga', 'Hot yoga is a vigorous form of yoga performed in a very warm and humid studio. The purpose of hot yoga is to encourage sweating, which is believed to detoxify the body, as well as improve flexibility, boost stamina, improve overall fitness, burn calories, relieve stress and increase circulation.', 'https://s3.amazonaws.com/heisey.namaslay/completed/discipline/hot.png', 'https://s3.amazonaws.com/heisey.namaslay/completed/discipline/hot.png');
INSERT INTO disciplines (name, description, imageUrlSquare, imageUrlCutout) VALUES ('Power Yoga', 'Power yoga is a general term used to describe a vigorous approach to vinyasa-style yoga with emphasis on strength and flexibility.', 'https://s3.amazonaws.com/heisey.namaslay/completed/discipline/power.png', 'https://s3.amazonaws.com/heisey.namaslay/completed/discipline/power.png');
INSERT INTO disciplines (name, description, imageUrlSquare, imageUrlCutout) VALUES ('Prenatal Yoga', 'Prenatal yoga is a multifaceted approach to prenatal exercise that encourages stretching, mental centering and focused breathing.', 'https://s3.amazonaws.com/heisey.namaslay/completed/discipline/prenatal.png', 'https://s3.amazonaws.com/heisey.namaslay/completed/discipline/prenatal.png');

INSERT INTO disciplines (name, description, imageUrlSquare, imageUrlCutout) VALUES ('Beer Yoga', 'Beer yoga is a yoga hybrid in which we turn our studio into a taproom where students can drink a beer before, during, or after their yoga practice. Or all three. We aren''t judging.', 'https://s3.amazonaws.com/heisey.namaslay/completed/discipline/beer.png', 'https://s3.amazonaws.com/heisey.namaslay/completed/discipline/beer.png');
INSERT INTO disciplines (name, description, imageUrlSquare, imageUrlCutout) VALUES ('Willie Nelson Yoga', 'We don''t actually have Willie Nelson Yoga, we just love this photo.', 'https://s3.amazonaws.com/heisey.namaslay/completed/discipline/willie.png', 'https://s3.amazonaws.com/heisey.namaslay/completed/discipline/willie.png');
