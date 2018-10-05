#!/bin/bash db_create.sh

#Load config script
source config.sh

#Test if database exists, otherwise create the database
cd $DBPATH
if [ -f $DBNAME ]; then
    echo "The database '${GRN}$DBNAME${NC}' already exists."
    ls -ltr $DBNAME
else
    echo "Creating database into: '$DBPATH'..."
    sqlite3 $DBNAME .databases .exit
    chmod 777 $DBNAME
#Create tables
    echo "Creating schema into '${GRN}$DBNAME${NC}'..."
    sqlite3 $DBNAME ".read ${QRYPATH}db_schema.sql"
#Create triggers
    echo "Creating triggers into '${GRN}$DBNAME${NC}'..."
    sqlite3 $DBNAME ".read ${QRYPATH}db_trigger.sql"
#Populate LK tables
    echo "Populating lookup tables into '${GRN}$DBNAME${NC}'..."
    sqlite3 $DBNAME ".read ${QRYPATH}db_lookup.sql"
fi
exit
