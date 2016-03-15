#!/bin/bas
cards=(`seq 1 100`)
N=100

# Set false
for((i=0; i<${#cards[@]}; i++)){
	cards[$i]=false
}

# reverse cards
for((i=2; i<=$N; i++)){
	j=$(($i - 1))
	while [ $j -lt ${#cards[@]} ]; do
		if [ ${cards[$j]} = false ]
			then
			cards[$j]=true
		else
			cards[$j]=false
		fi
		j=$(($j + $i))
	done
}

for((i=0; i<$N; i++)){
	if [ ${cards[$i]} = false ]
		then
			echo $(($i + 1))
	fi
}