--------------------------------------------------------------------------------
-- PRAGMA COMMANDS
--------------------------------------------------------------------------------
-- ACTIVATE FOREIGN KEYS
PRAGMA foreign_keys = 1;
-- SET ENCODING
PRAGMA encoding = "UTF-8";
--------------------------------------------------------------------------------
-- TRIGGERS
--------------------------------------------------------------------------------
-- CREATE TRIGGER `fk_my_movies_genres`
CREATE TRIGGER fk_my_movies_genres
BEFORE INSERT ON my_movies_list
FOR EACH ROW BEGIN
SELECT RAISE(ROLLBACK, 'Insert on table "my_movies_list" violates FK')
WHERE  NEW.movie_genre IS NOT NULL AND
 (SELECT genres_name FROM my_movies_genres
  WHERE genres_name = NEW.movie_genre) IS NULL;
END;

-- CREATE TRIGGER `fk_my_movies_media`
CREATE TRIGGER fk_my_movies_media
BEFORE INSERT ON my_movies_seen
FOR EACH ROW BEGIN
SELECT RAISE(ROLLBACK, 'Insert on table "my_movies_seen" violates FK')
WHERE  NEW.media_type IS NOT NULL AND
 (SELECT media_name FROM my_movies_media
  WHERE media_name = NEW.media_type) IS NULL;
END;
