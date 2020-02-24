#! /bin/bash
  
read -p "Enter the goal amount:" goal
stake=1
count=0
#Gambler runs until he losses all money

while [ $stake -lt $goal ]
do
random=$( shuf -i 0-1 -n 1 )
  if [ $random -eq 0 ]
  then
  echo you lost
  let "stake--"
  else
  echo you win
  let "stake++"
  fi
echo "You have $stake"
let "count++"
done
if [ $stake -eq 0 ]
then
echo "Your money is over"
else
echo "You won the game with goal"
fi
echo "You took $count chances"

