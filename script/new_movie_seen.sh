#!/bin/bash new_movie_seen.sh

#Load config script
source config.sh

#2) New movie seen
cd $DBPATH
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
#Create insert_seen.csv
        echo "$movie_id2;$movie_title_seen;$movie_date;$movie_location;$movie_company;$media_type;$media_detail;$media_technology;$movie_language;$movie_premiere;$ticket_price" >> ${CSVPATH}insert_seen.csv 
        echo "Save record into '${YLW}insert_seen.csv${NC}'."
        chmod 777 ${CSVPATH}insert_seen.csv
    else
#If database doesn't exist alert the user
        echo -e "The database '${YLW}$DBNAME${NC}' doesn't exists."
    fi
break