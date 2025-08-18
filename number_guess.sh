#!/bin/bash
#create a random number generator
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

# connect to database
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

#prompt user for requesting user name and read it
echo "Enter your username:"
read USER_NAME

#create a variable to check availabality of username in users table
USER_NAME_CHECK=$($PSQL "SELECT name FROM users WHERE name = '$USER_NAME';")
