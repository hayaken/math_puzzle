#!/bin/bash
N=2
sum=0
max=0
min=0

function setStarttime() {
        start_time=`date +%s`
}

function getEndtime() {
        end_time=`date +%s`

        SS=`expr ${end_time} - ${start_time}`

        HH=`expr ${SS} / 3600`
        SS=`expr ${SS} % 3600`
        MM=`expr ${SS} / 60`
        SS=`expr ${SS} % 60`

        # echo "${HH}:${MM}:${SS}"
}

	for((i=1; i<=$N; i++)){
		# start_time=`date +%s`
		# echo $start_time
		# start_time=$((\(date +%s%N\)/ 1000000 ))
		setStarttime
		/bin/sh ../questions/q6.sh
		# end_time=`date +%s`
		# echo $end_time
		# end_time=$(\(date +%s%N\) / 1000000 ))
		getEndtime
		time=$(($end_time - $start_time))
		# echo $time
		sum=$(($sum + $time))
		if [ $i -eq 1 ]; then
			max=${time}
			min=${time}
		else
			if [ $time -gt $max ]; then
				max=${time}
			fi
			if [ $time -lt $min ]; then
				min=${time}
			fi
		fi
	}
echo "--------------"
echo "avg: "$(( $sum / $N ))
echo "--------------"
echo "max: "$max
echo "--------------"
echo "min: "$min
