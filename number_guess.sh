#!/bin/bash
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
DATA=$($PSQL "SELECT * FROM users;")
echo $DATA