#99乘法表逆序打印
#!/bin/bash
#
#for循环
declare -i j=9
while [ $j -ge 1 ];do

	for i in $( seq 1 $j ); do
		#echo -n 不换行输出，-e处理特殊字符。
		echo -n -e "${i}X${j}=$[${i}*${j}]\t"

	done
	let j=$j-1
	echo
done