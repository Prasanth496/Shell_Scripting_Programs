#! /bin/bash

read -p "Enter the distance of x:" x
read -p "Enter the distance of y:" y
num=$( awk -v a=$x -v b=$y 'BEGIN { print (((a*a)+(b*b))**0.5) }' )
echo "The distance from origin(0,0) is $num"
