echo "enter the number of copans"
read n
for ((i=1;i<=n;i++))
do
ar[$i]=$(($RANDOM%10))
done
for ((i = 1; i <=$n; i++))
do
for ((j = 1; j <=$i; j++))
do
if [ arr[$i] == arr[$j] ]
then
break
fi
done
done
