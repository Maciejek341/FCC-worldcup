#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE TABLE games, teams")

cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != 'year' ]]
  then
    #Get team_id
    TEAM_ID_W=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  
    #If team_id not found
    if [[ -z $TEAM_ID_W ]]
    then
      INSERT_TEAM_W=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT_TEAM_W == 'INSERT 0 1' ]]
      then
        echo Inserted into team, $WINNER
      fi
    fi
  fi

  if [[ $OPPONENT != 'opponent' ]]
  then
    #Get team_id
    TEAM_ID_O=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
  
    #If team_id not found
    if [[ -z $TEAM_ID_O ]]
    then
      INSERT_TEAM_O=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $INSERT_TEAM_O == 'INSERT 0 1' ]]
      then
        echo Inserted into team, $OPPONENT
      fi
    fi
  fi

  TEAM_ID_W=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  TEAM_ID_O=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
  if [[ -n $TEAM_ID_O || -n $TEAM_ID_W ]]
  then
    if [[ $YEAR != 'year' ]]
    then
      INSERT_GAMES_RESULT=$($PSQL "INSERT INTO games(year, round, opponent_id, winner_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $TEAM_ID_O, $TEAM_ID_W, $WINNER_GOALS, $OPPONENT_GOALS)")
    fi
  fi      
done
