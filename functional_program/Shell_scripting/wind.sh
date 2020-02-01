t=$1
v=$2
echo "the value of temperature is "$t
echo "the value of wind speed is "$v
if [ $t -le 50 ]
then 
if [ $v -le 120 -a $v -ge 3 ]
then 
w=$(echo "$t" | awk '{print 35.74+(0.6215*$1)}')
p=$(echo "$t" | awk '{print 0.4275*$1-35.75}')
pw=$(echo "$v" | awk '{print $1^0.16}')
s=$(echo "$w" "$p" "$pw" | awk '{print $1+($p*$pw)}')
echo "wind chill "$s
fi
else
echo "enter the correct vlaue"
fi
