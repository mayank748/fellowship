echo "enter the number of times you want to toss"
read n
echo "vlaue of n="$n
n=$(( $n - 1 ))
h=0
t=0
while [ $n -ge 0 ]
do
ran=$(( $RANDOM%10 ))
echo "random value generated="$ran
if  [ $ran -le 5 ]
then
echo "head"
h=$(( $h + 1 ))
else
echo "tail"
t=$(( $t + 1 ))
fi
(( n-- ))
done
ta=$(( $t / $n ))
ta=$(( $ta * 10 ))
echo "percntage of head="$(( 100 + $ta ))
echo "percentage of tails="$(( 100 - $(( 100 + $ta )) ))
