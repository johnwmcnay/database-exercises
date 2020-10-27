USE codeup_test_db;

# Albums released after 1991
# Albums with the genre 'disco'
# Albums by 'Whitney Houston' (...or maybe an artist of your choice)

SELECT 'Albums released after 1991' AS 'Delete';
DELETE FROM albums WHERE release_date > 1991;

SELECT 'Disco albums' AS 'Delete';
DELETE FROM albums WHERE genre='Disco';

SELECT 'Whitney Houston albums' AS 'Delete';
DELETE FROM albums WHERE artist='Whitney Houston';