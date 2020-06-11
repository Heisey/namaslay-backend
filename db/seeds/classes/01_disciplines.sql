/*
db/seeds/01_disciplines.sql
*/

DROP TABLE IF EXISTS disciplines CASCADE;

CREATE TABLE disciplines (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  description TEXT,
  imageurl VARCHAR(255)
);

INSERT INTO disciplines (name, description, imagurl) VALUES ('Vinyasa', 'Vinyasa is a style of yoga characterized by stringing postures together so that you move from one to another, seamlessly, using breath.  Commonly referred to as “flow” yoga.', 'https://programminglibrarian.org/sites/default/files/styles/medium/public/white_exercise-2727123_1280_tn.jpg?itok=StAw4Q1s
');
INSERT INTO disciplines (name, description, imagurl) VALUES ('Hatha', 'Hatha is a general category that includes most yoga styles. It is an old system that includes the practice of asanas (yoga postures) and pranayama (breathing exercises), which help bring peace to the mind and body, preparing the body for deeper spiritual practices such as meditation.', 'https://www.publicdomainpictures.net/pictures/310000/velka/yoga-woman-pose-silhouette.jpg');
INSERT INTO disciplines (name, description, imagurl) VALUES ('Ashtanga', 'Intended to be a daily practice this powerful, healing practice is a specific sequence of postures (asanas) linking breath (pranayama) and movement (vinyasa.) Ashtanga is an athletic flow combining strength, flexibility and stamina for a complete practice.', 'https://www.pngitem.com/pimgs/m/20-207491_aerial-yoga-asana-exercise-silhouette-yoga-dancer-pose.png');
INSERT INTO disciplines (name, description, imagurl) VALUES ('Yin', 'Yin Yoga is a slow-paced style of yoga as exercise, incorporating principles of traditional Chinese medicine, with asanas (postures) that are held for longer periods of time than in other styles.', 'https://thumbs.dreamstime.com/b/yoga-watercolor-silhouette-yoga-watercolor-silhouette-relaxation-meditation-watercolor-silhouette-vector-illustration-115207552.jpg');
INSERT INTO disciplines (name, description, imagurl) VALUES ('Hot Yoga', 'Hot yoga is a vigorous form of yoga performed in a very warm and humid studio. The purpose of hot yoga is to encourage sweating, which is believed to detoxify the body, as well as improve flexibility, boost stamina, improve overall fitness, burn calories, relieve stress and increase circulation.', 'https://www.pngitem.com/pimgs/m/230-2308074_yoga-silhouette-lotus-position-clip-art-yoga-poses.png
');
INSERT INTO disciplines (name, description, imagurl) VALUES ('Power Yoga', 'Power yoga is a general term used to describe a vigorous approach to vinyasa-style yoga with emphasis on strength and flexibility.', 'https://www.pngkit.com/png/detail/176-1768802_silhouette-yoga-png-clip-black-and-white-download.png');
INSERT INTO disciplines (name, description, imagurl) VALUES ('Prenatal Yoga', 'Prenatal yoga is a multifaceted approach to prenatal exercise that encourages stretching, mental centering and focused breathing.', 'https://ampoweryoga.co.uk/pregnancyyoga/');

INSERT INTO disciplines (name, description, imagurl) VALUES ('Beer Yoga', 'Beer yoga is a yoga hybrid in which we turn our studio into a taproom where students can drink a beer before, during, or after their yoga practice. Or all three. We aren''t judging.', 'https://media.gq.com/photos/590cfed3ee7e6447b1025c5c/16:9/w_2560%2Cc_limit/beer-yoga-fitness.jpg');
INSERT INTO disciplines (name, description, imagurl) VALUES ('Willie Nelson Yoga', 'We don''t actually have Willie Nelson Yoga, we just love this photo.', 'https://i.etsystatic.com/7817799/r/il/2cd324/1492405296/il_794xN.1492405296_ci7j.jpg ');
