#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams, games")


cat games.csv | while IFS="," read YEAR ROUND WIN OPP WIN_GOALS OPP_GOALS
do
  if [[ $WIN != "winner" ]]
  then
    # get winner_id
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WIN'")
    # if not found
    if [[ -z $WINNER_ID ]]
    then
      # insert winning team
      INSERT_WINNER_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WIN')")
      if [[ $INSERT_WINNER_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into team, $WIN
      fi
    fi
  fi
  if [[ $OPP != "opponent" ]]
  then
    # get opp_id
    OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPP'")
    # if not found
    if [[ -z $OPP_ID ]]
    then
      # insert winning team
      INSERT_OPP_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPP')")
      if [[ $INSERT_OPP_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into team, $OPP
      fi
    fi
  fi

  if [[ $WIN != "winner" ]]
  then
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WIN'")
    OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPP'")
    INSERT_GAME=$($PSQL "INSERT INTO games(year, winner_id, opponent_id, winner_goals,opponent_goals,round) VALUES($YEAR, '$WINNER_ID', $OPP_ID, $WIN_GOALS, $OPP_GOALS,'$ROUND')")
    if [[ $INSERT_game == "INSERT 0 1" ]]
    then
      echo Inserted into game, $WIN $OPP $ROUND
    fi   
  fi




done
