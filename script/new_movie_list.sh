#!/bin/bash new_movie_collection.sh

#Load config script
source config.sh

#1) New movie collection
cd $DBPATH
    if [ -f $DBNAME ]; then
        echo -e "The database '${RED}$DBNAME${NC}' exists."
        ls -ltr $DBNAME
        read -p "${RED}MOVIE_ID${NC}: " movie_id
        read -p "${RED}MOVIE_TITLE${NC}: " movie_title
        read -p "${RED}MOVIE_GENRE${NC}: " movie_genre
        read -p "${RED}MOVIE_LENGTH${NC}: " movie_length
        read -p "${RED}RELEASE_COUNTRY${NC}: " release_country
        read -p "${RED}RELEASE_YEAR${NC}: " release_year
        read -p "${RED}MOVIE_BUDGET${NC}: " movie_budget
        read -p "${RED}MOVIE_BOXOFFICE${NC}: " movie_boxoffice
        read -p "${RED}SCORE_ACTING${NC}: " score_acting
        read -p "${RED}SCORE_DIRECTION${NC}: " score_direction
        read -p "${RED}SCORE_EDITING${NC}: " score_editing
        read -p "${RED}SCORE_PLOT${NC}: " score_plot
        read -p "${RED}SCORE_MUSIC${NC}: " score_music
        read -p "${RED}SCORE_VFX${NC}: " score_vfx
        read -p "${RED}SCORE_EMOTION${NC}: " score_emotion
        read -p "${RED}MOVIE_DIRECTOR${NC}: " movie_director
        read -p "${RED}MOVIE_COMPOSER${NC}: " movie_composer
        read -p "${RED}MOVIE_STAR1${NC}: " movie_star1
        read -p "${RED}MOVIE_STAR2${NC}: " movie_star2
        read -p "${RED}MOVIE_STAR3${NC}: " movie_star3
#Create insert_movie.csv
        echo "$movie_id;$movie_title;$movie_genre;$movie_length;$release_country;$release_year;$movie_budget;$movie_boxoffice;$score_acting;$score_direction;$score_editing;$score_plot;$score_music;$score_vfx;$score_emotion;$movie_director;$movie_composer;$movie_star1;$movie_star2;$movie_star3" >> ${CSVPATH}insert_list.csv 
        echo "Save record into '${RED}insert_list.csv${NC}'."
        chmod 777 ${CSVPATH}insert_list.csv
    else
#If database doesn't exist alert the user
        echo -e "The database '${RED}$DBNAME${NC}' doesn't exists."
    fi
break