#!/bin/bash
#求100以内奇数Odd之和。

declare -i sum=0

for i in $(seq 1 2 100); do
	#echo "\$sum is $sum,\$i is $i"
	sum=$[$sum+$i]
done
echo "With For loop,result is $sum"


##While循环##
declare -i sum=0
declare -i i=1
while [ $i -le 100 ]; do
	#echo "\$sum is $sum,\$i is $i"
	sum=$[ $sum+$i ]
	let i=$i+2
done
echo "With While循环 loop,result is $sum"

##until循环##
declare -i sum=0
declare -i i=1
until [ $i -gt 100 ]; do
	let sum+=$i
	let i=$i+2
done
echo "With Until循环 loop,result is $sum"