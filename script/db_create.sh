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

