SQLite Query

-- CREATE TABLE `my_movie_list`
CREATE TABLE `my_movies_list` (
	`movie_id`	INTEGER AUTOINCREMENT UNIQUE,
	`imdb_id`	VARCHAR(10) NOT NULL PRIMARY KEY UNIQUE,
	`movie_title`	VARCHAR(255) NOT NULL,
	`movie_genre`	VARCHAR(50) NOT NULL,
	`movie_length`	INTEGER,
	`release_country`	VARCHAR(50),
  `release_year` INTEGER,
  `movie_budget` INTEGER,
  `movie_boxoffice` INTEGER,
  `score_acting` DOUBLE(2,1) NOT NULL,
  `score_direction` DOUBLE(2,1) NOT NULL,
  `score_editing` DOUBLE(2,1) NOT NULL,
  `score_plot` DOUBLE(2,1) NOT NULL,
  `score_music` DOUBLE(2,1) NOT NULL,
  `score_vfx` DOUBLE(2,1) NOT NULL,
  `movie_director` VARCHAR(255),
  `movie_composer` VARCHAR(255),
  `movie_star1` VARCHAR(255),
  `movie_star2` VARCHAR(255),
  `movie_star3` VARCHAR(255),
);

-- CREATE TABLE `my_movie_seen`
CREATE TABLE `my_movies_seen` (
	`imdb_id`	VARCHAR(10) NOT NULL PRIMARY KEY,
  `movie_date` CHAR(10) NOT NULL,
	`movie_location`	VARCHAR(255),
  `media_type` VARCHAR(50),
  `media_detail` VARCHAR(255),
  `media_technology` VARCHAR(255),
  `movie_language` VARCHAR(50),
  `movie_premiere` CHAR(1),
  `ticket_price` DOUBLE(2,1),
);
