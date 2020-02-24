#! /bin/bash
    
read -p "Enter the temperature:" t
read -p "Enter the velocity:" v
if (( $t>50 ))
then
let "t=50"
fi
if (( $v>120 ))
then
let "v=120"
elif (( $v<3 ))
then
let "v=3"
fi
w=$(awk -v a=$t -v b=$v "BEGIN{ print((35.74+0.6215*a+((0.4275*a-35.75)*b**0.16)))}" )
echo the windchill value for given wind temperature $t F and velocity $v mph is : $w F 
