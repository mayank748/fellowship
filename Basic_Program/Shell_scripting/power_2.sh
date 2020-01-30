n=$1
echo "vlue of n="$n
f=1
p=$n
if [ $n -lt 32 ]
then
n=$(( $n -1 ))
while [ $n -ge 0 ]
do
f=$(( $f * 2 ))
(( n-- ))
done
fi
echo "the vlue of 2 to the power "$p" = "$f
