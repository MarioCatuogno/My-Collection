--------------------------------------------------------------------------------
-- INSERT DATA
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
,UPPER('Action')
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
