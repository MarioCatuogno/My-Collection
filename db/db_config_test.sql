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
SELECT RAISE(ROLLBACK, 'Violated FK on movie_genre')
WHERE  NEW.movie_genre IS NOT NULL AND
 (SELECT genres_name FROM my_movies_genres
  WHERE genres_name = NEW.movie_genre) IS NULL;
END;

-- CREATE TRIGGER `fk_my_movies_media`
CREATE TRIGGER fk_my_movies_media
BEFORE INSERT ON my_movies_seen
FOR EACH ROW BEGIN
SELECT RAISE(ROLLBACK, 'Violated FK on media_type')
WHERE  NEW.media_type IS NOT NULL AND
 (SELECT media_name FROM my_movies_media
  WHERE media_name = NEW.media_type) IS NULL;
END;

-- CREATE TRIGGER `fk_my_movies_language`
CREATE TRIGGER fk_my_movies_language
BEFORE INSERT ON my_movies_seen
FOR EACH ROW BEGIN
SELECT RAISE(ROLLBACK, 'Violated FK on movie_language')
WHERE  NEW.movie_language IS NOT NULL AND
 (SELECT language_name FROM my_movies_media
  WHERE language_name = NEW.movie_language) IS NULL;
END;
--------------------------------------------------------------------------------
