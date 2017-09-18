--------------------------------------------------------------------------------
-- INSERT DATA INTO DOMAIN TABLES
--------------------------------------------------------------------------------
-- INSERT INTO TABLE `my_movies_genres`
INSERT INTO my_movies_genres VALUES (01,UPPER('ACTION'));
INSERT INTO my_movies_genres VALUES (02,UPPER('ADVENTURE'));
INSERT INTO my_movies_genres VALUES (03,UPPER('ANIMATION'));
INSERT INTO my_movies_genres VALUES (04,UPPER('BIOGRAPHY'));
INSERT INTO my_movies_genres VALUES (05,UPPER('COMEDY'));
INSERT INTO my_movies_genres VALUES (06,UPPER('CRIME'));
INSERT INTO my_movies_genres VALUES (07,UPPER('DOCUMENTARY'));
INSERT INTO my_movies_genres VALUES (08,UPPER('DRAMA'));
INSERT INTO my_movies_genres VALUES (09,UPPER('FANTASY'));
INSERT INTO my_movies_genres VALUES (10,UPPER('HISTORY'));
INSERT INTO my_movies_genres VALUES (11,UPPER('HORROR'));
INSERT INTO my_movies_genres VALUES (12,UPPER('MISTERY'));
INSERT INTO my_movies_genres VALUES (13,UPPER('MUSICAL'));
INSERT INTO my_movies_genres VALUES (14,UPPER('ROMANCE'));
INSERT INTO my_movies_genres VALUES (15,UPPER('SCI-FI'));
INSERT INTO my_movies_genres VALUES (16,UPPER('SPORT'));
INSERT INTO my_movies_genres VALUES (17,UPPER('THRILLER'));
INSERT INTO my_movies_genres VALUES (18,UPPER('WAR'));
INSERT INTO my_movies_genres VALUES (19,UPPER('WESTERN'));

-- INSERT INTO TABLE `my_movies_media`
INSERT INTO my_movies_media VALUES (01,UPPER('BD'));
INSERT INTO my_movies_media VALUES (02,UPPER('CINEMA'));
INSERT INTO my_movies_media VALUES (03,UPPER('FILE'));
INSERT INTO my_movies_media VALUES (04,UPPER('STREAMING'));
INSERT INTO my_movies_media VALUES (05,UPPER('TV'));

-- INSERT INTO TABLE `my_movies_language`
INSERT INTO my_movies_language VALUES (01,UPPER('ENGLISH'));
INSERT INTO my_movies_language VALUES (02,UPPER('FRENCH'));
INSERT INTO my_movies_language VALUES (03,UPPER('ITALIAN'));

-- INSERT INTO TABLE `my_movies_country`
INSERT INTO my_movies_country VALUES (01,UPPER('FRANCE'));
INSERT INTO my_movies_country VALUES (02,UPPER('GERMANY'));
INSERT INTO my_movies_country VALUES (03,UPPER('ITALY'));
INSERT INTO my_movies_country VALUES (04,UPPER('SPAIN'));
INSERT INTO my_movies_country VALUES (05,UPPER('UK'));
INSERT INTO my_movies_country VALUES (06,UPPER('USA'));
--------------------------------------------------------------------------------
-- INSERT DATA INTO COLLECTION TABLES
--------------------------------------------------------------------------------
-- INSERT INTO TABLE `my_movies_list`
INSERT INTO my_movies_list (
movie_id
,movie_title
,movie_genre
,movie_length
,release_country
,release_year
,movie_budget
,movie_boxoffice
,score_acting
,score_direction
,score_editing
,score_plot
,score_music
,score_vfx
,score_emotion
,movie_director
,movie_composer
,movie_star1
,movie_star2
,movie_star3
) VALUES (
--movie_id
UPPER('test3')
--movie_title
,UPPER('Lollo La La LU')
--movie_genre
,UPPER('action')
--movie_length
,120
--release_country
,UPPER('FRANCE')
--release_year
,2016
--movie_budget
,300
--movie_boxoffice
,750
--score_acting
,6.5
--score_direction
,7.0
--score_editing
,8.0
--score_plot
,10.0
--score_music
,9.5
--score_vfx
,1.5
--score_emotion
,2.0
--movie_director
,UPPER('Steven Spielberg')
--movie_composer
,UPPER('Hans Zimmer')
--movie_star1
,UPPER('Brad Pitt')
--movie_star2
,UPPER('Angelina Jolie')
--movie_star3
,UPPER('Ash Ketchum')
);