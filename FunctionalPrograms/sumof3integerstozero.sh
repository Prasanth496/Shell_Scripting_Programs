#! /bin/bash
   
read -p "Enter the size:" size
# filling the array

for (( i=0;i<$size;i++ ))
do
read -p "Enter the value:" array[$i]
done
echo ${array[@]}

# starting the function

triplet()
{
count=0
flag=0
for(( i=0;i<$(($size-2));i++ ))
do
for(( j=$(($i+1));j<$(($size-1));j++ ))
do
for(( k=$(($j+1));k<$size;k++ ))
do
sum=$(( ${array[$i]}+${array[$j]}+ ${array[$k]} ))
if (( $sum == 0 ))
then
echo "${array[$i]} ${array[$j]} ${array[$k]} equals to 0"
echo
let "count++"
let "flag=1"
fi
done
done
done
if (( $flag == 0 ))
then
echo "Triplets doesn't exist"
fi
echo Number of triplets found are $count
}
triplet
