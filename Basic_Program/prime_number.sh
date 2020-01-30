echo "enter the number"
read n
for (( i=2 ; i <= $n ; i++ ))
do
h=0
if [ $(($n % $i )) -eq 0 ]
then 
while [ $(($n % $i )) -eq 0 ]
do
n=$(( $n / $i ))
echo "the prime factor "$i
done
fi
done

