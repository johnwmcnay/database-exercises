USE codeup_test_db;

# The name of all albums by Pink Floyd.
# The year Sgt. Pepper's Lonely Hearts Club Band was released
# The genre for Nevermind
# Which albums were released in the 1990s
# Which albums had less than 20 million certified sales
# All the albums with a genre of "Rock".
# Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?

SELECT 'All albums by Pink Floyd' AS 'Info';
SELECT name FROM albums WHERE artist='Pink Floyd';

SELECT 'Sgt. Pepper''s release year' AS 'Info';
SELECT release_date FROM albums WHERE name='Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'Genre of Nevermind' AS 'Info';
SELECT genre FROM albums WHERE name='Nevermind';

SELECT 'Albums released in the ''90s' AS 'Info';
SELECT name FROM albums WHERE release_date BETWEEN 1990 and 1999;

SELECT 'Albums with less than 20 million certified sales' AS 'Info';
SELECT name FROM albums WHERE sales < 20;

SELECT 'Rock albums' AS 'Info';
SELECT name FROM albums where genre='Rock';