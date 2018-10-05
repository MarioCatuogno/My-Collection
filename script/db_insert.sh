#!/bin/bash db_insert.sh

#Load config script
source config.sh

#Test if database exists, otherwise create the database
cd $DBPATH
if [ -f $DBNAME ]; then
    echo "The database '${GRN}$DBNAME${NC}' already exists."
#Insert CSV into DB
    echo "Importing movie list CSV into: '${GRN}$DBNAME${NC}'..."
    sqlite3 $DBNAME ".mode csv" ".separator ';'" ".import ${CSVPATH}insert_list.csv my_movies_list"
    echo "Importing movie seen CSV into: '${GRN}$DBNAME${NC}'..."
    sqlite3 $DBNAME ".mode csv" ".separator ';'" ".import ${CSVPATH}insert_seen.csv my_movies_seen"
else
    echo "The database '${GRN}$DBNAME${NC}' doesn't exists."
fi
exit