/*
db/seeds/01_disciplines.sql
*/

DROP TABLE IF EXISTS disciplines CASCADE;

CREATE TABLE disciplines (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  description TEXT
);

INSERT INTO disciplines (name, description) VALUES ('Vinyasa', 'Vinyasa is a style of yoga characterized by stringing postures together so that you move from one to another, seamlessly, using breath.  Commonly referred to as “flow” yoga.');
INSERT INTO disciplines (name, description) VALUES ('Hatha', 'Hatha is a general category that includes most yoga styles. It is an old system that includes the practice of asanas (yoga postures) and pranayama (breathing exercises), which help bring peace to the mind and body, preparing the body for deeper spiritual practices such as meditation.');
INSERT INTO disciplines (name, description) VALUES ('Ashtanga', 'Intended to be a daily practice this powerful, healing practice is a specific sequence of postures (asanas) linking breath (pranayama) and movement (vinyasa.) Ashtanga is an athletic flow combining strength, flexibility and stamina for a complete practice.');
INSERT INTO disciplines (name, description) VALUES ('Yin', 'Yin Yoga is a slow-paced style of yoga as exercise, incorporating principles of traditional Chinese medicine, with asanas (postures) that are held for longer periods of time than in other styles.');
INSERT INTO disciplines (name, description) VALUES ('Hot Yoga', 'Hot yoga is a vigorous form of yoga performed in a very warm and humid studio. The purpose of hot yoga is to encourage sweating, which is believed to detoxify the body, as well as improve flexibility, boost stamina, improve overall fitness, burn calories, relieve stress and increase circulation.');
INSERT INTO disciplines (name, description) VALUES ('Power Yoga', 'Power yoga is a general term used to describe a vigorous approach to vinyasa-style yoga with emphasis on strength and flexibility.');
