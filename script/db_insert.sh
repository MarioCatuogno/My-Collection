#!/bin/bash

#Creating path variables
DBNAME=my_collection.db
GITPATH=$HOME/Dropbox/Github/My-Collection/
DBPATH=$HOME/Dropbox/Github/My-Collection/db/
SCRPATH=$HOME/Dropbox/Github/My-Collection/script/
CSVPATH=$HOME/Dropbox/Github/My-Collection/csv/
QRYPATH=$HOME/Dropbox/Github/My-Collection/query/

#Creating colour variables
RED="`tput setaf 1`"
YLW="`tput setaf 3`"
NC="`tput sgr0`"

#Choose option
cd $SCRPATH
PS3="Please enter your choice: "
options=("${RED}New movie${NC}" "${YLW}New view${NC}" "Quit")
select opt in "${options[@]}"
do 
  case $opt in
#If database exist insert new movie details
   "${RED}New movie${NC}")
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
        echo "$movie_id;$movie_title;$movie_genre;$movie_length;$release_country;$release_year;$movie_budget;$movie_boxoffice;$score_acting;$score_direction;$score_editing;$score_plot;$score_music;$score_vfx;$score_emotion;$movie_director;$movie_composer;$movie_star1;$movie_star2;$movie_star3" >> ${CSVPATH}insert_movie_${movie_id}.csv 
        echo "Created 'insert_movie_${movie_id}.csv'."
    else
#If database doesn't exist alert the user
        echo -e "The database '${RED}$DBNAME${NC}' doesn't exists."
    fi
   ;;
#If database exist insert new view details
   "${YLW}New view${NC}")
    if [ -f $DBNAME ]; then
        echo -e "The database '${YLW}$DBNAME${NC}' exists."
        ls -ltr $DBNAME
        read -p "${YLW}MOVIE_ID${NC}: " movie_id2
        read -p "${YLW}MOVIE_TITLE_SEEN${NC}: " movie_title_seen
        read -p "${YLW}MOVIE_DATE${NC}: " movie_date
        read -p "${YLW}MOVIE_LOCATION${NC}: " movie_location
        read -p "${YLW}MOVIE_COMPANY${NC}: " movie_company
        read -p "${YLW}MEDIA_TYPE${NC}: " media_type
        read -p "${YLW}MEDIA_DETAIL${NC}: " media_detail
        read -p "${YLW}MEDIA_TECHNOLOGY${NC}: " media_technology
        read -p "${YLW}MOVIE_LANGUAGE${NC}: " movie_language
        read -p "${YLW}MOVIE_PREMIERE${NC}: " movie_premiere
        read -p "${YLW}TICKET_PRICE${NC}: " ticket_price
   
        echo "$movie_id2;$movie_title_seen;$movie_date;$movie_location;$movie_company;$media_type;$media_detail;$media_technology;$movie_language;$movie_premiere;$ticket_price" >> ${CSVPATH}insert_seen_${movie_id2}.csv 
        echo "Created 'insert_seen_${movie_id2}.csv'."
    else
#If database doesn't exist alert the user
        echo -e "The database '${YLW}$DBNAME${NC}' doesn't exists."
    fi
   ;;
#Quit option
   "Quit")
        break
   ;;
#Invalid option
   *) 
        echo "Invalid option"
   ;;
  esac
done          

