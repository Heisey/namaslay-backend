/*
db/seeds/01_quotes.sql
*/

DROP TABLE IF EXISTS quotes CASCADE;

CREATE TABLE quotes (
  id SERIAL PRIMARY KEY NOT NULL,
  quote TEXT,
  author VARCHAR(255) DEFAULT 'Anonymous'
);

INSERT INTO quotes (quote, author) VALUES ('Be the change you wish to see in the world', 'Mahatma Gandhi');
INSERT INTO quotes (quote, author) VALUES ('Act as if what you do makes a difference. It does.', 'William James');
INSERT INTO quotes (quote, author) VALUES ('The first step towards getting somewhere is to decide you''re not going to stay where you are.', 'J.P. Morgan');
INSERT INTO quotes (quote, author) VALUES ('The most wasted of days is one without laughter.', 'E.E. Cummings');
INSERT INTO quotes (quote, author) VALUES ('Happiness is not by chance, but by choice.', 'Jim Rohn');
INSERT INTO quotes (quote, author) VALUES ('You don''t have to go fast. You don''t have to go far. You just have to go.', 'Jim Rohn');
INSERT INTO quotes (quote, author) VALUES ('You don''t have to go fast. You don''t have to go far. You just have to go.', 'Jim Rohn');
INSERT INTO quotes (quote, author) VALUES ('Be yourself. Everyone else is already taken.', 'Oscar Wilde');
INSERT INTO quotes (quote, author) VALUES ('No great genius has ever existed without some touch of madness.', 'Aristotle');
INSERT INTO quotes (quote, author) VALUES ('Stay away from negative people. They have a problem for every solution.', 'Albert Einstein');
INSERT INTO quotes (quote, author) VALUES ('Genius is one percent inspiration and 99% perspiration.', 'Thomas Edison');
INSERT INTO quotes (quote, author) VALUES ('One must be sane to think clearly, but one can think deeply and be quite insane.', 'Nikola Tesla');
INSERT INTO quotes (quote, author) VALUES ('Lose yourself to dance.', 'Daft Punk');
INSERT INTO quotes (quote, author) VALUES ('Once you replace negative thoughts with positive ones, you''ll start having positive results.', 'Willie Nelson');
INSERT INTO quotes (quote, author) VALUES ('If it''s flipping hamburgers at McDonald''s, be the best hamburger flipper in the world. Whatever it is you do you have to master your craft.', 'Snoop Dogg');
INSERT INTO quotes (quote, author) VALUES ('Love the life you live. Live the life you love.', 'Bob Marley');

