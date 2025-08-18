#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
ARG=$1
#check for input is number or not 
if [[ $ARG =~ ^[0-9]+$ ]]
then
  PROPERTIES=$($PSQL "SELECT type,atomic_mass,melting_point_celsius,boiling_point_celsius,name,symbol FROM properties INNER JOIN elements USING(atomic_number) INNER JOIN types USING(type_id) WHERE atomic_number=$ARG;")
  if [[ -z $PROPERTIES ]];
  then
    echo "I could not find that element in the database."
    exit
  fi
  echo "$PROPERTIES" | while IFS="|" read TYPE MASS MELTING BOILING NAME SYMBOL
  do
    echo "The element with atomic number $ARG is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
  done
elif [[ $ARG =~ ^[A-Z][a-z]?$ ]]
then
  PROPERTIES_1=$($PSQL "SELECT atomic_number,type,atomic_mass,melting_point_celsius,boiling_point_celsius,name,symbol FROM properties INNER JOIN elements USING(atomic_number) INNER JOIN types USING(type_id) WHERE symbol='$ARG';")
  if [[ -z $PROPERTIES_1 ]]
  then
    echo "I could not find that element in the database."
    exit
  fi
  echo "$PROPERTIES_1" | while IFS="|" read ATOMIC_NUMBER TYPE MASS MELTING BOILING NAME SYMBOL
  do
    echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
  done
elif [[ $ARG =~ ^[A-Za-z]+$ ]]
then
  PROPERTIES_2=$($PSQL "SELECT atomic_number,type,atomic_mass,melting_point_celsius,boiling_point_celsius,name,symbol FROM properties INNER JOIN elements USING(atomic_number) INNER JOIN types USING(type_id) WHERE name ILIKE '$ARG';")
  if [[ -z $PROPERTIES_2 ]]
  then
    echo "I could not find that element in the database."
    exit
  fi
  echo "$PROPERTIES_2" | while IFS="|" read ATOMIC_NUMBER TYPE MASS MELTING BOILING NAME SYMBOL
  do
    echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
  done
else
  echo Please provide an element as an argument.
fi
