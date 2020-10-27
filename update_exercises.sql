USE codeup_test_db;

# All albums in your table.
# All albums released before 1980
# All albums by Michael Jackson

SELECT * FROM albums;
UPDATE albums
SET sales=sales*10;
SELECT * FROM albums;

SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums
SET release_date = 1925
WHERE release_date < 1980;
SELECT * FROM albums WHERE release_date = 1925;

SELECT * FROM albums WHERE artist='Michael Jackson';
UPDATE albums
SET artist='Peter Jackson'
WHERE artist='Michael Jackson';
SELECT * FROM albums WHERE artist='Peter Jackson';