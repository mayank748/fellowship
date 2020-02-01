p=$1
q=$2
s=$(($p*$p))
echo "the value of s "$s
m=$(($q*$q))
echo "the value of m "$m
d=$(($s+$m))
echo "the value of d "$d
z=$(echo "$d" | awk '{print sqrt($1)}')
echo "the distance from the origin of the point ="$z
