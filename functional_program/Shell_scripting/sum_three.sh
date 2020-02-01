echo "enter the size of array"
read n
echo "enter the value in an array"
for (( i=1 ; i<=n ; i++ ))
do
read ar[$i]
done
for (( i=1 ; i<=n ; i++ ))
do
for (( j=2 ; j<=n ; j++ ))
do
for (( k=3 ; k<=n ; k++ ))
do 
if [ $(( ar[$i]+ar[$j]+ar[$k] ))==0 ]
then
echo $((ar[$i]))"..."$((ar[$j]))"..."$((ar[$k]))
fi
done
done
done
