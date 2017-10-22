#!/bin/bash menu.sh

#Load config script
source config.sh

#Creating menu variables
NUMCHOICE=1

#Creating bash menu
while [ $NUMCHOICE != 0 ]; do
    echo -n "
====================================    
1. ${RED}New movie list${NC}
2. ${YLW}New movie seen${NC}
3. ${GRN}Create DB${NC}
4. ${GRN}Insert CSV into DB${NC}
0. Exit
====================================
Enter choice [ ${RED}1${NC} | ${YLW}2${NC} | ${GRN}3${NC} | ${GRN}4${NC}]: "
    read NUMCHOICE
case $NUMCHOICE in
    "1" ) sh ${SCRPATH}new_movie_list.sh ;;
    "2" ) sh ${SCRPATH}new_movie_seen.sh ;;
    "3" ) sh ${SCRPATH}db_create.sh ;;
    "4" ) sh ${SCRPATH}db_insert.sh ;;
    "0" ) break ;;
    * )   echo -n "You entered an incorrect option. Please try again." ;;
    esac
done