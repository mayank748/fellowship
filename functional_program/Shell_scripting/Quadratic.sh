echo "enter the value of a "
read a
echo "enter the value of b "
read b
echo "enter the value of c "
read c
delta=$(( $(( $b*$b )) - $(( 4 * $(($a*$c)) )) ))
p=$(echo "$delta" "$a" "$b" | awk '{print (-$3+sqrt($1))/(2*$2)}')
q=$(echo "$delta" "$a" "$b" | awk '{print ($3+sqrt($1))/(2*$2)}')
echo "first root of quardatic equation is "$p
echo "second root of quardatic equation is "$q
