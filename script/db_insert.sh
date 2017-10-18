#!/bin/bash

#Creating variables
GITPATH=$HOME/Dropbox/Github/My-Collection/
DBPATH=$HOME/Dropbox/Github/My-Collection/db/
DBNAME=my_collection.db
SCRPATH=$HOME/Dropbox/Github/My-Collection/script/
CSVPATH=$HOME/Dropbox/Github/My-Collection/csv/

#Test if database exists, otherwise create the database
cd $SCRPATH
if [ -f $DBNAME ]; then
 echo "The database '$DBNAME' exists."
  ls -ltr $DBNAME
 read -p "MOVIE_ID: " movie_id
 read -p "MOVIE_TITLE: " movie_title
 read -p "MOVIE_GENRE: " movie_genre
 read -p "MOVIE_LENGTH: " movie_length
 read -p "RELEASE_COUNTRY: " release_country
 read -p "RELEASE_YEAR: " release_year
 read -p "MOVIE_BUDGET: " movie_budget
 read -p "MOVIE_BOXOFFICE: " movie_boxoffice
 read -p "SCORE_ACTING: " score_acting
 read -p "SCORE_DIRECTION: " score_direction
 read -p "SCORE_EDITING: " score_editing
 read -p "SCORE_PLOT: " score_plot
 read -p "SCORE_MUSIC: " score_music
 read -p "SCORE_VFX: " score_vfx
 read -p "SCORE_EMOTION: " score_emotion
 read -p "MOVIE_DIRECTOR: " movie_director
 read -p "MOVIE_COMPOSER: " movie_composer
 read -p "MOVIE_STAR1: " movie_star1
 read -p "MOVIE_STAR2: " movie_star2
 read -p "MOVIE_STAR3: " movie_star3
 echo "$movie_id;$movie_title;$movie_genre;$movie_length;$release_country;$release_year;$movie_budget;$movie_boxoffice;$score_acting;$score_direction;$score_editing;$score_plot;$score_music;$score_vfx;$score_emotion;$movie_director;$movie_composer;$movie_star1;$movie_star2;$movie_star3" >> ${CSVPATH}insert_movie_${movie_id}.csv 
 echo "Created 'insert_movie_${movie_id}.csv'."
else
 echo "The database '$DBNAME' doesn't exists."
fi

