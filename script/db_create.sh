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
GRN="`tput setaf 2`"
YLW="`tput setaf 3`"
NC="`tput sgr0`"

#Test if database exists, otherwise create the database
cd $DBPATH
if [ -f $DBNAME ]; then
 echo "The database '${GRN}$DBNAME${NC}' already exists."
  ls -ltr $DBNAME
else
 echo "Creating database into: '$DBPATH'..."
  sqlite3 $DBNAME .databases .exit
  chmod 777 $DBNAME
 echo "Creating schema into '${GRN}$DBNAME${NC}'..."
  sqlite3 $DBNAME ".read ${QRYPATH}db_schema.sql"
 echo "Creating triggers into '${GRN}$DBNAME${NC}'..."
  sqlite3 $DBNAME ".read ${QRYPATH}db_trigger.sql"
 echo "Populating lookup tables into '${GRN}$DBNAME${NC}'..."
  sqlite3 $DBNAME ".read ${QRYPATH}db_lookup.sql"
fi

