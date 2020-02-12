#! /bin/bash

read -p "Enter the year:" year
if [ $year -le 0 ]
then
echo "Enter valid year"
else
if (( (($year % 400 == 0)) || (( (($year % 100 != 0)) && (($year % 4 == 0)) ))))
then
echo $year is leap year
else
echo $year is not an leap year
fi
fi
