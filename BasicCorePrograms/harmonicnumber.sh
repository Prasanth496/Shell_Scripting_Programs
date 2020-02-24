#! /bin/bash
 
read -p "Enter the nth number:" number
if [ $number -gt 0 ]
then
harmonic=0;i=1
while [ $i -le $number ]
do
harmonic=$(awk -v n1=$harmonic -v n2=$i "BEGIN { print(n1+1/n2)}" )
let "i++"
done
echo The nth harmonic number is: $harmonic
else
echo "Invalid number"
exit
fi
