echo "enter the stake"
read stake
t=$stake
echo "enter the goal"
read goal
echo "enter the number of times"
read n
win=0
lost=0
while [ $n -ge 0 ]
do
r=$(($RANDOM%10))
if [ $r -ge 5 ]
thens
stake=$(( $stack+1 ))
win=$(($win+1))
if [ $stake -eq $goal ]
then
echo "you reached your goal"
break
else
lost=$(($lost+1))
stake=$(($stake-1))
fi
n=$(($n-1))
done
echo "number of times win "$win
echo "number of times lost "$lost
echo "final stack "$stake

