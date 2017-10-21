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

#Test if database exists, otherwise create the database
cd $SCRPATH
if [ -f $DBNAME ]; then
 echo "The database '$DBNAME' exists."
  ls -ltr $DBNAME
else
 echo "Creating database into: '$SCRPATH'..."
  sqlite3 $DBNAME .databases .exit
  chmod 777 $DBNAME
 echo "Creating schema into '$DBNAME'..."
  sqlite3 $DBNAME ".read db_schema.sql"
 echo "Creating triggers into '$DBNAME'..."
  sqlite3 $DBNAME ".read db_trigger.sql"
 echo "Populating lookup tables into '$DBNAME'..."
  sqlite3 $DBNAME ".read db_lookup.sql"
fi

