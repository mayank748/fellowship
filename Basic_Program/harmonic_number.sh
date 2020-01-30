#!/bin/bash
echo "enter the value of n"
read n
ans=0
while [ $n -gt 0 ]
do
ans=$(echo "$n" "$ans" | awk '{print $2+(1/$1)}')
n=`expr $n - 1`
done
echo $ans
