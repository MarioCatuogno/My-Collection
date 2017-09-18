--------------------------------------------------------------------------------
-- DOMAIN TABLES
--------------------------------------------------------------------------------
-- CREATE TABLE `my_movies_genres`
CREATE TABLE IF NOT EXISTS `my_movies_genres` (
`genres_id` INTEGER UNIQUE,
`genres_name` VARCHAR(50) NOT NULL PRIMARY KEY UNIQUE
);

-- CREATE TABLE `my_movies_media`
CREATE TABLE IF NOT EXISTS `my_movies_media` (
`media_id` INTEGER UNIQUE,
`media_name` VARCHAR(50) NOT NULL PRIMARY KEY UNIQUE
);

-- CREATE TABLE `my_movies_language`
CREATE TABLE IF NOT EXISTS `my_movies_language` (
`language_id` INTEGER UNIQUE,
`language_name` VARCHAR(50) NOT NULL PRIMARY KEY UNIQUE
);

-- CREATE TABLE `my_movies_country`
CREATE TABLE IF NOT EXISTS `my_movies_country` (
`country_id` INTEGER UNIQUE,
`country_name` VARCHAR(50) NOT NULL PRIMARY KEY UNIQUE
);
--------------------------------------------------------------------------------
-- MOVIES TABLES
--------------------------------------------------------------------------------
-- CREATE TABLE `my_movies_list`
CREATE TABLE IF NOT EXISTS `my_movies_list` (
`movie_id` VARCHAR(10) NOT NULL PRIMARY KEY UNIQUE,
`movie_title` VARCHAR(255) NOT NULL,
`movie_genre` VARCHAR(50) NOT NULL,
`movie_length` INTEGER,
`release_country` VARCHAR(50),
`release_year` INTEGER,
`movie_budget` INTEGER,
`movie_boxoffice` INTEGER,
`score_acting` DOUBLE(2,1) NOT NULL,
`score_direction` DOUBLE(2,1) NOT NULL,
`score_editing` DOUBLE(2,1) NOT NULL,
`score_plot` DOUBLE(2,1) NOT NULL,
`score_music` DOUBLE(2,1) NOT NULL,
`score_vfx` DOUBLE(2,1) NOT NULL,
`score_emotion` DOUBLE(2,1) NOT NULL,
`movie_director` VARCHAR(255),
`movie_composer` VARCHAR(255),
`movie_star1` VARCHAR(255),
`movie_star2` VARCHAR(255),
`movie_star3` VARCHAR(255),
FOREIGN KEY(movie_genre) REFERENCES my_movies_genres(genres_name),
FOREIGN KEY(release_country) REFERENCES my_movies_country(country_name)
);

-- CREATE TABLE `my_movies_seen`
CREATE TABLE IF NOT EXISTS `my_movies_seen` (
`movie_id` VARCHAR(10) NOT NULL PRIMARY KEY,
`movie_date` CHAR(10) NOT NULL,
`movie_location` VARCHAR(255),
`media_type` VARCHAR(50),
`media_detail` VARCHAR(255),
`media_technology` VARCHAR(255),
`movie_language` VARCHAR(50),
`movie_premiere` CHAR(1),
`ticket_price` DOUBLE(2,1),
FOREIGN KEY(media_type) REFERENCES my_movies_media(media_name),
FOREIGN KEY(movie_language) REFERENCES my_movies_language(language_name)
);
--------------------------------------------------------------------------------
-- PRAGMA COMMANDS
--------------------------------------------------------------------------------
-- ACTIVATE FOREIGN KEYS
PRAGMA foreign_keys = ON;
-- SET ENCODING
PRAGMA encoding = "UTF-8";