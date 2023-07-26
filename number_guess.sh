#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"


echo "Enter your username:"
read USERNAME
  git revert --strategy resolve commit-id
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

if [[ ! $USER_ID ]]
then
  INSERT_USERNAME=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  NO_GAMES_PLAYED=$($PSQL "SELECT COUNT(user_id) FROM games WHERE user_id=$USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(attempts) FROM games WHERE user_id=$USER_ID")
  echo "Welcome back, $USERNAME! You have played $NO_GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi


GAME_NUMBER=$((1 + $RANDOM % 1000))
ATTEMPTS=0

echo "Guess the secret number between 1 and 1000:"

while read NUMBER
do
  if [[ ! $NUMBER =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
  else
    if [[ $NUMBER -lt $GAME_NUMBER ]]; then
      ATTEMPTS=$(($ATTEMPTS + 1))
      echo "It's higher than that, guess again:"
    elif [[ $NUMBER -gt $GAME_NUMBER ]]; then
      ATTEMPTS=$(($ATTEMPTS + 1))
      echo "It's lower than that, guess again:"
    else
      ATTEMPTS=$(($ATTEMPTS + 1))
      INSERT_GAME=$($PSQL "INSERT INTO games(user_id,attempts) VALUES($USER_ID, $ATTEMPTS)")
      echo "You guessed it in $ATTEMPTS tries. The secret number was $GAME_NUMBER. Nice job!"
      break
    fi
  fi
done


 
