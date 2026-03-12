#!/bin/bash

do_add() {
	echo "$1 + $2" | bc
}

do_sub() {
    echo "$1 - $2" | bc
}
 
do_mult() {
    echo "$1 * $2" | bc
}
 
do_divide() {
    echo "$1 / $2" | bc
}

if [[ $# -ne 3 ]]; then
	>&2 echo "Error: expect 3 arguments"
	exit 1
fi

is_number() {
	case $1 in
		''|*[!0-9.-]*) return 1 ;;
		*) return 0 ;;
	esac
}

if ! is_number "$1" || ! is_number "$3"; then
	>&2 echo "Error: invalid number"
	exit 4
fi

case $2 in
	"+")
		do_add "$1" "$3"
		;;
	"-")
		do_sub "$1" "$3"
		;;
	"*")
		do_mult "$1" "$3"
		;;
	"/")
		if [[ "$3" == "0" ]]; then
			>&2 echo "Error: division by 0"
			exit 2
		fi
		do_divide "$1" "$3"
		;;
	*)
		>&2 echo "Error: invalid operator"
		exit 3
		;;
esac
