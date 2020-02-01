#!/bin/bash 
declare -A ar
echo "enter the number of rows"
read num_rows
echo "enter the number of coloms"
read num_columns

for ((i=1;i<=num_rows;i++)) do
    for ((j=1;j<=num_columns;j++)) do
       read ar[$i,$j]
    done
    echo
done
for ((j=1;j<=num_rows;j++)) do
    for ((i=1;i<=num_columns;i++)) do
        echo -e $((ar[$j,$i])) '\c'
    done
    echo
done
