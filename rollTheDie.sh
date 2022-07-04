#!/bin/bash -x

dice=0
while (( result[$dice] < 10 ))
do
	dice=$((RANDOM%6+1))
        result[$dice]=$(( ${result[$dice]} + 1 ))
done

echo "Dice number: " ${!result[@]}
echo "Dice number times: " ${result[@]}
echo "Max repeated dice num: " $dice

min=1
for(( count=1 ; count<=6 ; count++ ))
do
   if (( ${result[$min]} > ${result[$count]} ))
   then
        min=$count
   fi
done

echo "Min repeated dice number: " $min

