#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE TABLE games, teams;")
cat games.csv |while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != 'winner' ]]
  then
    INSERT_WINNER_CHECK=$($PSQL "SELECT name FROM teams WHERE name='$WINNER';" | xargs)
    if [[ -z "$INSERT_WINNER_CHECK" ]]
    then
    INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES ('$WINNER');" | xargs)
    echo "$INSERT_WINNER"
    fi
    INSERT_OPPONENT_CHECK=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT';" | xargs)
    if [[ -z "$INSERT_OPPONENT_CHECK" ]]
    then
    INSERT_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');" | xargs)
    echo "$INSERT_OPPONENT"
    fi
    if [[ $YEAR != 'year' ]]
    then
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';" | xargs)
      echo "$WINNER_ID"
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';" | xargs)
      echo "$OPPONENT_ID"
      GAMES_INSERT=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($YEAR,'$ROUND',$WINNER_ID,$OPPONENT_ID,$WINNER_GOALS,$OPPONENT_GOALS);" | xargs)
      echo "$GAMES_INSERT"
    fi
  fi
done