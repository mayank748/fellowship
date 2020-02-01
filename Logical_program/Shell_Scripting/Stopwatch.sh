echo "press 1 to start a watch"
read p
while [ $p -eq 1 ]
do
now=$(date +"%T")
echo "Current time : $now"
echo "press 2 to stop a watch"
read m
if [ $m -eq 2 ]
then
end=$(date +"%T")
echo "end time : $end"
elapsed_time=$(echo '$now' '$end' | awk '{print($2-$1)}')
break
fi
done
echo "elapsed time "$elapsed_time


