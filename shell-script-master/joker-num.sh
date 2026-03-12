#!/bin/bash

LEFT=5

if [[ $# -ne 1 ]] || ! [[ "$1" =~ ^[0-9]+$ ]] || [[ "$1" -lt 1 ]] || [[ "$1" -gt 100 ]]; then
	echo "Error: wrong argument"
	exit 1
fi

for i in {1..5}
do
	while true; do
		echo "Enter your guess ($LEFT tries left):"
		read num
		
		if [[ -z "$num" ]] || ! [[ "$num" =~ ^[0-9]+$ ]] || [[ "$num" -lt 1 ]] || [[ "$num" -gt 100 ]]; then
			continue
		fi
		break
	done
	if [[ $num -gt $1 ]]; then
		echo "Go down"
		LEFT=$((LEFT-1))
	elif [[ $num -lt $1 ]]; then
		echo "Go Up"
		LEFT=$((LEFT-1))
	else
		echo "Congratulations, you found the number in $((6 - LEFT)) moves!"
		exit 0
	fi
done

echo "You lost, the number was $1"
