--------------------------------------------------------------------------------
-- CREATE LOOKUP TABLES
--------------------------------------------------------------------------------
-- CREATE TABLE `lk_company`
CREATE TABLE IF NOT EXISTS `lk_company` (
`company_id` INTEGER UNIQUE,
`company_name` VARCHAR(50) NOT NULL PRIMARY KEY
);

-- CREATE TABLE `lk_country`
CREATE TABLE IF NOT EXISTS `lk_country` (
`country_id` INTEGER UNIQUE,
`country_name` VARCHAR(50) NOT NULL PRIMARY KEY
);

-- CREATE TABLE `lk_flag`
CREATE TABLE IF NOT EXISTS `lk_flag` (
`flag_id` INTEGER UNIQUE,
`flag_name` VARCHAR(1) NOT NULL PRIMARY KEY
);

-- CREATE TABLE `lk_genres`
CREATE TABLE IF NOT EXISTS `lk_genres` (
`genres_id` INTEGER UNIQUE,
`genres_name` VARCHAR(50) NOT NULL PRIMARY KEY
);

-- CREATE TABLE `lk_language`
CREATE TABLE IF NOT EXISTS `lk_language` (
`language_id` INTEGER UNIQUE,
`language_name` VARCHAR(50) NOT NULL PRIMARY KEY
);

-- CREATE TABLE `lk_media`
CREATE TABLE IF NOT EXISTS `lk_media` (
`media_id` INTEGER UNIQUE,
`media_name` VARCHAR(50) NOT NULL PRIMARY KEY
);
--------------------------------------------------------------------------------
-- CREATE MOVIES TABLES
--------------------------------------------------------------------------------
-- CREATE TABLE `my_movies_list`
CREATE TABLE IF NOT EXISTS `my_movies_list` (
`movie_id` VARCHAR(10) NOT NULL PRIMARY KEY UNIQUE,
`movie_title` VARCHAR(255) NOT NULL,
-- CONSTRAINT ON `fk_lk_genres`
`movie_genre` VARCHAR(50) NOT NULL
 CONSTRAINT fk_lk_genres REFERENCES lk_genres(genres_name)
 ON DELETE CASCADE,
`movie_length` INTEGER,
-- CONSTRAINT ON `fk_lk_country`
`release_country` VARCHAR(50)
 CONSTRAINT fk_lk_country REFERENCES lk_country(country_name)
 ON DELETE CASCADE,
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
FOREIGN KEY(movie_genre) REFERENCES lk_genres(genres_name),
FOREIGN KEY(release_country) REFERENCES lk_country(country_name)
);

-- CREATE TABLE `my_movies_seen`
CREATE TABLE IF NOT EXISTS `my_movies_seen` (
`movie_id` VARCHAR(10) NOT NULL PRIMARY KEY,
`movie_title_seen` VARCHAR(255),
`movie_date` CHAR(10) NOT NULL,
`movie_location` VARCHAR(255),
-- CONSTRAINT ON `fk_lk_company`
`movie_company` VARCHAR(50)
 CONSTRAINT fk_lk_company REFERENCES lk_company(company_name)
 ON DELETE CASCADE,
-- CONSTRAINT ON `fk_lk_media`
`media_type` VARCHAR(50)
 CONSTRAINT fk_lk_media REFERENCES lk_media(media_name)
 ON DELETE CASCADE,
`media_detail` VARCHAR(255),
`media_technology` VARCHAR(255),
-- CONSTRAINT ON `fk_lk_language`
`movie_language` VARCHAR(50)
 CONSTRAINT fk_lk_language REFERENCES lk_language(language_name)
 ON DELETE CASCADE,
`movie_premiere` CHAR(1)
 CONSTRAINT fk_lk_flag REFERENCES lk_flag(flag_name)
 ON DELETE CASCADE,
`ticket_price` DOUBLE(2,1),
FOREIGN KEY(movie_company) REFERENCES lk_company(company_name),
FOREIGN KEY(media_type) REFERENCES lk_media(media_name),
FOREIGN KEY(movie_language) REFERENCES lk_language(language_name),
FOREIGN KEY(movie_premiere) REFERENCES lk_flag(flag_name)
);
--------------------------------------------------------------------------------
