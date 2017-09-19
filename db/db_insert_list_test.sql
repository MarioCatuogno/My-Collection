--------------------------------------------------------------------------------
-- INSERT DATA INTO LIST TABLES
--------------------------------------------------------------------------------
-- TEMPLATE: INSERT INTO TABLE `my_movies_list`
INSERT INTO my_movies_list VALUES (
 --movie_id,movie_title,movie_genre
 UPPER(''),UPPER(''),UPPER(''),
 --movie_length,release_country,release_year,movie_budget,movie_boxoffice
 ,UPPER(''),,,,
 --score_acting,direction,editing,plot,music,vfx,emotion
 ,,,,,,,
 --movie_director,movie_composer,
 UPPER(''),UPPER('')
 --movie_star1,movie_star2,movie_star3
 UPPER(''),UPPER(''),UPPER('')
);
--------------------------------------------------------------------------------
-- INSERT INTO TABLE `my_movies_list`
INSERT INTO my_movies_list VALUES (
 --movie_id,movie_title,movie_genre
 UPPER('test4'),UPPER('Sansone'),UPPER('action'),
 --movie_length,release_country,release_year,movie_budget,movie_boxoffice
 120,UPPER('gb'),2016,300,750,
 --score_acting,direction,editing,plot,music,vfx,emotion
 6.5,6.5,8.0,10.0,9.5,1.5,2.0,
 --movie_director,movie_composer,
 UPPER('Steven Spielberg'),UPPER('Hans Zimmer')
 --movie_star1,movie_star2,movie_star3
 UPPER('Brad Pitt'),UPPER('Angelina Jolie'),UPPER('Ash Ketchum')
);
--------------------------------------------------------------------------------
