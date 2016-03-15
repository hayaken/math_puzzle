#!/bin/bash
total=0
N=10000
collatz() {
	n=$(($1 * 3 + 1))
	while [ $n -ne 1 ]; do
		if [ $(($n % 2)) -eq 0 ]; then
				n=$(($n / 2))
		else
			n=$(($n * 3 + 1))
		fi

		if [ $n -eq $1 ]; then
				total=$((total + 1))
				break
		fi
	done
}

for((i=2; i <= $N; i+=2)){
	collatz $i
}

echo $total