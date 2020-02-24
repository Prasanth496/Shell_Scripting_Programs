#! /bin/bash
  
read -p "Enter the name:" name
if [ ${#name} -ge 3 ]
then
echo "Hello $name, How are you?"
else
echo enter the proper name
fi
