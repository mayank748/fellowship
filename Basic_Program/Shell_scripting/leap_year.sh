echo "enter the year"
read year
if [ $(( $year % 400 )) == 0 ] || [ $(( $year % 4 )) == 0 -a $(( $year % 100 )) != 0 ]
  then
 echo $year" is leap year"
else
 echo $year" is not a leap year"
fi
