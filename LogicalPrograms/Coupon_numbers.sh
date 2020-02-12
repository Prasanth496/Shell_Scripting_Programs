#! /bin/bash

small=({a..z})
big=({A..Z})
read -p "How many distinct coupons to generate:" n
while [ $n -gt 0 ]
do
a=$(shuf -i 0-25 -n 1)
b=$(shuf -i 0-25 -n 1)
random1=$( shuf -i 0-25 -n 1 )
random2=$( shuf -i 0-25 -n 1 )
random3=$( shuf -i 100-1000 -n 1 )
random4=$( shuf -i 1000-2000 -n 1 )
# coupon number generated with 6 random numbers
echo -ne "\r the generated coupon number is:"
echo $b$random4${small[$random1]}$random4${big[$random2]}$random3${small[$a]}
let n--
done

