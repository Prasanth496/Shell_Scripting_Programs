#! /bin/bash
echo "Stopwatch started press ctrl+c to stop the stopwatch"
start_time="$(date +%s)"
while (( 1 ))
do
let current_time="$(date +%s)"
let seconds=$(( $current_time - $start_time ))
echo -ne  "\r"
printf "%02d:%02d:%02d:%02d" "$((seconds/86400))" "$((seconds/3600%24))" "$((seconds/60%60))" "$((seconds%60))"
sleep 1
done
