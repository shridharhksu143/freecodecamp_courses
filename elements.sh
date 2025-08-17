#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
ARG=$1
#check for input is number or not 
if [[ $ARG =~ ^[0-9]+$ ]]
then
  PROPERTIES=$($PSQL "SELECT type,atomic_mass,melting_point_celsius,boiling_point_celsius,name,symbol FROM properties INNER JOIN elements USING(atomic_number) WHERE atomic_number=$ARG;")
  echo "$PROPERTIES" | while IFS="|" read TYPE MASS MELTING BOILING NAME SYMBOL
  do
    echo -e "\nThe element with atomic number $ARG is $NAME ($SYMBOL).It's a $TYPE,with a mass of $MASS amu.$NAME has a melting point of $MELTING celsius and a boiling point $BOILING celsius."
  done
elif [[ $ARG =~ ^[A-Za-z]$ ]]
then
  echo single letter
else
  echo $ARG
fi
echo Please provide an element as an argument.