#!/bin/bash
declare -A ar
for((j=1;j<=3;j++))
do
for((i=1;i<=3;i++))
do
 ar[${j},${i}]="."
done
echo
done
echo "displaying the vlaue"
for ((j=1;j<=3;j++)) do
    for ((i=1;i<=3;i++)) do
        echo -e $((ar[$j,$i]))'\c'
    done
    echo
done
#function to take input from user
function user(){
echo "enter your row choice"
read r
echo "enter your colume choice"
read c
if [ $((ar[$r,$c]))="x" ] || [ $((ar[$r,$c]))="o" ]
then
       user
else
 ar[${r},${c}]="o"
fi
}

#function to take input from computer
function pc_random(){
n=$(($RANDOM%3))
m=$(($RANDOM%3))
if [ $((ar[$n,$m]))="x" ] || [ $((ar[$n,$m]))="o" ]
then
pc_random
else
 ar[${n},${m}]="x"
fi
}

#to print the array
function print(){
echo "arrray inside whiel loop"
for((i=1;i<=3;i++))
do
for((j=1;j<=3;j++))
do
echo -e $((ar[$i,$j])) '\c'
done
echo
done
}

#to check the condition for win
#to check the daigoanl condition
function digonal(){
if [ $((ar[1,1]))!="." ] && [ $((ar[1,1]))==$((ar[2,2])) -a $((ar[1,1]))==$((ar[3,3])) ] || [ $((ar[1,3]))==$((ar[2,2])) -a $((ar[1,3]))==$((ar[3,1])) ]
then
echo "you won"
fi
}

#to check for row condition
function row(){
for((i=1;i<=3;i++))
do
if [ $((ar[1,1]))!="." ] && [ $((ar[$i,1]))==$((ar[$i,2])) -a  $((ar[$i,1]))==$((ar[$i,3])) ]
then
echo "you won"
break
fi
done
}

#to check for colume condition
function colume(){
for((i=1;i<=3;i++))
do
if [ $((ar[1,1]))!="." ] && [ $((ar[1,$i]))==$((ar[2,$i])) -a $((ar[1,$i]))==$((ar[3,$i])) ]
then
echo "you won"
break
fi
done
}
m=9
echo "while loop statred"
while [ $m -gt 0 ]
do
user
print user
pc_random
print pc_random
digonal ar
row ar
colume ar
m=$(($m-1))
done
#last to print the number
for((i=1;i<=3;i++))
do
for((j=1;j<=3;j++))
do
echo -e $((ar[$j,$i])) '\c'
done
 echo
done
