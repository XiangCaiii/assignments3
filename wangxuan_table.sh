#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo "invalid input"
	exit 1
fi

if ! [[ "$1"=~^[1-9][0-9]*$ ]];then
	echo "invalid input"
	exit 1
fi

if ! [[ "$2"=~^[1-9][0-9]*$ ]];then
	echo "invalid input"
	exit 1
fi

for i in $(seq 1 $1)
do
	for j in $(seq 1 $2)
	do
		printf "%d*%d=%-3d" $i $j $((i*j))
	done
	printf "\n"
done
