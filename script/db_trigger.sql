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
-- CREATE TRIGGER `fk_lk_company`
CREATE TRIGGER fk_lk_company
BEFORE INSERT ON my_movies_seen
FOR EACH ROW BEGIN
SELECT RAISE(ROLLBACK, 'Violated FK on movie_company')
WHERE  NEW.movie_company IS NOT NULL AND
 (SELECT company_name FROM lk_company
  WHERE company_name = NEW.movie_company) IS NULL;
END;

-- CREATE TRIGGER `fk_lk_country`
CREATE TRIGGER fk_lk_country
BEFORE INSERT ON my_movies_list
FOR EACH ROW BEGIN
SELECT RAISE(ROLLBACK, 'Violated FK on release_country')
WHERE  NEW.release_country IS NOT NULL AND
 (SELECT country_name FROM lk_country
  WHERE country_name = NEW.release_country) IS NULL;
END;

-- CREATE TRIGGER `fk_lk_flag`
CREATE TRIGGER fk_lk_flag
BEFORE INSERT ON my_movies_seen
FOR EACH ROW BEGIN
SELECT RAISE(ROLLBACK, 'Violated FK on movie_premiere')
WHERE  NEW.movie_premiere IS NOT NULL AND
 (SELECT flag_name FROM lk_flag
  WHERE flag_name = NEW.movie_premiere) IS NULL;
END;

-- CREATE TRIGGER `fk_lk_genres`
CREATE TRIGGER fk_lk_genres
BEFORE INSERT ON my_movies_list
FOR EACH ROW BEGIN
SELECT RAISE(ROLLBACK, 'Violated FK on movie_genre')
WHERE  NEW.movie_genre IS NOT NULL AND
 (SELECT genres_name FROM lk_genres
  WHERE genres_name = NEW.movie_genre) IS NULL;
END;

-- CREATE TRIGGER `fk_lk_language`
CREATE TRIGGER fk_lk_language
BEFORE INSERT ON my_movies_seen
FOR EACH ROW BEGIN
SELECT RAISE(ROLLBACK, 'Violated FK on movie_language')
WHERE  NEW.movie_language IS NOT NULL AND
 (SELECT language_name FROM lk_language
  WHERE language_name = NEW.movie_language) IS NULL;
END;

-- CREATE TRIGGER `fk_lk_media`
CREATE TRIGGER fk_lk_media
BEFORE INSERT ON my_movies_seen
FOR EACH ROW BEGIN
SELECT RAISE(ROLLBACK, 'Violated FK on media_type')
WHERE  NEW.media_type IS NOT NULL AND
 (SELECT media_name FROM lk_media
  WHERE media_name = NEW.media_type) IS NULL;
END;
--------------------------------------------------------------------------------
