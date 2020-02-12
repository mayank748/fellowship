#! /bin/bash
# To declare static Array
arr=(" " " " " " " " " " " " " " " " " ")
count=0
pc=0
function print()
{
clear
# To print all elements of array

echo "---Tic TOk---"
echo "-------------"
echo "| "${arr[0]}" | "${arr[1]}" | "${arr[2]}" |"
echo "-------------"
echo "| "${arr[3]}" | "${arr[4]}" | "${arr[5]}" |"
echo "-------------"
echo "| "${arr[6]}" | "${arr[7]}" | "${arr[8]}" |"
echo "-------------"
}

#taking user input
function user()
{
echo "enter your choice number between 1 to 9"
read p
u=$(($p-1))
if [ "${arr[$u]}" = " " ]
then
count=$((count+1))
arr[$u]="x"
else
user
fi
}

#taking pc_input
function pc_input(){
r=$(($RANDOM%10))
if [ "${arr[$r]}" = " " ]
then
pc=$(($pc+1))
arr[$r]="o"
else
pc_input
fi
}
# to check win condition
# to check digonal condition
function digonal()
{
if [ "${arr[0]}" = "x" -o "${arr[0]}" = "o" ] && [ "${arr[0]}" = "${arr[4]}" ] && [ "${arr[0]}" = "${arr[8]}" ]
then
return 1
fi

if [ "${arr[6]}" = "x" -o "${arr[6]}" = "o" ] && [ "${arr[2]}" = "${arr[4]}" ] && [ "${arr[2]}" = "${arr[6]}" ]
then
return 1
fi
}

# to check row condition
function row(){
if [ "${arr[0]}" = "x" -o "${arr[0]}" = "o" ] && [ "${arr[0]}" = "${arr[1]}" ] && [ "${arr[0]}" = "${arr[2]}" ]
then
return 1
fi

if [ "${arr[3]}" = "x" -o "${arr[3]}" = "o" ] && [ "${arr[3]}" = "${arr[4]}" ] && [ "${arr[3]}" = "${arr[5]}" ]
then
return 1
fi

if [ "${arr[6]}" = "x" -o "${arr[6]}" = "o" ] && [ "${arr[6]}" = "${arr[7]}" ] && [ "${arr[6]}" = "${arr[8]}" ]
then
return 1
fi
}

# to check colume condition
function colume(){
if [ "${arr[0]}" = "x" -o "${arr[0]}" = "o" ] && [ "${arr[0]}" = "${arr[3]}" ] && [ "${arr[0]}" = "${arr[6]}" ]
then
return 1
fi

if [ "${arr[1]}" = "x" -o "${arr[1]}" = "o" ] && [ "${arr[1]}" = "${arr[4]}" ] && [ "${arr[1]}" = "${arr[7]}" ]
then
return 1
fi

if [ "${arr[2]}" = "x" -o "${arr[2]}" = "o" ] && [ "${arr[2]}" = "${arr[5]}" ] && [ "${arr[2]}" = "${arr[8]}" ]
then
return 1
fi
}

#to check who win
function who_win()
{

if [ "$ret" = "1" ] && [ "$count" != "0" ]
then
echo "user wines"
exit
fi

if [ "$pet" = "1" ] && [ "$pc" != "0" ]
then
echo "pc wines"
exit
fi

if [ "$ret" = "0" -o "$pet" = "0" ] && [ "$count" = "5" -o "$pc" = "5" ]
then
echo "match draw or no own wines"
exit
fi
}

# main meathod
m=9
while [ $m -ge 0 ]
do
m=$(($m-1))
print
user
digonal
ret=$?
who_win ret
row
ret=$?
who_win ret
colume
ret=$?
who_win ret
print
pc_input
print
digonal
pet=$?
who_win pet
row
pet=$?
colume
pet=$?
who_win pet
print
done
