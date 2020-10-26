USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'NONE',
    name VARCHAR(50) NOT NULL,
    release_data YEAR,
    sales FLOAT,
    genre VARCHAR(20),
    PRIMARY KEY (id)
);
