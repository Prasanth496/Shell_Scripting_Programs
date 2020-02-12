#! /bin/bash

read -p "Enter the number of flips:" flip
if [ $flip -gt 0 ]
then
head=0;tail=0
while [ $flip -gt 0 ]
do
# incrementing heads and tails
random=$( shuf -i 1-10 -n 1 )
if [ $random -gt 5 ]
then
let "head++"
else
let "tail++"
fi
let "flip--"
done
if [ $head -gt $tail ]
then
echo "head counts are $head and wins"
elif [ $head -eq $tail ]
then
echo "tie $head"
else
echo "tail counts are $tail and lost"
fi
else
echo "The coin is not flipped"
fi
