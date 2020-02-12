#! /bin/bash

read -p "Enter the power:" power
if [ $power -gt 0 ]
then
product=2
for (( i=1;i<=$power; i++ ))
do
echo $product
let "product*=2"
done
else
echo "Enter valid power"
fi

