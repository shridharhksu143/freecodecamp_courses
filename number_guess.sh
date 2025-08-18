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

  # if invalid username continue
  echo "Please Enter a valid username"
  continue
  
done

# create a if loop to check user availabality 
if  [[ $USER_NAME == $USER_NAME_CHECK ]]
then
  #if not availabe show available show welcome message
  echo "Welcome, $USER_NAME! It looks this is your first time here."

  # insert into users table
  INSER_USER=$($PSQL "INSERT INTO users(name) VALUES ('$USER_NAME');")

else
  #get user details from table
  #user_id
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$USER_NAME';")
  #total number of games played
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $USER_ID;")
  # best attempt
  BEST_ATTEMPT=$($PSQL "SELECT MIN(attempts) FROM games WHERE user_id = $USER_ID ;")
  #show welcome message
  echo "Welcome back, you have played $GAMES_PLAYED games, and your best game took $BEST_ATTEMPT guesses."
fi


