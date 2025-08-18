#!/bin/bash
#create a random number generator
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

# connect to database
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

#prompt user for requesting user name and read it
echo "Enter your username:"

#create a variable to check availabality of username in users table
USER_NAME_CHECK=$($PSQL "SELECT name FROM users WHERE name = '$USER_NAME';")

#verify valid username
while ! [[ $USER_NAME =~ ^[A-Za-z]+$ ]]
do
  read USER_NAME
  if [[ $USER_NAME =~ ^[A-Za-z]+$ ]]
  then
    exit
  else
    echo "Please Enter a valid username"
    continue
  fi
  
done
# if invalid username exit
#if valid name proceed
# create a if loop to check user availabality 
#if available show welcome message
#if not availabe show available show welcome message
# insert into users table
