#! /bin/bash
  
read -p "Enter the number of rows:" x
read -p "Enter the number of columns:" y

#function to read the  2D array

readArray()
{
declare -a array
for(( i=0;i<m;i++ ))
do
 for(( j=0;j<n;j++ ))
do
 read -p "Enter the value:" value
 a[${i},${j}]=$value
 done
done
echo "array is  complete"
}

#function to display the 2D array

displayArray()
{
for(( i=0;i<m;i++ ))
do
 for(( j=0;j<n;j++ ))
 do
 echo -e "${a[${i},${j}]}\c"
 done
 echo
done
echo "Array is displayed"
}
readArray
displayArray



