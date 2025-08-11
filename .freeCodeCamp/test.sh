#!/bin/bash
echo -e "\n~~ Countdown Timer ~~\n"
#Program that counts down to zero from a given argument
I=$1
if [[ $1 -gt 0 ]]
then
 : '
  for (( i = $1; i >= 0; i-- ))
  do
    echo $i
    sleep 1
  done
'
else
  echo Include a positive integer as the first argument.
fi
echo $I