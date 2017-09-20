#!/bin/bash

#Creating variables
DBPATH=/Users/mariocatuogno/Dropbox/Github/My-Collection/db/
DBNAME=my_collection.db

#Test if database exists, otherwise create the database
cd $DBPATH
if [ -f $DBNAME ]; then
 echo "The database '$DBNAME' exists."
 ls -ltr $DBNAME
else
 echo "Creating database into: '$DBPATH'."
 sqlite3> $DBNAME .databases .exit
 chmod ug+rwx $DBNAME
fi
